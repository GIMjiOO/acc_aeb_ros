# [TEMP SIM] control_data — longitudinal actuator command (mirrors real pro_can/control_data).
# Fields used by acc_aeb_node:
#   header.stamp              — publish timestamp
#   acc_command_value         — motor torque (Nm); positive = drive
#   brake_command_value       — braking demand in G (0–0.6)
#   steering_wheel_command_value — always 0.0 from the ACC/AEB node
std_msgs/Header header
float64 acc_command_value
float64 brake_command_value
float64 steering_wheel_command_value
