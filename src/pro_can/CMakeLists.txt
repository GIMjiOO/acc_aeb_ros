cmake_minimum_required(VERSION 3.0.2)
project(pro_can)

# [TEMP SIM] Stub message package — replace with real pro_can before vehicle use.

find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs
)

add_message_files(FILES
  VCU.msg
  control_data.msg
)

generate_messages(DEPENDENCIES std_msgs)

catkin_package(CATKIN_DEPENDS message_runtime std_msgs)
