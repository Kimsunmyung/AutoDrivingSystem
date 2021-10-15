# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cardriver: 2 messages, 0 services")

set(MSG_I_FLAGS "-Icardriver:/home/nvidia/catkin_ws/src/cardriver/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cardriver_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/catkin_ws/src/cardriver/msg/control_tx.msg" NAME_WE)
add_custom_target(_cardriver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cardriver" "/home/nvidia/catkin_ws/src/cardriver/msg/control_tx.msg" ""
)

get_filename_component(_filename "/home/nvidia/catkin_ws/src/cardriver/msg/control_rx.msg" NAME_WE)
add_custom_target(_cardriver_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cardriver" "/home/nvidia/catkin_ws/src/cardriver/msg/control_rx.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cardriver
  "/home/nvidia/catkin_ws/src/cardriver/msg/control_tx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cardriver
)
_generate_msg_cpp(cardriver
  "/home/nvidia/catkin_ws/src/cardriver/msg/control_rx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cardriver
)

### Generating Services

### Generating Module File
_generate_module_cpp(cardriver
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cardriver
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cardriver_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cardriver_generate_messages cardriver_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/cardriver/msg/control_tx.msg" NAME_WE)
add_dependencies(cardriver_generate_messages_cpp _cardriver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/cardriver/msg/control_rx.msg" NAME_WE)
add_dependencies(cardriver_generate_messages_cpp _cardriver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cardriver_gencpp)
add_dependencies(cardriver_gencpp cardriver_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cardriver_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cardriver
  "/home/nvidia/catkin_ws/src/cardriver/msg/control_tx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cardriver
)
_generate_msg_eus(cardriver
  "/home/nvidia/catkin_ws/src/cardriver/msg/control_rx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cardriver
)

### Generating Services

### Generating Module File
_generate_module_eus(cardriver
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cardriver
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cardriver_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cardriver_generate_messages cardriver_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/cardriver/msg/control_tx.msg" NAME_WE)
add_dependencies(cardriver_generate_messages_eus _cardriver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/cardriver/msg/control_rx.msg" NAME_WE)
add_dependencies(cardriver_generate_messages_eus _cardriver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cardriver_geneus)
add_dependencies(cardriver_geneus cardriver_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cardriver_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cardriver
  "/home/nvidia/catkin_ws/src/cardriver/msg/control_tx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cardriver
)
_generate_msg_lisp(cardriver
  "/home/nvidia/catkin_ws/src/cardriver/msg/control_rx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cardriver
)

### Generating Services

### Generating Module File
_generate_module_lisp(cardriver
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cardriver
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cardriver_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cardriver_generate_messages cardriver_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/cardriver/msg/control_tx.msg" NAME_WE)
add_dependencies(cardriver_generate_messages_lisp _cardriver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/cardriver/msg/control_rx.msg" NAME_WE)
add_dependencies(cardriver_generate_messages_lisp _cardriver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cardriver_genlisp)
add_dependencies(cardriver_genlisp cardriver_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cardriver_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cardriver
  "/home/nvidia/catkin_ws/src/cardriver/msg/control_tx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cardriver
)
_generate_msg_nodejs(cardriver
  "/home/nvidia/catkin_ws/src/cardriver/msg/control_rx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cardriver
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cardriver
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cardriver
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cardriver_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cardriver_generate_messages cardriver_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/cardriver/msg/control_tx.msg" NAME_WE)
add_dependencies(cardriver_generate_messages_nodejs _cardriver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/cardriver/msg/control_rx.msg" NAME_WE)
add_dependencies(cardriver_generate_messages_nodejs _cardriver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cardriver_gennodejs)
add_dependencies(cardriver_gennodejs cardriver_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cardriver_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cardriver
  "/home/nvidia/catkin_ws/src/cardriver/msg/control_tx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cardriver
)
_generate_msg_py(cardriver
  "/home/nvidia/catkin_ws/src/cardriver/msg/control_rx.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cardriver
)

### Generating Services

### Generating Module File
_generate_module_py(cardriver
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cardriver
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cardriver_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cardriver_generate_messages cardriver_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/cardriver/msg/control_tx.msg" NAME_WE)
add_dependencies(cardriver_generate_messages_py _cardriver_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nvidia/catkin_ws/src/cardriver/msg/control_rx.msg" NAME_WE)
add_dependencies(cardriver_generate_messages_py _cardriver_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cardriver_genpy)
add_dependencies(cardriver_genpy cardriver_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cardriver_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cardriver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cardriver
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cardriver_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cardriver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cardriver
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cardriver_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cardriver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cardriver
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cardriver_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cardriver)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cardriver
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cardriver_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cardriver)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cardriver\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cardriver
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cardriver_generate_messages_py std_msgs_generate_messages_py)
endif()
