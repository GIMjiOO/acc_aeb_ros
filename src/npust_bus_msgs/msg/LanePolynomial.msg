# [TEMP SIM] LanePolynomial — second-order lateral lane boundary:
#   y(x) = a*x^2 + b*x + c
# Validity gates (from kinematics.cpp / isLaneValid):
#   is_valid must be true
#   |a| <= max_lane_curve_a   (default 0.02)
#   |b| <= max_lane_heading_b (default 0.35)
float64 a
float64 b
float64 c
bool    is_valid
