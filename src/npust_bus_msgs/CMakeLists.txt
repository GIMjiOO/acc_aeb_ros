cmake_minimum_required(VERSION 3.0.2)
project(npust_bus_msgs)

# [TEMP SIM] Stub message package — replace with real npust_bus_msgs before vehicle use.

find_package(catkin REQUIRED COMPONENTS message_generation)

add_message_files(FILES
  TrackedObject.msg
  TrackedObjectArray.msg
  LanePolynomial.msg
)

generate_messages()

catkin_package(CATKIN_DEPENDS message_runtime)
