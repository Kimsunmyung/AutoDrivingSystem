# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gps_c94_m8p: 1 messages, 0 services")

set(MSG_I_FLAGS "-Igps_c94_m8p:/home/nvidia/catkin_ws/src/gps_c94_m8p/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gps_c94_m8p_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nvidia/catkin_ws/src/gps_c94_m8p/msg/gps_data.msg" NAME_WE)
add_custom_target(_gps_c94_m8p_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gps_c94_m8p" "/home/nvidia/catkin_ws/src/gps_c94_m8p/msg/gps_data.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(gps_c94_m8p
  "/home/nvidia/catkin_ws/src/gps_c94_m8p/msg/gps_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gps_c94_m8p
)

### Generating Services

### Generating Module File
_generate_module_cpp(gps_c94_m8p
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gps_c94_m8p
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gps_c94_m8p_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gps_c94_m8p_generate_messages gps_c94_m8p_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/gps_c94_m8p/msg/gps_data.msg" NAME_WE)
add_dependencies(gps_c94_m8p_generate_messages_cpp _gps_c94_m8p_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gps_c94_m8p_gencpp)
add_dependencies(gps_c94_m8p_gencpp gps_c94_m8p_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gps_c94_m8p_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(gps_c94_m8p
  "/home/nvidia/catkin_ws/src/gps_c94_m8p/msg/gps_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gps_c94_m8p
)

### Generating Services

### Generating Module File
_generate_module_eus(gps_c94_m8p
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gps_c94_m8p
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gps_c94_m8p_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gps_c94_m8p_generate_messages gps_c94_m8p_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/gps_c94_m8p/msg/gps_data.msg" NAME_WE)
add_dependencies(gps_c94_m8p_generate_messages_eus _gps_c94_m8p_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gps_c94_m8p_geneus)
add_dependencies(gps_c94_m8p_geneus gps_c94_m8p_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gps_c94_m8p_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(gps_c94_m8p
  "/home/nvidia/catkin_ws/src/gps_c94_m8p/msg/gps_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gps_c94_m8p
)

### Generating Services

### Generating Module File
_generate_module_lisp(gps_c94_m8p
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gps_c94_m8p
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gps_c94_m8p_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gps_c94_m8p_generate_messages gps_c94_m8p_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/gps_c94_m8p/msg/gps_data.msg" NAME_WE)
add_dependencies(gps_c94_m8p_generate_messages_lisp _gps_c94_m8p_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gps_c94_m8p_genlisp)
add_dependencies(gps_c94_m8p_genlisp gps_c94_m8p_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gps_c94_m8p_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(gps_c94_m8p
  "/home/nvidia/catkin_ws/src/gps_c94_m8p/msg/gps_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gps_c94_m8p
)

### Generating Services

### Generating Module File
_generate_module_nodejs(gps_c94_m8p
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gps_c94_m8p
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gps_c94_m8p_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gps_c94_m8p_generate_messages gps_c94_m8p_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/gps_c94_m8p/msg/gps_data.msg" NAME_WE)
add_dependencies(gps_c94_m8p_generate_messages_nodejs _gps_c94_m8p_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gps_c94_m8p_gennodejs)
add_dependencies(gps_c94_m8p_gennodejs gps_c94_m8p_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gps_c94_m8p_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(gps_c94_m8p
  "/home/nvidia/catkin_ws/src/gps_c94_m8p/msg/gps_data.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gps_c94_m8p
)

### Generating Services

### Generating Module File
_generate_module_py(gps_c94_m8p
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gps_c94_m8p
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gps_c94_m8p_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gps_c94_m8p_generate_messages gps_c94_m8p_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nvidia/catkin_ws/src/gps_c94_m8p/msg/gps_data.msg" NAME_WE)
add_dependencies(gps_c94_m8p_generate_messages_py _gps_c94_m8p_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gps_c94_m8p_genpy)
add_dependencies(gps_c94_m8p_genpy gps_c94_m8p_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gps_c94_m8p_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gps_c94_m8p)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gps_c94_m8p
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gps_c94_m8p_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gps_c94_m8p)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gps_c94_m8p
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(gps_c94_m8p_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gps_c94_m8p)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gps_c94_m8p
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gps_c94_m8p_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gps_c94_m8p)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gps_c94_m8p
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(gps_c94_m8p_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gps_c94_m8p)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gps_c94_m8p\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gps_c94_m8p
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gps_c94_m8p_generate_messages_py std_msgs_generate_messages_py)
endif()
