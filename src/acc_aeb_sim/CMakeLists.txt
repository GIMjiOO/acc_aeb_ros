cmake_minimum_required(VERSION 3.0.2)
project(acc_aeb_sim)

# [TEMP SIM] Python-only simulation package.

find_package(catkin REQUIRED COMPONENTS rospy std_msgs pro_can npust_bus_msgs)

catkin_package()

catkin_install_python(PROGRAMS scripts/acc_aeb_sim_node.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
