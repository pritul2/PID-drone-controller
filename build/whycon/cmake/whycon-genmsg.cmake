# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "whycon: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iwhycon:/home/pritul/catkin_ws/src/whycon/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(whycon_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pritul/catkin_ws/src/whycon/msg/Projection.msg" NAME_WE)
add_custom_target(_whycon_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "whycon" "/home/pritul/catkin_ws/src/whycon/msg/Projection.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(whycon
  "/home/pritul/catkin_ws/src/whycon/msg/Projection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whycon
)

### Generating Services

### Generating Module File
_generate_module_cpp(whycon
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whycon
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(whycon_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(whycon_generate_messages whycon_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pritul/catkin_ws/src/whycon/msg/Projection.msg" NAME_WE)
add_dependencies(whycon_generate_messages_cpp _whycon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whycon_gencpp)
add_dependencies(whycon_gencpp whycon_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whycon_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(whycon
  "/home/pritul/catkin_ws/src/whycon/msg/Projection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whycon
)

### Generating Services

### Generating Module File
_generate_module_eus(whycon
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whycon
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(whycon_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(whycon_generate_messages whycon_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pritul/catkin_ws/src/whycon/msg/Projection.msg" NAME_WE)
add_dependencies(whycon_generate_messages_eus _whycon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whycon_geneus)
add_dependencies(whycon_geneus whycon_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whycon_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(whycon
  "/home/pritul/catkin_ws/src/whycon/msg/Projection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whycon
)

### Generating Services

### Generating Module File
_generate_module_lisp(whycon
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whycon
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(whycon_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(whycon_generate_messages whycon_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pritul/catkin_ws/src/whycon/msg/Projection.msg" NAME_WE)
add_dependencies(whycon_generate_messages_lisp _whycon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whycon_genlisp)
add_dependencies(whycon_genlisp whycon_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whycon_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(whycon
  "/home/pritul/catkin_ws/src/whycon/msg/Projection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whycon
)

### Generating Services

### Generating Module File
_generate_module_nodejs(whycon
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whycon
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(whycon_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(whycon_generate_messages whycon_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pritul/catkin_ws/src/whycon/msg/Projection.msg" NAME_WE)
add_dependencies(whycon_generate_messages_nodejs _whycon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whycon_gennodejs)
add_dependencies(whycon_gennodejs whycon_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whycon_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(whycon
  "/home/pritul/catkin_ws/src/whycon/msg/Projection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whycon
)

### Generating Services

### Generating Module File
_generate_module_py(whycon
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whycon
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(whycon_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(whycon_generate_messages whycon_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pritul/catkin_ws/src/whycon/msg/Projection.msg" NAME_WE)
add_dependencies(whycon_generate_messages_py _whycon_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(whycon_genpy)
add_dependencies(whycon_genpy whycon_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS whycon_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whycon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/whycon
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(whycon_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whycon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/whycon
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(whycon_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whycon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/whycon
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(whycon_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whycon)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/whycon
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(whycon_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whycon)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whycon\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/whycon
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(whycon_generate_messages_py geometry_msgs_generate_messages_py)
endif()
