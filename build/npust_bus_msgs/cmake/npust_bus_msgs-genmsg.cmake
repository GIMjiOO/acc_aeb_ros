# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "npust_bus_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Inpust_bus_msgs:/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(npust_bus_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg" NAME_WE)
add_custom_target(_npust_bus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "npust_bus_msgs" "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg" ""
)

get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObjectArray.msg" NAME_WE)
add_custom_target(_npust_bus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "npust_bus_msgs" "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObjectArray.msg" "npust_bus_msgs/TrackedObject"
)

get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/LanePolynomial.msg" NAME_WE)
add_custom_target(_npust_bus_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "npust_bus_msgs" "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/LanePolynomial.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/npust_bus_msgs
)
_generate_msg_cpp(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/npust_bus_msgs
)
_generate_msg_cpp(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/LanePolynomial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/npust_bus_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(npust_bus_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/npust_bus_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(npust_bus_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(npust_bus_msgs_generate_messages npust_bus_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_cpp _npust_bus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObjectArray.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_cpp _npust_bus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/LanePolynomial.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_cpp _npust_bus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(npust_bus_msgs_gencpp)
add_dependencies(npust_bus_msgs_gencpp npust_bus_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS npust_bus_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/npust_bus_msgs
)
_generate_msg_eus(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/npust_bus_msgs
)
_generate_msg_eus(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/LanePolynomial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/npust_bus_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(npust_bus_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/npust_bus_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(npust_bus_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(npust_bus_msgs_generate_messages npust_bus_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_eus _npust_bus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObjectArray.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_eus _npust_bus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/LanePolynomial.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_eus _npust_bus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(npust_bus_msgs_geneus)
add_dependencies(npust_bus_msgs_geneus npust_bus_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS npust_bus_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/npust_bus_msgs
)
_generate_msg_lisp(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/npust_bus_msgs
)
_generate_msg_lisp(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/LanePolynomial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/npust_bus_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(npust_bus_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/npust_bus_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(npust_bus_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(npust_bus_msgs_generate_messages npust_bus_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_lisp _npust_bus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObjectArray.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_lisp _npust_bus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/LanePolynomial.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_lisp _npust_bus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(npust_bus_msgs_genlisp)
add_dependencies(npust_bus_msgs_genlisp npust_bus_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS npust_bus_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/npust_bus_msgs
)
_generate_msg_nodejs(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/npust_bus_msgs
)
_generate_msg_nodejs(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/LanePolynomial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/npust_bus_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(npust_bus_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/npust_bus_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(npust_bus_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(npust_bus_msgs_generate_messages npust_bus_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_nodejs _npust_bus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObjectArray.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_nodejs _npust_bus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/LanePolynomial.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_nodejs _npust_bus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(npust_bus_msgs_gennodejs)
add_dependencies(npust_bus_msgs_gennodejs npust_bus_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS npust_bus_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/npust_bus_msgs
)
_generate_msg_py(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObjectArray.msg"
  "${MSG_I_FLAGS}"
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/npust_bus_msgs
)
_generate_msg_py(npust_bus_msgs
  "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/LanePolynomial.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/npust_bus_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(npust_bus_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/npust_bus_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(npust_bus_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(npust_bus_msgs_generate_messages npust_bus_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObject.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_py _npust_bus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/TrackedObjectArray.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_py _npust_bus_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws00/src/npust_bus_msgs/msg/LanePolynomial.msg" NAME_WE)
add_dependencies(npust_bus_msgs_generate_messages_py _npust_bus_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(npust_bus_msgs_genpy)
add_dependencies(npust_bus_msgs_genpy npust_bus_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS npust_bus_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/npust_bus_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/npust_bus_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/npust_bus_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/npust_bus_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/npust_bus_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/npust_bus_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/npust_bus_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/npust_bus_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/npust_bus_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/npust_bus_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/npust_bus_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
