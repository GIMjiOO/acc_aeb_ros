# [TEMP SIM] TrackedObject — single detected object from the perception stack.
# Fields used by acc_aeb kinematics.cpp:
#   x   — longitudinal range ahead (m), must be > min_valid_x_m (0.5 m)
#   y   — lateral offset (m); positive = left
#   vx  — world-frame absolute velocity when vx_is_relative=false (m/s)
#          relative-to-ego velocity when vx_is_relative=true (m/s)
#   id  — stable tracking ID; consistent across frames for the ABG filter
float64 x
float64 y
float64 vx
int32   id
