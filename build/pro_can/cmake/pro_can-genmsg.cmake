# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pro_can: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ipro_can:/home/nvidia/catkin_ws00/src/pro_can/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pro_can_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/catkin_ws00/src/pro_can/msg/VCU.msg" NAME_WE)
add_custom_target(_pro_can_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pro_can" "/home/nvidia/catkin_ws00/src/pro_can/msg/VCU.msg" ""
)

get_filename_component(_filename "/home/nvidia/catkin_ws00/src/pro_can/msg/control_data.msg" NAME_WE)
add_custom_target(_pro_can_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pro_can" "/home/nvidia/catkin_ws00/src/pro_can/msg/control_data.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pro_can
  "/home/nvidia/catkin_ws00/src/pro_can/msg/VCU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro_can
)
_generate_msg_cpp(pro_can
  "/home/nvidia/catkin_ws00/src/pro_can/msg/control_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro_can
)

### Generating Services

### Generating Module File
_generate_module_cpp(pro_can
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro_can
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pro_can_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pro_can_generate_messages pro_can_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/pro_can/msg/VCU.msg" NAME_WE)
add_dependencies(pro_can_generate_messages_cpp _pro_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/pro_can/msg/control_data.msg" NAME_WE)
add_dependencies(pro_can_generate_messages_cpp _pro_can_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro_can_gencpp)
add_dependencies(pro_can_gencpp pro_can_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro_can_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pro_can
  "/home/nvidia/catkin_ws00/src/pro_can/msg/VCU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro_can
)
_generate_msg_eus(pro_can
  "/home/nvidia/catkin_ws00/src/pro_can/msg/control_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro_can
)

### Generating Services

### Generating Module File
_generate_module_eus(pro_can
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro_can
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pro_can_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pro_can_generate_messages pro_can_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/pro_can/msg/VCU.msg" NAME_WE)
add_dependencies(pro_can_generate_messages_eus _pro_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/pro_can/msg/control_data.msg" NAME_WE)
add_dependencies(pro_can_generate_messages_eus _pro_can_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro_can_geneus)
add_dependencies(pro_can_geneus pro_can_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro_can_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pro_can
  "/home/nvidia/catkin_ws00/src/pro_can/msg/VCU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro_can
)
_generate_msg_lisp(pro_can
  "/home/nvidia/catkin_ws00/src/pro_can/msg/control_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro_can
)

### Generating Services

### Generating Module File
_generate_module_lisp(pro_can
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro_can
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pro_can_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pro_can_generate_messages pro_can_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/pro_can/msg/VCU.msg" NAME_WE)
add_dependencies(pro_can_generate_messages_lisp _pro_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/pro_can/msg/control_data.msg" NAME_WE)
add_dependencies(pro_can_generate_messages_lisp _pro_can_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro_can_genlisp)
add_dependencies(pro_can_genlisp pro_can_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro_can_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pro_can
  "/home/nvidia/catkin_ws00/src/pro_can/msg/VCU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro_can
)
_generate_msg_nodejs(pro_can
  "/home/nvidia/catkin_ws00/src/pro_can/msg/control_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro_can
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pro_can
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro_can
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pro_can_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pro_can_generate_messages pro_can_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/pro_can/msg/VCU.msg" NAME_WE)
add_dependencies(pro_can_generate_messages_nodejs _pro_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/pro_can/msg/control_data.msg" NAME_WE)
add_dependencies(pro_can_generate_messages_nodejs _pro_can_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro_can_gennodejs)
add_dependencies(pro_can_gennodejs pro_can_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro_can_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pro_can
  "/home/nvidia/catkin_ws00/src/pro_can/msg/VCU.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro_can
)
_generate_msg_py(pro_can
  "/home/nvidia/catkin_ws00/src/pro_can/msg/control_data.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro_can
)

### Generating Services

### Generating Module File
_generate_module_py(pro_can
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro_can
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pro_can_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pro_can_generate_messages pro_can_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/pro_can/msg/VCU.msg" NAME_WE)
add_dependencies(pro_can_generate_messages_py _pro_can_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/pro_can/msg/control_data.msg" NAME_WE)
add_dependencies(pro_can_generate_messages_py _pro_can_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pro_can_genpy)
add_dependencies(pro_can_genpy pro_can_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pro_can_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro_can)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pro_can
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pro_can_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro_can)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pro_can
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pro_can_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro_can)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pro_can
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pro_can_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro_can)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pro_can
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pro_can_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro_can)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro_can\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pro_can
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pro_can_generate_messages_py std_msgs_generate_messages_py)
endif()
