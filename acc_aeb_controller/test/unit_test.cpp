//==============================================================================
//  unit_test.cpp  —  Pure-logic unit tests for kinematics + state_machine.
//
//  No ROS master or hardware required.  The tested layers (kinematics.cpp,
//  state_machine.cpp) have no roscpp calls; they are fully exercised here
//  through direct struct construction.
//==============================================================================
#include <gtest/gtest.h>
#include <boost/make_shared.hpp>
#include <chrono>
#include <cmath>

#include "acc_aeb_controller/kinematics.h"
#include "acc_aeb_controller/state_machine.h"

// ── helpers ──────────────────────────────────────────────────────────────────

namespace {

// Construct a Params pre-loaded from the defaults namespace so tests don't
// need to manually set every field.
acc_aeb::Params makeDefaultParams()
{
    using namespace acc_aeb::defaults;
    acc_aeb::Params p{};
    p.dt_s                    = DT_S;
    p.target_speed_mps        = TARGET_KPH * acc_aeb::KPH_2_MPS;
    p.time_gap_s              = TIME_GAP_S;
    p.safe_base_m             = SAFE_BASE_M;
    p.latency_s               = SYSTEM_LATENCY_S;
    p.aeb_backstop_base_m     = AEB_BACKSTOP_BASE_M;
    p.ttc_aeb_s               = TTC_AEB_S;
    p.ttc_warn_s              = TTC_WARN_S;
    p.ttc_warn_exit_s         = TTC_WARN_EXIT_S;
    p.aeb_dist_m              = AEB_DISTANCE_M;
    p.aeb_immediate_dist_m    = AEB_IMMEDIATE_DIST_M;
    p.a_acc_max               = A_ACC_MAX;
    p.a_soft_brake            = A_SOFT_BRAKE;
    p.a_warn_brake            = A_WARN_BRAKE;
    p.a_fault_brake           = A_FAULT_BRAKE;
    p.a_aeb_max               = A_AEB_MAX;
    p.jerk_normal             = JERK_NORMAL;
    p.jerk_low_speed          = JERK_LOW_SPEED;
    p.low_speed_threshold_mps = LOW_SPEED_KPH * acc_aeb::KPH_2_MPS;
    p.jerk_warn               = JERK_WARN;
    p.throttle_enter          = THROTTLE_ENTER_MPS2;
    p.throttle_dead           = THROTTLE_DEAD_MPS2;
    p.brake_enter             = BRAKE_ENTER_MPS2;
    p.brake_dead              = BRAKE_DEAD_MPS2;
    p.torque_rate_limit       = TORQUE_RATE_LIMIT_NM_S;
    p.brake_rate_limit        = BRAKE_RATE_LIMIT_G_S;
    p.min_coast_s_normal      = MIN_COAST_S_NORMAL;
    p.min_coast_s_warn        = MIN_COAST_S_WARN;
    p.sensor_timeout_s        = SENSOR_TIMEOUT_S;
    p.vcu_timeout_s           = VCU_TIMEOUT_S;
    p.fault_recovery_s        = FAULT_RECOVERY_S;
    p.aeb_hold_s              = AEB_HOLD_S;
    p.stop_speed_mps          = STOP_SPEED_MPS;
    p.resume_dist_m           = RESUME_DIST_M;
    p.loss_hold_decel         = LOSS_HOLD_DECEL;
    p.confirm_frames          = CONFIRM_FRAMES;
    p.aeb_confirm_frames      = AEB_CONFIRM_FRAMES;
    p.spinner_threads         = SPINNER_THREADS;
    p.filter_alpha_pos        = FILTER_ALPHA_POS;
    p.filter_alpha_vel        = FILTER_ALPHA_VEL;
    p.filter_beta_pos         = FILTER_BETA_POS;
    p.filter_gamma_pos        = FILTER_GAMMA_POS;
    p.filter_beta_vel         = FILTER_BETA_VEL;
    p.mio_weight_dist         = MIO_WEIGHT_DIST;
    p.mio_weight_ttc          = MIO_WEIGHT_TTC;
    p.mass_kg                 = VEHICLE_MASS_KG;
    p.wheel_r_m               = WHEEL_RADIUS_M;
    p.gear_ratio              = GEAR_RATIO;
    p.drv_eff                 = DRIVETRAIN_EFF;
    p.torque_max              = MOTOR_TORQUE_MAX;
    p.brake_g_max             = BRAKE_G_MAX;
    p.kp_follow_dist          = KP_FOLLOW_DIST;
    p.kd_follow_vrel          = KD_FOLLOW_VREL;
    p.ki_follow               = KI_FOLLOW;
    p.kf_follow_arel          = KF_FOLLOW_AREL;
    p.follow_iclamp           = FOLLOW_ICLAMP;
    p.kp_cruise               = KP_CRUISE;
    p.ki_cruise               = KI_CRUISE;
    p.cruise_iclamp           = CRUISE_ICLAMP;
    p.max_range_m             = MAX_RANGE_M;
    p.static_half_w_m         = STATIC_HALF_W_M;
    p.max_lane_width_m        = MAX_LANE_WIDTH_M;
    p.max_lane_curve_a        = MAX_LANE_CURVE_A;
    p.max_lane_heading_b      = MAX_LANE_HEADING_B;
    p.target_loss_timeout_s   = TARGET_LOSS_TIMEOUT_S;
    p.min_valid_x_m           = MIN_VALID_X_M;
    p.stationary_v_abs_max    = STATIONARY_V_ABS_MAX;
    p.min_closing_speed_mps   = MIN_CLOSING_SPEED_MPS;
    p.lane_narrow_rate        = LANE_NARROW_RATE;
    p.min_static_half_w_m     = MIN_STATIC_HALF_W_M;
    p.follow_enter_ratio      = FOLLOW_ENTER_RATIO;
    p.follow_exit_ratio       = FOLLOW_EXIT_RATIO;
    p.min_stale_x_m           = MIN_STALE_X_M;
    p.v_rel_plausible_max     = V_REL_PLAUSIBLE_MAX;
    p.ego_v_moving_thres      = EGO_V_MOVING_THRES;
    p.watchdog_timeout_s      = WATCHDOG_TIMEOUT_S;
    p.radar_timeout_s         = RADAR_TIMEOUT_S;
    p.radar_fusion_dedup_m    = RADAR_FUSION_DEDUP_M;
    p.vx_is_relative          = VX_IS_RELATIVE;
    p.radar_vx_is_relative    = RADAR_VX_IS_RELATIVE;
    return p;
}

// Build a one-object TrackedObjectArray ConstPtr.
npust_bus_msgs::TrackedObjectArray::ConstPtr makeObjects(
    double x, double y, double vx, int32_t id = 1)
{
    auto arr = boost::make_shared<npust_bus_msgs::TrackedObjectArray>();
    npust_bus_msgs::TrackedObject obj;
    obj.x = x;  obj.y = y;  obj.vx = vx;  obj.id = id;
    arr->objects.push_back(obj);
    return arr;
}

} // anonymous namespace

// ─────────────────────────────────────────────────────────────────────────────
//  selectMIO tests
// ─────────────────────────────────────────────────────────────────────────────

TEST(SelectMio, BothTimeoutReturnsInvalid)
{
    auto p = makeDefaultParams();
    acc_aeb::PerceptionSnapshot snap;
    snap.dynamic_half_w = p.static_half_w_m;
    snap.cam_timeout    = true;
    snap.radar_timeout  = true;
    EXPECT_FALSE(acc_aeb::selectMIO(snap, 20.0, p).valid);
}

TEST(SelectMio, CameraObjectInLane)
{
    auto p = makeDefaultParams();
    p.vx_is_relative = true;

    acc_aeb::PerceptionSnapshot snap;
    snap.dynamic_half_w = p.static_half_w_m;
    snap.objects = makeObjects(30.0, 0.0, -5.0, 42);

    auto r = acc_aeb::selectMIO(snap, 20.0, p);
    ASSERT_TRUE(r.valid);
    EXPECT_NEAR(r.x,     30.0,   1e-9);
    EXPECT_NEAR(r.v_rel, -5.0,   1e-9);
    EXPECT_NEAR(r.v_abs, 15.0,   1e-9);  // ego_v + v_rel = 20 - 5
    EXPECT_EQ  (r.id,    42);
}

TEST(SelectMio, ObjectOutsideLaneIsIgnored)
{
    auto p = makeDefaultParams();
    p.vx_is_relative = true;

    acc_aeb::PerceptionSnapshot snap;
    snap.dynamic_half_w = 1.75;
    snap.objects = makeObjects(30.0, 5.0, -5.0);  // y=5 m >> half-width 1.75 m

    EXPECT_FALSE(acc_aeb::selectMIO(snap, 20.0, p).valid);
}

TEST(SelectMio, RadarFillsCameraStaleGap)
{
    auto p = makeDefaultParams();
    p.radar_vx_is_relative = true;

    acc_aeb::PerceptionSnapshot snap;
    snap.dynamic_half_w = p.static_half_w_m;
    snap.cam_timeout    = true;
    snap.radar_objects  = makeObjects(25.0, 0.0, -4.0, 7);

    auto r = acc_aeb::selectMIO(snap, 20.0, p);
    ASSERT_TRUE(r.valid);
    EXPECT_NEAR(r.x, 25.0, 1e-9);
    EXPECT_EQ  (r.id, 7);
}

// Regression for the dedup range-check fix: a sub-threshold camera return
// (x < min_valid_x_m) must NOT shadow a valid radar object nearby.
TEST(SelectMio, DedupSkipsSubThresholdCameraReturn)
{
    auto p = makeDefaultParams();
    p.vx_is_relative       = true;
    p.radar_vx_is_relative = true;
    p.radar_fusion_dedup_m = 2.0;
    // min_valid_x_m = 0.5 (default)

    // Camera: noise at x=0.3 (below threshold) — score() already ignores it,
    // but the OLD dedup loop would let it shadow a radar return 1.2 m away.
    auto cam_arr = boost::make_shared<npust_bus_msgs::TrackedObjectArray>();
    { npust_bus_msgs::TrackedObject c; c.x=0.3; c.y=0.0; c.vx=-5.0; c.id=1;
      cam_arr->objects.push_back(c); }

    // Radar: real obstacle at x=1.5 m (dist to camera return = 1.2 m < dedup 2.0 m).
    auto rad_arr = boost::make_shared<npust_bus_msgs::TrackedObjectArray>();
    { npust_bus_msgs::TrackedObject r; r.x=1.5; r.y=0.0; r.vx=-3.0; r.id=2;
      rad_arr->objects.push_back(r); }

    acc_aeb::PerceptionSnapshot snap;
    snap.dynamic_half_w = p.static_half_w_m;
    snap.objects        = cam_arr;
    snap.radar_objects  = rad_arr;

    auto result = acc_aeb::selectMIO(snap, 20.0, p);
    ASSERT_TRUE(result.valid)
        << "Radar at x=1.5 must not be shadowed by invalid camera at x=0.3";
    EXPECT_EQ(result.id, 2);
    EXPECT_NEAR(result.x, 1.5, 1e-9);
}

// ─────────────────────────────────────────────────────────────────────────────
//  MioTracker grace period tests (regression for v_abs fix)
// ─────────────────────────────────────────────────────────────────────────────

// Helper: advance tracker past the confirm gate then run `extra` ABG frames.
// Returns the last tracked result.
static acc_aeb::MioResult warmTracker(
    acc_aeb::MioTracker& tr, acc_aeb::MioResult raw,
    double ego_v, double dt, int extra = 1)
{
    using namespace acc_aeb::defaults;
    acc_aeb::MioResult last;
    for (int i = 0; i < CONFIRM_FRAMES + extra; ++i)
        last = tr.track(raw, ego_v, dt);
    return last;
}

// After grace propagation, v_abs must equal ego_v + v_rel (not the stale
// value from the last ABG frame).  Give the filter non-zero a_rel by varying
// v_rel across frames so the propagated v_rel diverges from last_valid.v_rel.
TEST(MioTracker, GraceVabsConsistentWithVrel)
{
    auto p = makeDefaultParams();
    acc_aeb::MioTracker tracker(p);

    const double ego_v = 20.0;
    const double dt    = p.dt_s;

    // Confirm-gate frames
    acc_aeb::MioResult raw0;
    raw0.valid = true; raw0.id = 10; raw0.x = 30.0; raw0.v_rel = -5.0;
    raw0.v_abs = ego_v + raw0.v_rel;
    for (int i = 0; i < acc_aeb::defaults::CONFIRM_FRAMES; ++i)
        (void)tracker.track(raw0, ego_v, dt);

    // Two ABG frames with changing v_rel → non-zero a_rel estimate.
    acc_aeb::MioResult raw1 = raw0;  raw1.x = 29.75; raw1.v_rel = -4.5;
    (void)tracker.track(raw1, ego_v, dt);
    acc_aeb::MioResult raw2 = raw1;  raw2.x = 29.55; raw2.v_rel = -4.0;
    (void)tracker.track(raw2, ego_v, dt);

    // Object drops out → grace coast.
    acc_aeb::MioResult grace = tracker.track({}, ego_v, dt);

    ASSERT_TRUE(grace.valid)  << "Grace result should still carry a valid position";
    ASSERT_TRUE(grace.stale)  << "Grace result must be flagged stale";

    // Key invariant: v_abs = ego_v + v_rel (within floating-point rounding).
    EXPECT_NEAR(grace.v_abs, ego_v + grace.v_rel, 1e-9)
        << "v_abs must be kept consistent with the propagated v_rel";
}

// Regression: if ego_v changes while we are coasting on grace, v_abs must
// reflect the CURRENT ego_v, not the value from the last ABG tick.
TEST(MioTracker, GraceVabsReflectsCurrentEgoV)
{
    auto p = makeDefaultParams();
    acc_aeb::MioTracker tracker(p);

    const double dt            = p.dt_s;
    const double ego_v_track   = 20.0;
    const double ego_v_grace   = 22.0;   // bus accelerated between ticks

    acc_aeb::MioResult raw;
    raw.valid = true; raw.id = 11; raw.x = 40.0; raw.v_rel = -6.0;
    raw.v_abs = ego_v_track + raw.v_rel;

    (void)warmTracker(tracker, raw, ego_v_track, dt, /*extra=*/2);

    // Grace tick at a different ego speed.
    acc_aeb::MioResult grace = tracker.track({}, ego_v_grace, dt);

    ASSERT_TRUE(grace.valid && grace.stale);
    EXPECT_NEAR(grace.v_abs, ego_v_grace + grace.v_rel, 1e-9)
        << "v_abs must be recomputed with the current ego_v, not the tracking-frame value";
}

// ─────────────────────────────────────────────────────────────────────────────
//  StateMachine jerk-limit tests
// ─────────────────────────────────────────────────────────────────────────────

// FAULT must use jerk_warn (4.0 m/s²/s), not the slower jerk_normal (2.0).
// Starting from 0, the command must reach a_fault_brake within the expected
// number of ticks at jerk_warn rate.
TEST(StateMachine, FaultReachesFullBrakeAtWarnJerkRate)
{
    auto p = makeDefaultParams();
    acc_aeb::StateMachine sm(p);

    const double dt = p.dt_s;
    // ticks needed = ceil(|a_fault_brake| / (jerk_warn * dt))
    //              = ceil(2.5 / (4.0 * 0.05)) = ceil(12.5) = 13
    const int ticks = static_cast<int>(
        std::ceil(std::abs(p.a_fault_brake) / (p.jerk_warn * dt)));

    // Verify the rate of the first tick (sensor_ok=false forces FAULT entry).
    {
        acc_aeb::StateMachine sm2(p);
        auto r = sm2.step({}, {}, 20.0, dt, false, 0.0);
        ASSERT_EQ(r.state, acc_aeb::State::FAULT);
        EXPECT_NEAR(r.accel_cmd, -(p.jerk_warn * dt), 1e-9)
            << "First FAULT tick must step at jerk_warn, not jerk_normal";
    }

    // Verify full braking is reached within the expected tick count.
    double cmd = 0.0;
    for (int i = 0; i < ticks; ++i) {
        auto r = sm.step({}, {}, 20.0, dt, false, 0.0);
        ASSERT_EQ(r.state, acc_aeb::State::FAULT);
        cmd = r.accel_cmd;
    }
    EXPECT_LE(cmd, p.a_fault_brake + 1e-9)
        << "After " << ticks << " ticks FAULT must have reached a_fault_brake="
        << p.a_fault_brake;
}

// WARN and FAULT should use the same jerk rate (both safety-critical).
TEST(StateMachine, WarnAndFaultUseIdenticalJerkRate)
{
    auto p = makeDefaultParams();

    // FAULT: sensor_ok=false, no MIO.
    acc_aeb::StateMachine sm_f(p);
    auto r_f = sm_f.step({}, {}, 20.0, p.dt_s, false, 0.0);
    ASSERT_EQ(r_f.state, acc_aeb::State::FAULT);

    // WARN: MIO with TTC between ttc_aeb_s and ttc_warn_s, range > aeb_dist_m.
    acc_aeb::StateMachine sm_w(p);
    acc_aeb::MioResult mio;
    mio.valid = true; mio.id = 1; mio.x = 20.0; mio.v_rel = -6.0; mio.v_abs = 14.0;
    acc_aeb::KinResult kin;
    kin.ttc = 2.0;  // < ttc_warn_s=3.0, > ttc_aeb_s=1.5 → WARN
    auto r_w = sm_w.step(mio, kin, 20.0, p.dt_s, true, p.target_speed_mps);
    ASSERT_EQ(r_w.state, acc_aeb::State::WARN);

    EXPECT_NEAR(r_f.accel_cmd, r_w.accel_cmd, 1e-9)
        << "FAULT and WARN must use the same jerk rate (jerk_warn)";
}

// AEB completely bypasses the jerk limiter — full deceleration on tick 1.
TEST(StateMachine, AebCommandIsImmediate)
{
    auto p = makeDefaultParams();
    acc_aeb::StateMachine sm(p);

    // x < aeb_immediate_dist_m bypasses the confirm gate AND the jerk limit.
    acc_aeb::MioResult mio;
    mio.valid = true; mio.id = 1; mio.x = 2.0; mio.v_rel = -10.0; mio.v_abs = 10.0;
    acc_aeb::KinResult kin;
    kin.ttc = 0.2; kin.closing_spd = 10.0;

    auto r = sm.step(mio, kin, 20.0, p.dt_s, true, p.target_speed_mps);
    ASSERT_EQ(r.state, acc_aeb::State::AEB);
    EXPECT_NEAR(r.accel_cmd, p.a_aeb_max, 1e-9)
        << "AEB must command full deceleration without jerk limiting";
}

// ─────────────────────────────────────────────────────────────────────────────
//  computeKinematics backstop
// ─────────────────────────────────────────────────────────────────────────────

// A near-stationary object dead ahead while ego is moving should trigger the
// backstop path and produce a TTC ≈ x / ego_v.
TEST(Kinematics, BackstopForNearStationaryTarget)
{
    auto p = makeDefaultParams();
    // v_abs < stationary_v_abs_max=0.5  →  backstop active
    // ego_v=10, x=5  →  backstop_range=max(20, 10*4)=40 m; x<40 → fires
    // ttc_backstop = 5/10 = 0.5 s  <  ttc_aeb_s=1.5 s
    const double ego_v = 10.0;
    acc_aeb::MioResult mio;
    mio.valid = true; mio.x = 5.0; mio.v_abs = 0.1; mio.v_rel = 0.1 - ego_v; mio.a_rel = 0.0;

    auto k = acc_aeb::computeKinematics(ego_v, mio, p);

    EXPECT_LT(k.ttc, p.ttc_aeb_s)
        << "Stationary obstacle at 5 m should produce TTC below the AEB threshold";
    EXPECT_NEAR(k.ttc, mio.x / ego_v, 0.02)
        << "Backstop TTC should match x / ego_v";
}

// ─────────────────────────────────────────────────────────────────────────────
//  Efficiency benchmark — 2000 full pipeline iterations
// ─────────────────────────────────────────────────────────────────────────────

TEST(Efficiency, FullPipelineTimeBudget)
{
    auto p = makeDefaultParams();
    p.vx_is_relative = true;

    acc_aeb::MioTracker  tracker(p);
    acc_aeb::StateMachine sm(p);

    acc_aeb::PerceptionSnapshot snap;
    snap.dynamic_half_w = p.static_half_w_m;
    snap.objects = makeObjects(30.0, 0.0, -5.0, 1);

    const double dt    = p.dt_s;
    double       ego_v = 20.0;

    // Warm up tracker past the confirm gate before timing.
    acc_aeb::MioResult warm;
    warm.valid = true; warm.id = 1; warm.x = 30.0; warm.v_rel = -5.0; warm.v_abs = 15.0;
    for (int i = 0; i < 5; ++i) (void)tracker.track(warm, ego_v, dt);

    const int N = 2000;
    auto t0 = std::chrono::steady_clock::now();
    for (int i = 0; i < N; ++i) {
        auto raw  = acc_aeb::selectMIO(snap, ego_v, p);
        auto mio  = tracker.track(raw, ego_v, dt);
        auto kin  = acc_aeb::computeKinematics(ego_v, mio, p);
        auto ctrl = sm.step(mio, kin, ego_v, dt, true, p.target_speed_mps);
        (void)ctrl;
        ego_v = std::max(0.0, ego_v - 0.001);
    }
    auto t1 = std::chrono::steady_clock::now();

    const double total_ms = std::chrono::duration<double, std::milli>(t1 - t0).count();
    const double avg_us   = total_ms * 1000.0 / N;

    // Budget: 20 Hz loop = 50 ms.  Expect the pure-logic path << 1 ms.
    // Allow 5 ms to be comfortable on any hardware / debug build.
    printf("\n  [TIMING] %d iterations  total=%.3f ms  avg=%.2f µs  budget=%d µs\n",
           N, total_ms, avg_us, 5000);

    EXPECT_LT(avg_us, 5000.0)
        << "Average control-loop iteration time exceeds 5 ms "
           "(50 ms budget at 20 Hz, should be << 1 ms in practice)";
}
