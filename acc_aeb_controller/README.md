# acc_aeb_controller (v15.3)

Longitudinal ACC/AEB controller for the NPUST heavy bus platform.
Runs on **ROS 1 Noetic** / **Jetson AGX Orin** (aarch64, Ubuntu 20.04, C++17).

---

## How the logic works

```
  /VCU_Data ──────────────────► ego_v_mps (atomic)
  /planner/target_speed ──────► dynamic_target_speed_mps (atomic)
  /driver_override ───────────► driver_override_active (atomic Bool)
  /perception/camera/... ─────┐
  /perception/radar/...  ─────┴─► perc_mutex_ buffer (objects + lanes)

  Every tick (default 20 Hz):
  1. selectMIO        — score in-lane objects from camera + radar, dedup by XY
                        proximity, pick highest threat; radar fills in when
                        camera is stale (adverse weather / glare)
  2. MioTracker       — Alpha-Beta-Gamma filter; grace-coast on brief dropout;
                        confirm gate (N frames) for new targets
  3. computeKinematics— constant-accel quadratic TTC + desired following gap
  4. StateMachine     — 5-state FSM: transition + PI/PID control law + jerk limit
  5. driver override  — if active in CRUISE/FOLLOW: publish neutral (0/0),
                        AEB/WARN/FAULT remain fully armed
  6. mapToActuators   — THROTTLE / COAST / BRAKE hysteresis + rate limits
  7. publish          — /control_value (torque_nm + brake_g) + /diagnostics
```

### Sensor redundancy

| Camera | Radar | Mode                          | Fault? |
|--------|-------|-------------------------------|--------|
| ✓      | ✓     | Full fusion                   | No     |
| ✓      | ✗     | Camera only                   | No (INFO_THROTTLE) |
| ✗      | ✓     | Radar only (WARN logged)      | No     |
| ✗      | ✗     | No perception                 | **FAULT** |

Losing one sensor is degraded mode. Both must be stale to trigger FAULT. `selectMIO` uses camera as primary (better lateral accuracy) and fills in radar objects not already covered by a camera detection.

### State machine

| State  | Entry condition                               | Command              |
|--------|-----------------------------------------------|----------------------|
| CRUISE | No valid MIO ahead                            | PI cruise speed hold |
| FOLLOW | MIO within desired gap × `follow_enter_ratio` | PID gap hold         |
| WARN   | TTC < `ttc_warn_s` or MIO < `aeb_dist_m`     | Fixed decel          |
| AEB    | TTC < `ttc_aeb_s` or MIO < `aeb_dist_m` (N frames confirmed) | Full brake |
| FAULT  | Object tracker or VCU stale                   | Fixed decel → safe-stop |

AEB latches until ego stops, then holds for `aeb_hold_s` and clears if MIO > `resume_dist_m`.
FAULT requires `fault_recovery_s` of clean sensors before resuming.

---

## Layout

```
acc_aeb_controller/
├── CMakeLists.txt
├── package.xml
├── launch/
│   ├── acc_aeb_controller.launch   # main deployment launch
│   └── live_test.launch            # real camera + simulated ego dynamics
├── scripts/
│   ├── fake_vcu.py                 # interactive ego-speed publisher (bench testing)
│   └── vehicle_plant.py           # integrates /control_value → /VCU_Data
└── include/acc_aeb_controller/
│   ├── types.h          # POD structs, enums, all tuning defaults (ROS-free)
│   ├── math_utils.h     # clampVal, safeDiv, computeTTC (inline)
│   ├── params.h/.cpp    # ROS param load + contract validation
│   ├── kinematics.h/.cpp# selectMIO, MioTracker (ABG), computeKinematics
│   └── state_machine.h/.cpp  # FSM, control law, jerk limit, actuator mapping
└── src/
    └── acc_aeb_node.cpp # ROS I/O, watchdog, diagnostics, main()
```

Dependency direction (no cycles):

```
types.h ──► math_utils.h ──► kinematics.{h,cpp}
  │                      └──► state_machine.{h,cpp}
  └──► params.{h,cpp}            (all) ──► acc_aeb_node.cpp
```

`types.h`, `math_utils.h`, `kinematics.*`, `state_machine.*` have **no roscpp dependency** — unit-testable in isolation.

---

## Threads

| Thread         | Role                                                                 |
|----------------|----------------------------------------------------------------------|
| ctrl spinner   | Dedicated single-thread `CallbackQueue` — control timer only, never re-entrant |
| sensor spinner | `ros::AsyncSpinner(N)` — writes `perc_mutex_` buffers + lock-free atomics |
| watchdog       | `std::thread` on `steady_clock` — detects frozen control loop, publishes safe-stop |
| main           | Installs SIGINT/SIGTERM, idles on `WallRate`, asserts final safe-stop on shutdown |

**Watchdog scope:** catches a hung *control thread* while other threads still run. It cannot catch a whole-process freeze or power loss — the downstream **CAN gateway must** enforce its own `/control_value` staleness timeout independently.

---

## Build & run

```bash
cd ~/catkin_ws
catkin_make           # or: catkin build
source devel/setup.bash
roslaunch acc_aeb_controller acc_aeb_controller.launch
```

Dependencies: `pro_can` (`control_data`, `VCU`) and `npust_bus_msgs` (`TrackedObjectArray`, `LanePolynomial`) must be on the workspace path.

### Live camera test (real YOLO objects + simulated ego)

```bash
roslaunch acc_aeb_controller live_test.launch
roslaunch acc_aeb_controller live_test.launch init_speed_kph:=30.0
```

### Bench testing with interactive fake VCU

```bash
rosrun acc_aeb_controller fake_vcu.py
```

---

## Key parameters

All parameters are in the private namespace (`~`). Defaults are in `types.h::defaults`.

| Parameter               | Default   | Description                                              |
|-------------------------|-----------|----------------------------------------------------------|
| `dt_s`                  | 0.05      | Control loop period (s); sets 20 Hz                     |
| `target_kph`            | 25.0      | Maximum cruise speed (km/h)                             |
| `vx_is_relative`        | false     | **Must match camera tracker.** `true` = obj.vx relative to ego |
| `radar_vx_is_relative`  | true      | **Must match radar.** Doppler = relative, almost always true |
| `radar_fusion_dedup_m`  | 2.0       | XY radius for camera-radar dedup (m); tune to sensor accuracy |
| `time_gap_s`            | 2.0       | Desired time headway for following gap                  |
| `safe_base_m`           | 5.0       | Minimum following distance (m)                          |
| `ttc_aeb_s`             | 1.5       | TTC threshold to trigger AEB (s)                        |
| `ttc_warn_s`            | 3.0       | TTC threshold to enter WARN (s)                         |
| `aeb_dist_m`            | 8.0       | Range threshold to trigger AEB (m)                      |
| `aeb_immediate_dist_m`  | 4.0       | Immediate AEB (no confirm gate) range (m)               |
| `a_aeb_max`             | -5.5      | Max AEB deceleration (m/s²)                             |
| `a_fault_brake`         | -2.5      | Fault/shutdown deceleration (m/s²)                      |
| `sensor_timeout_s`      | 0.30      | Camera staleness threshold (s)                          |
| `radar_timeout_s`       | 0.30      | Radar staleness threshold (s)                           |
| `vcu_timeout_s`         | 0.30      | Ego-speed (VCU) staleness → FAULT (s)                   |
| `fault_recovery_s`      | 1.0       | Clean-sensor dwell before exiting FAULT (s)             |
| `watchdog_timeout_s`    | 0.20      | Control-loop freeze threshold (s)                       |
| `mass_kg`               | 10000     | Vehicle mass (kg)                                        |
| `wheel_r_m`             | 0.478     | Wheel radius (m)                                         |
| `gear_ratio`            | 6.5       | Drivetrain gear ratio                                    |
| `motor_torque_max`      | 1200      | Motor torque ceiling (Nm)                               |
| `brake_g_max`           | 0.60      | Brake ceiling (g)                                        |
| `spinner_threads`       | 2         | Sensor-callback worker threads                           |

Full parameter list with defaults: `include/acc_aeb_controller/types.h` (`defaults` namespace).

---

## Topics

| Direction   | Topic                                    | Type                                |
|-------------|------------------------------------------|-------------------------------------|
| Subscribe   | `/VCU_Data`                              | `pro_can/VCU` (MotorVelocity km/h)  |
| Subscribe   | `/perception/camera/tracked_objects`     | `npust_bus_msgs/TrackedObjectArray` |
| Subscribe   | `/perception/radar/tracked_objects`      | `npust_bus_msgs/TrackedObjectArray` |
| Subscribe   | `/perception/lanes/left`                 | `npust_bus_msgs/LanePolynomial`     |
| Subscribe   | `/perception/lanes/right`                | `npust_bus_msgs/LanePolynomial`     |
| Subscribe   | `/planner/target_speed`                  | `std_msgs/Float32` (m/s, capped to `target_kph`) |
| Subscribe   | `/driver_override`                       | `std_msgs/Bool` — `true` suspends ACC; AEB/WARN/FAULT remain armed |
| Publish     | `/control_value`                         | `pro_can/control_data`              |
| Publish     | `/diagnostics`                           | `diagnostic_msgs/DiagnosticArray`   |

Add `<remap>` tags in `acc_aeb_controller.launch` if your stack uses different names.

---

## Operational notes

- **`vx_is_relative` / `radar_vx_is_relative`** must match each sensor's velocity convention. Camera trackers vary; radar Doppler is almost always relative (`true`). Wrong setting silently corrupts TTC.
- The node starts in FAULT and stays there until the VCU AND at least one perception sensor (camera or radar) have each published at least once.
- **Driver override** (`/driver_override`, `std_msgs/Bool`): publish `true` to hand control to the driver — ACC coasts to neutral; AEB/WARN/FAULT remain fully armed. Wire from your VCU node (brake-pedal-pressed or throttle-override signal).
- `debug_stall_once_s` (launch param, default unset) injects a one-shot control-loop stall to exercise the watchdog on the bench. Never enable on the vehicle.
- **Downstream failsafe (required):** the CAN gateway must independently command a safe state if `/control_value` goes stale. The node's shutdown safe-stop is defence-in-depth, not the primary net.

## Known gaps (not yet implemented)

| Gap | What's needed | Priority |
|-----|---------------|----------|
| Object class filtering | `TrackedObject.type` field from perception team; filter out road signs, barriers, oncoming traffic | High |
| Yaw-rate / curve compensation | IMU subscription + adjust lane corridor for cornering; currently the static lateral half-width is the only adaptation | Medium |
| Speed-limit awareness | Map or sign-recognition input; currently only `/planner/target_speed` caps cruise | Medium |
| VCU brake-pedal field for override | Wire `/driver_override` from `VCU.brake_pedal_*`; currently a separate Bool topic | Low (easy once VCU msg is known) |

### Message field assumptions

| Message                        | Fields used                                                    |
|--------------------------------|----------------------------------------------------------------|
| `pro_can/VCU`                  | `MotorVelocity` (float, km/h)                                 |
| `pro_can/control_data`         | `header`, `acc_command_value`, `brake_command_value`, `steering_wheel_command_value` |
| `npust_bus_msgs/TrackedObject` | `x`, `y`, `vx` (float64), `id` (int32)                       |
| `npust_bus_msgs/LanePolynomial`| `a`, `b`, `c`, `is_valid`                                     |
