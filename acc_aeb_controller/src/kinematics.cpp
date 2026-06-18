//==============================================================================
//  kinematics.cpp  —  MIO association, ABG tracking, and TTC math.
//==============================================================================
#include "acc_aeb_controller/kinematics.h"

#include <algorithm>
#include <cmath>

namespace acc_aeb {

bool isLaneValid(const npust_bus_msgs::LanePolynomial& msg, const Params& p) {
    if (!msg.is_valid) return false;
    if (std::abs(msg.a) > p.max_lane_curve_a) return false;
    if (std::abs(msg.b) > p.max_lane_heading_b) return false;
    return true;
}

MioResult selectMIO(const PerceptionSnapshot& snap, double ego_v, const Params& p) {
    MioResult best;
    double    max_threat = -1.0;

    // Score one object; updates best/max_threat if it is the highest threat so far.
    auto score = [&](double ox, double oy, double ovx, int32_t oid, bool vx_rel) {
        if (ox <= p.min_valid_x_m || ox > p.max_range_m) return;
        if (!std::isfinite(ox) || !std::isfinite(oy) || !std::isfinite(ovx)) return;

        const double v_rel = vx_rel ? ovx : (ovx - ego_v);
        if (std::abs(v_rel) > p.v_rel_plausible_max) return;

        bool in_lane = false;
        if (snap.lane_l.valid && snap.lane_r.valid) {
            const double x2  = ox * ox;
            const double y_l = snap.lane_l.a * x2 + snap.lane_l.b * ox + snap.lane_l.c;
            const double y_r = snap.lane_r.a * x2 + snap.lane_r.b * ox + snap.lane_r.c;
            if (std::abs(y_l - y_r) <= p.max_lane_width_m)
                in_lane = (oy <= std::max(y_l, y_r) && oy >= std::min(y_l, y_r));
            else
                in_lane = (std::abs(oy) <= snap.dynamic_half_w);
        } else {
            in_lane = (std::abs(oy) <= snap.dynamic_half_w);
        }
        if (!in_lane) return;

        const double raw_ttc = computeTTC(ox, -v_rel);
        const double threat  = (p.mio_weight_dist / std::max(consts::MIO_SCORE_EPS, ox)) +
                               (p.mio_weight_ttc  / std::max(consts::MIO_SCORE_EPS, raw_ttc));

        if (threat > max_threat) {
            max_threat        = threat;
            best.x            = ox;
            best.id           = oid;
            best.valid        = true;
            best.threat_score = threat;
            best.v_rel        = v_rel;
            best.v_abs        = vx_rel ? (ego_v + ovx) : ovx;
        }
    };

    // Camera objects (primary: better lateral accuracy).
    if (!snap.cam_timeout && snap.objects) {
        for (const auto& obj : snap.objects->objects)
            score(obj.x, obj.y, obj.vx, obj.id, p.vx_is_relative);
    }

    // Radar objects: skip any that coincide with a camera object to avoid
    // double-counting the same physical obstacle (Euclidean dedup in XY).
    if (!snap.radar_timeout && snap.radar_objects) {
        const double dedup2 = p.radar_fusion_dedup_m * p.radar_fusion_dedup_m;
        for (const auto& robj : snap.radar_objects->objects) {
            bool covered = false;
            if (!snap.cam_timeout && snap.objects) {
                for (const auto& cobj : snap.objects->objects) {
                    if (cobj.x <= p.min_valid_x_m || cobj.x > p.max_range_m) continue;
                    if (!std::isfinite(cobj.x) || !std::isfinite(cobj.y)) continue;
                    const double dx = robj.x - cobj.x;
                    const double dy = robj.y - cobj.y;
                    if (dx * dx + dy * dy < dedup2) { covered = true; break; }
                }
            }
            if (!covered)
                score(robj.x, robj.y, robj.vx, robj.id, p.radar_vx_is_relative);
        }
    }

    return best;
}

MioResult MioTracker::propagateGrace(double dt, double ego_v) {
    MioResult grace = last_valid_mio_;
    if (grace.valid) {
        const double a_closing = clampVal(-grace.a_rel,
                                          -consts::GRACE_A_CLOSING_CLAMP,
                                           consts::GRACE_A_CLOSING_CLAMP);
        const double delta_x = (-grace.v_rel) * dt + 0.5 * a_closing * dt * dt;
        grace.x      = clampVal(grace.x - delta_x, p_.min_stale_x_m, p_.max_range_m);
        grace.v_rel += grace.a_rel * dt;
        grace.v_abs  = ego_v + grace.v_rel;
        last_valid_mio_.x     = grace.x;
        last_valid_mio_.v_rel = grace.v_rel;
        last_valid_mio_.v_abs = grace.v_abs;
    }
    grace.stale = true;
    return grace;
}

MioResult MioTracker::track(const MioResult& raw, double ego_v, double dt) {
    // -------- no fresh detection: coast on the history, then give up ----------
    if (!raw.valid) {
        stale_timer_  += dt;
        confirm_count_ = 0;
        candidate_id_  = -1;
        if (stale_timer_ >= p_.target_loss_timeout_s) {
            prev_mio_id_    = -1;
            last_valid_mio_ = {};
            return {};
        }
        return propagateGrace(dt, ego_v);
    }

    stale_timer_ = 0.0;
    const double ttc_raw = computeTTC(raw.x, -raw.v_rel);
    const bool bypass_confirm = (raw.x < p_.aeb_immediate_dist_m) ||
                                (-raw.v_rel > p_.min_closing_speed_mps && ttc_raw < p_.ttc_aeb_s);

    // -------- same target as last frame (or imminent threat): run the ABG -----
    if (raw.id == prev_mio_id_ || bypass_confirm) {
        prev_mio_id_   = raw.id;
        confirm_count_ = p_.confirm_frames;
        candidate_id_  = raw.id;

        if (last_valid_mio_.valid && !bypass_confirm) {
            // Alpha-Beta-Gamma update. dt is validated > 0 and clamped, so we
            // take ONE reciprocal and convert the three per-term divisions into
            // multiplies (no safeDiv branches in the hot path).
            const double dt2     = dt * dt;
            const double inv_dt  = 1.0 / dt;
            const double inv_dt2 = inv_dt * inv_dt;

            const double x_pred = last_valid_mio_.x
                                + last_valid_mio_.v_rel * dt
                                + 0.5 * last_valid_mio_.a_rel * dt2;
            const double v_pred = last_valid_mio_.v_rel + last_valid_mio_.a_rel * dt;
            const double a_pred = last_valid_mio_.a_rel;

            const double x_err = raw.x     - x_pred;
            const double v_err = raw.v_rel - v_pred;

            last_valid_mio_.x     = x_pred + p_.filter_alpha_pos * x_err;
            last_valid_mio_.v_rel = v_pred
                                  + p_.filter_beta_pos * (x_err * inv_dt)
                                  + p_.filter_alpha_vel * v_err;

            const double a_raw = a_pred
                               + p_.filter_gamma_pos * (2.0 * x_err * inv_dt2)
                               + p_.filter_beta_vel  * (v_err * inv_dt);
            last_valid_mio_.a_rel = clampVal(a_raw,
                                             -consts::ABG_A_REL_CLAMP_MPS2,
                                              consts::ABG_A_REL_CLAMP_MPS2);

            last_valid_mio_.v_abs        = ego_v + last_valid_mio_.v_rel;
            last_valid_mio_.id           = raw.id;
            last_valid_mio_.threat_score = raw.threat_score;
        } else {
            last_valid_mio_       = raw;
            last_valid_mio_.a_rel = 0.0;
        }
        return last_valid_mio_;
    }

    // -------- a different candidate: require N consistent frames --------------
    if (raw.id != candidate_id_) {
        candidate_id_  = raw.id;
        confirm_count_ = 0;
    }
    ++confirm_count_;
    if (confirm_count_ >= p_.confirm_frames) {
        prev_mio_id_          = raw.id;
        last_valid_mio_       = raw;
        last_valid_mio_.a_rel = 0.0;
        return raw;
    }

    return propagateGrace(dt, ego_v);
}

void MioTracker::reset() noexcept {
    last_valid_mio_ = {};
    stale_timer_    = 0.0;
    prev_mio_id_    = -1;
    candidate_id_   = -1;
    confirm_count_  = 0;
}

KinResult computeKinematics(double ego_v, const MioResult& mio, const Params& p) {
    KinResult k;
    k.closing_spd = -mio.v_rel;

    double ttc_measured = INF_D;
    const double a_rel = mio.a_rel;
    const double v_rel = mio.v_rel;

    // Constant-acceleration TTC: solve 0 = x + v_rel*t + 0.5*a_rel*t^2.
    if (std::abs(a_rel) > consts::KIN_MIN_A_REL_MPS2) {
        const double discriminant = v_rel * v_rel - 2.0 * a_rel * mio.x;
        if (discriminant >= 0.0) {
            const double sqrt_disc = std::sqrt(discriminant);
            const double inv_a     = 1.0 / a_rel;     // |a_rel| > 0.1 -> reciprocal is safe
            const double root1 = (-v_rel + sqrt_disc) * inv_a;
            const double root2 = (-v_rel - sqrt_disc) * inv_a;

            const bool r1_ok = std::isfinite(root1) && root1 > 0.0;
            const bool r2_ok = std::isfinite(root2) && root2 > 0.0;
            if      (r1_ok && r2_ok) ttc_measured = std::min(root1, root2);
            else if (r1_ok)          ttc_measured = root1;
            else if (r2_ok)          ttc_measured = root2;
        }
    }

    if (ttc_measured == INF_D && k.closing_spd > p.min_closing_speed_mps) {
        ttc_measured = computeTTC(mio.x, k.closing_spd);
    }

    // Backstop: a (near-)stationary object dead-ahead while we are moving.
    double ttc_backstop = INF_D;
    if (std::abs(mio.v_abs) < p.stationary_v_abs_max && ego_v > p.ego_v_moving_thres) {
        const double backstop_range = std::max(p.aeb_backstop_base_m,
                                                ego_v * consts::BACKSTOP_RANGE_TIME_S);
        if (mio.x < backstop_range) {
            ttc_backstop = computeTTC(mio.x, ego_v);
        }
    }

    k.ttc         = std::min(ttc_measured, ttc_backstop);
    k.target_dist = ego_v * (p.time_gap_s + p.latency_s) + p.safe_base_m;  // factored: 1 mul + 1 add
    return k;
}

} // namespace acc_aeb
