#!/usr/bin/env python3
"""
[TEMP SIM] acc_aeb_sim_node.py
Closed-loop bench simulator for ACC/AEB v15.3 logic testing.
NOT for vehicle use — remove before deployment.

Publishes synthetic sensor data, receives /control_value, integrates simple
vehicle dynamics so each scenario plays out as a real closed-loop run.

Scenarios (set via ROS param ~scenario):
  0  FREE_CRUISE        No obstacle. Verify ego ramps to 25 km/h and cruises.
  1  FOLLOW_STEADY      Slow obstacle at 20 m. Verify gap maintenance (FOLLOW).
  2  WARN_AEB_STOP      Stationary obstacle at 55 m. Verify full state chain:
                        CRUISE -> FOLLOW -> WARN -> AEB -> vehicle stops.
  3  EMERGENCY_AEB      Obstacle appears at 12 m while ego at 40 km/h.
                        TTC < 1.5 s -> bypass confirm frames -> immediate AEB.
  4  VCU_DROPOUT        VCU silent for 0.8 s (> vcu_timeout=0.3 s) -> FAULT,
                        then resumes -> FAULT_RECOVERED after fault_recovery=1 s.
  5  OBJ_DROPOUT        Object tracker silent for 0.6 s -> FAULT, then recovery.

Usage:
  roslaunch acc_aeb_sim sim_test.launch scenario:=2
"""

import rospy
import math
from pro_can.msg import VCU, control_data
from npust_bus_msgs.msg import TrackedObjectArray, TrackedObject, LanePolynomial
from std_msgs.msg import Float32

# ---------------------------------------------------------------------------
#  Vehicle constants — must match acc_aeb_controller launch params.
# ---------------------------------------------------------------------------
MASS_KG          = 10000.0
WHEEL_R_M        = 0.478
GEAR_RATIO       = 6.5
DRV_EFF          = 0.92
G_MPS2           = 9.80665
KPH_TO_MPS       = 1.0 / 3.6
MPS_TO_KPH       = 3.6

# Torque -> acceleration: accel = torque * (gear*eff) / (mass*r)
# Matches the inverse of StateMachine::torque_per_accel_ = (mass*r)/(gear*eff)
ACCEL_PER_TORQUE = (GEAR_RATIO * DRV_EFF) / (MASS_KG * WHEEL_R_M)

SCENARIOS = {
    0: 'FREE_CRUISE',
    1: 'FOLLOW_STEADY',
    2: 'WARN_AEB_STOP',
    3: 'EMERGENCY_AEB',
    4: 'VCU_DROPOUT',
    5: 'OBJ_DROPOUT',
}


class AccAebSim:

    def __init__(self):
        self.scenario = int(rospy.get_param('~scenario', 2))
        self.dt       = float(rospy.get_param('~dt', 0.05))   # must match controller dt_s

        # Latest actuator output from the controller (updated asynchronously).
        self._torque_nm = 0.0
        self._brake_g   = 0.0

        # Publishers — named _*_pub to avoid shadowing the _pub_* helper methods.
        self._vcu_pub    = rospy.Publisher('/VCU_Data',
                                           VCU, queue_size=1)
        self._obj_pub    = rospy.Publisher('/perception/camera/tracked_objects',
                                           TrackedObjectArray, queue_size=1)
        self._lane_l_pub = rospy.Publisher('/perception/lanes/left',
                                           LanePolynomial, queue_size=1)
        self._lane_r_pub = rospy.Publisher('/perception/lanes/right',
                                           LanePolynomial, queue_size=1)
        self._target_pub = rospy.Publisher('/planner/target_speed',
                                           Float32, queue_size=1)

        rospy.Subscriber('/control_value', control_data, self._ctrl_cb)

        rospy.sleep(0.5)   # wait for subscriber/publisher handshake
        rospy.loginfo('[SIM] Ready. scenario=%d (%s)  dt=%.3f s',
                      self.scenario, SCENARIOS.get(self.scenario, 'UNKNOWN'), self.dt)

    # -----------------------------------------------------------------------
    #  ROS callback
    # -----------------------------------------------------------------------

    def _ctrl_cb(self, msg):
        self._torque_nm = msg.acc_command_value
        self._brake_g   = msg.brake_command_value

    # -----------------------------------------------------------------------
    #  Simple vehicle physics: actuator commands -> ego acceleration
    # -----------------------------------------------------------------------

    def _ego_accel_mps2(self):
        """
        Convert the last received actuator command to a longitudinal acceleration.
        Priority: brake > throttle > coast drag.
        """
        if self._brake_g > 0.002:
            return -self._brake_g * G_MPS2
        if self._torque_nm > 1.0:
            # clamp to a physically plausible ceiling (motor torque limit)
            return min(self._torque_nm * ACCEL_PER_TORQUE, 1.6)
        return -0.08   # rolling resistance + air drag during coast

    def _step_ego(self, ego_v, dt):
        accel = self._ego_accel_mps2()
        return max(0.0, ego_v + accel * dt), accel

    # -----------------------------------------------------------------------
    #  Publish helpers
    # -----------------------------------------------------------------------

    def _pub_vcu(self, ego_v_mps):
        msg = VCU()
        msg.MotorVelocity = float(ego_v_mps * MPS_TO_KPH)
        self._vcu_pub.publish(msg)

    def _pub_objects(self, obj_list):
        """obj_list: list of (x_m, y_m, vx_world_mps, track_id)"""
        arr = TrackedObjectArray()
        for x, y, vx, oid in obj_list:
            o = TrackedObject()
            o.x  = float(x)
            o.y  = float(y)
            o.vx = float(vx)   # world-frame (vx_is_relative=false in launch)
            o.id = int(oid)
            arr.objects.append(o)
        self._obj_pub.publish(arr)

    def _pub_lanes(self):
        """Straight flat lanes at ±1.75 m (bus half-width). Always valid."""
        l = LanePolynomial(); l.a = 0.0; l.b = 0.0; l.c =  1.75; l.is_valid = True
        r = LanePolynomial(); r.a = 0.0; r.b = 0.0; r.c = -1.75; r.is_valid = True
        self._lane_l_pub.publish(l)
        self._lane_r_pub.publish(r)

    def _pub_target_kph(self, kph):
        self._target_pub.publish(Float32(data=float(kph * KPH_TO_MPS)))

    # -----------------------------------------------------------------------
    #  Status printer (called every ~0.5 s)
    # -----------------------------------------------------------------------

    def _print(self, t, name, ego_v, obj_x=None, obj_vx=None, accel=0.0):
        if obj_x is not None:
            closing = ego_v - obj_vx          # positive = approaching
            ttc     = (obj_x / closing) if closing > 0.01 else float('inf')
            rospy.loginfo(
                '[SIM] t=%5.2f %-16s | ego=%5.1fkm/h | '
                'objX=%5.1fm clos=%.1fm/s TTC=%.1fs | '
                'T=%5.0fNm B=%.3fg | a=%.2fm/s²',
                t, name, ego_v * MPS_TO_KPH,
                obj_x, closing, min(ttc, 99.9),
                self._torque_nm, self._brake_g, accel)
        else:
            rospy.loginfo(
                '[SIM] t=%5.2f %-16s | ego=%5.1fkm/h | no-obj '
                '| T=%5.0fNm B=%.3fg | a=%.2fm/s²',
                t, name, ego_v * MPS_TO_KPH,
                self._torque_nm, self._brake_g, accel)

    # Cheap timer helper: returns True at most once per ~interval seconds.
    @staticmethod
    def _every(t, interval, dt):
        return abs((t % interval) - interval) < dt * 0.55 or t < dt * 0.55

    # -----------------------------------------------------------------------
    #  Entry point
    # -----------------------------------------------------------------------

    def run(self):
        name = SCENARIOS.get(self.scenario, 'UNKNOWN')
        rospy.loginfo('[SIM] ====== Scenario %d: %s ======', self.scenario, name)
        fn = {
            0: self._s0_free_cruise,
            1: self._s1_follow_steady,
            2: self._s2_warn_aeb_stop,
            3: self._s3_emergency_aeb,
            4: self._s4_vcu_dropout,
            5: self._s5_obj_dropout,
        }.get(self.scenario)
        if fn is None:
            rospy.logerr('[SIM] Unknown scenario %d. Valid: 0-5.', self.scenario)
            return
        fn()
        rospy.loginfo('[SIM] ====== Scenario %d complete ======', self.scenario)

    # -----------------------------------------------------------------------
    #  Scenario 0 — FREE_CRUISE
    #  No obstacle. Ego starts at 0 km/h, target 25 km/h.
    #  Expected: CRUISE state, smooth torque ramp, stabilise at ~25 km/h.
    # -----------------------------------------------------------------------

    def _s0_free_cruise(self):
        ego_v    = 0.0
        rate     = rospy.Rate(1.0 / self.dt)
        t        = 0.0
        duration = 12.0
        accel    = 0.0

        while not rospy.is_shutdown() and t < duration:
            self._pub_vcu(ego_v)
            self._pub_objects([])
            self._pub_lanes()
            self._pub_target_kph(25.0)

            ego_v, accel = self._step_ego(ego_v, self.dt)

            if self._every(t, 0.5, self.dt):
                self._print(t, 'FREE_CRUISE', ego_v, accel=accel)

            t += self.dt
            rate.sleep()

    # -----------------------------------------------------------------------
    #  Scenario 1 — FOLLOW_STEADY
    #  Obstacle at 20 m doing 3 m/s (~11 km/h), ego target 25 km/h.
    #  Expected: FOLLOW state, controller maintains safe gap.
    # -----------------------------------------------------------------------

    def _s1_follow_steady(self):
        ego_v    = 20.0 * KPH_TO_MPS   # 20 km/h start
        obj_x    = 20.0                  # 20 m ahead
        obj_vx   = 3.0                   # 3 m/s world-frame (slower than ego)
        rate     = rospy.Rate(1.0 / self.dt)
        t        = 0.0
        duration = 25.0
        accel    = 0.0

        while not rospy.is_shutdown() and t < duration:
            self._pub_vcu(ego_v)
            self._pub_objects([(obj_x, 0.0, obj_vx, 1)])
            self._pub_lanes()
            self._pub_target_kph(25.0)

            ego_v, accel = self._step_ego(ego_v, self.dt)
            obj_x = max(1.0, obj_x + (obj_vx - ego_v) * self.dt)

            if self._every(t, 0.5, self.dt):
                self._print(t, 'FOLLOW_STEADY', ego_v, obj_x, obj_vx, accel)

            t += self.dt
            rate.sleep()

    # -----------------------------------------------------------------------
    #  Scenario 2 — WARN_AEB_STOP
    #  Stationary obstacle at 55 m, ego at 25 km/h, target 25 km/h.
    #  Expected sequence:
    #    CRUISE (x > follow_enter ~33 m)
    #    -> FOLLOW (x enters following range, PID brakes)
    #    -> WARN  (TTC < 3.0 s)
    #    -> AEB   (TTC < 1.5 s or x < 8 m, confirmed 2 frames)
    #    -> vehicle stops, AEB hold 2 s
    # -----------------------------------------------------------------------

    def _s2_warn_aeb_stop(self):
        ego_v    = 25.0 * KPH_TO_MPS   # 6.94 m/s
        obj_x    = 55.0                  # stationary obstacle 55 m ahead
        obj_vx   = 0.0
        rate     = rospy.Rate(1.0 / self.dt)
        t        = 0.0
        duration = 40.0
        accel    = 0.0

        while not rospy.is_shutdown() and t < duration:
            visible = obj_x > 0.3
            self._pub_vcu(ego_v)
            self._pub_objects([(obj_x, 0.0, obj_vx, 1)] if visible else [])
            self._pub_lanes()
            self._pub_target_kph(25.0)

            ego_v, accel = self._step_ego(ego_v, self.dt)
            # Stationary object: range decreases at ego speed.
            obj_x = max(0.0, obj_x - ego_v * self.dt)

            if self._every(t, 0.5, self.dt):
                self._print(t, 'WARN_AEB_STOP', ego_v,
                            obj_x if visible else None, obj_vx, accel)

            t += self.dt
            rate.sleep()

    # -----------------------------------------------------------------------
    #  Scenario 3 — EMERGENCY_AEB
    #  Ego cruises at 40 km/h. At t=2 s, obstacle appears at 12 m.
    #  TTC = 12 / 11.1 ≈ 1.08 s < ttc_aeb_s (1.5 s) => bypass_confirm=True
    #  => AEB triggered on the FIRST detection frame (no 3-frame wait).
    # -----------------------------------------------------------------------

    def _s3_emergency_aeb(self):
        ego_v    = 40.0 * KPH_TO_MPS   # 11.11 m/s
        obj_x    = 12.0                  # will appear at t=2.0 s
        rate     = rospy.Rate(1.0 / self.dt)
        t        = 0.0
        duration = 12.0
        accel    = 0.0
        appeared = False

        while not rospy.is_shutdown() and t < duration:
            if t >= 2.0 and not appeared:
                appeared = True
                rospy.logwarn('[SIM] t=%.2f OBSTACLE APPEARS at %.1f m  '
                              '(TTC≈%.1f s — expect immediate AEB)',
                              t, obj_x, obj_x / max(ego_v, 0.01))

            objs = []
            if appeared and obj_x > 0.3:
                objs = [(obj_x, 0.0, 0.0, 1)]

            self._pub_vcu(ego_v)
            self._pub_objects(objs)
            self._pub_lanes()
            self._pub_target_kph(40.0)

            ego_v, accel = self._step_ego(ego_v, self.dt)
            if appeared:
                obj_x = max(0.0, obj_x - ego_v * self.dt)

            if self._every(t, 0.5, self.dt):
                self._print(t, 'EMERGENCY_AEB', ego_v,
                            obj_x if (appeared and obj_x > 0.3) else None,
                            0.0, accel)

            t += self.dt
            rate.sleep()

    # -----------------------------------------------------------------------
    #  Scenario 4 — VCU_DROPOUT
    #  Ego cruises at 25 km/h. VCU goes silent at t=5 s for 0.8 s
    #  (> vcu_timeout_s=0.3 s). Controller must enter FAULT (vcu_stale).
    #  After VCU returns, fault_recovery_s=1.0 s timer before resuming.
    # -----------------------------------------------------------------------

    def _s4_vcu_dropout(self):
        ego_v          = 25.0 * KPH_TO_MPS
        rate           = rospy.Rate(1.0 / self.dt)
        t              = 0.0
        duration       = 18.0
        dropout_start  = 5.0
        dropout_end    = 5.8
        accel          = 0.0
        warned_start   = False
        warned_end     = False

        while not rospy.is_shutdown() and t < duration:
            in_dropout = dropout_start <= t < dropout_end

            if in_dropout and not warned_start:
                warned_start = True
                rospy.logwarn('[SIM] t=%.2f VCU DROPOUT START (%.1f s) '
                              '— expect FAULT (vcu_stale) within %.0f ms',
                              t, dropout_end - dropout_start,
                              0.3 * 1000)
            if t >= dropout_end and not warned_end:
                warned_end = True
                rospy.logwarn('[SIM] t=%.2f VCU RESTORED '
                              '— expect FAULT_RECOVERED after ~1.0 s', t)

            if not in_dropout:
                self._pub_vcu(ego_v)   # silent during dropout

            self._pub_objects([])
            self._pub_lanes()
            self._pub_target_kph(25.0)

            ego_v, accel = self._step_ego(ego_v, self.dt)

            if self._every(t, 0.5, self.dt):
                label = 'VCU_DROPOUT[OFF]' if in_dropout else 'VCU_DROPOUT'
                self._print(t, label, ego_v, accel=accel)

            t += self.dt
            rate.sleep()

    # -----------------------------------------------------------------------
    #  Scenario 5 — OBJ_DROPOUT
    #  Ego following obstacle at 20 m. Object tracker goes silent at t=7 s
    #  for 0.6 s (> sensor_timeout_s=0.3 s) -> FAULT (object_tracker_stale).
    #  Note: tracker has a grace coast for target_loss_timeout_s=1.0 s first,
    #  then the node checks obj_timeout which fires at 0.3 s -> FAULT sooner.
    # -----------------------------------------------------------------------

    def _s5_obj_dropout(self):
        ego_v          = 20.0 * KPH_TO_MPS
        obj_x          = 20.0
        obj_vx         = 3.0
        rate           = rospy.Rate(1.0 / self.dt)
        t              = 0.0
        duration       = 22.0
        dropout_start  = 7.0
        dropout_end    = 7.6
        accel          = 0.0
        warned_start   = False
        warned_end     = False

        while not rospy.is_shutdown() and t < duration:
            in_dropout = dropout_start <= t < dropout_end

            if in_dropout and not warned_start:
                warned_start = True
                rospy.logwarn('[SIM] t=%.2f OBJ DROPOUT START (%.1f s) '
                              '— grace coast for %.1f s then FAULT',
                              t, dropout_end - dropout_start, 0.3)
            if t >= dropout_end and not warned_end:
                warned_end = True
                rospy.logwarn('[SIM] t=%.2f OBJ TRACKER RESTORED '
                              '— FAULT_RECOVERED after ~1.0 s', t)

            self._pub_vcu(ego_v)
            if not in_dropout:
                self._pub_objects([(obj_x, 0.0, obj_vx, 1)])
            else:
                self._pub_objects([])   # silent during dropout

            self._pub_lanes()
            self._pub_target_kph(25.0)

            ego_v, accel = self._step_ego(ego_v, self.dt)
            obj_x = max(1.0, obj_x + (obj_vx - ego_v) * self.dt)

            if self._every(t, 0.5, self.dt):
                label = 'OBJ_DROPOUT[OFF]' if in_dropout else 'OBJ_DROPOUT'
                self._print(t, label, ego_v, obj_x if not in_dropout else None,
                            obj_vx, accel)

            t += self.dt
            rate.sleep()


if __name__ == '__main__':
    rospy.init_node('acc_aeb_sim', anonymous=False)
    sim = AccAebSim()
    sim.run()
