# TrackedObject — single detected object from the perception stack.
# Fields used by acc_aeb kinematics.cpp:
#   x      — longitudinal range ahead (m), must be > min_valid_x_m (0.5 m)
#   y      — lateral offset (m); positive = left
#   vx     — world-frame absolute velocity when vx_is_relative=false (m/s)
#             relative-to-ego velocity when vx_is_relative=true (m/s)
#   id     — stable tracking ID; consistent across frames for the Kalman filter
#   x_var  — variance of x measurement (m²)
#   y_var  — variance of y measurement (m²)
#   vx_var — variance of vx measurement (m²/s²)
float64 x
float64 y
float64 vx
int32   id
float64 x_var
float64 y_var
float64 vx_var
