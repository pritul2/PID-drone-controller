# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "plutodrone: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iplutodrone:/home/pritul/catkin_ws/src/pluto_drone/plutodrone/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(plutodrone_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/msg/PlutoMsg.msg" NAME_WE)
add_custom_target(_plutodrone_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "plutodrone" "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/msg/PlutoMsg.msg" ""
)

get_filename_component(_filename "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/srv/PlutoPilot.srv" NAME_WE)
add_custom_target(_plutodrone_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "plutodrone" "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/srv/PlutoPilot.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(plutodrone
  "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/msg/PlutoMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plutodrone
)

### Generating Services
_generate_srv_cpp(plutodrone
  "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/srv/PlutoPilot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plutodrone
)

### Generating Module File
_generate_module_cpp(plutodrone
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plutodrone
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(plutodrone_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(plutodrone_generate_messages plutodrone_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/msg/PlutoMsg.msg" NAME_WE)
add_dependencies(plutodrone_generate_messages_cpp _plutodrone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/srv/PlutoPilot.srv" NAME_WE)
add_dependencies(plutodrone_generate_messages_cpp _plutodrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plutodrone_gencpp)
add_dependencies(plutodrone_gencpp plutodrone_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plutodrone_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(plutodrone
  "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/msg/PlutoMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plutodrone
)

### Generating Services
_generate_srv_eus(plutodrone
  "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/srv/PlutoPilot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plutodrone
)

### Generating Module File
_generate_module_eus(plutodrone
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plutodrone
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(plutodrone_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(plutodrone_generate_messages plutodrone_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/msg/PlutoMsg.msg" NAME_WE)
add_dependencies(plutodrone_generate_messages_eus _plutodrone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/srv/PlutoPilot.srv" NAME_WE)
add_dependencies(plutodrone_generate_messages_eus _plutodrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plutodrone_geneus)
add_dependencies(plutodrone_geneus plutodrone_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plutodrone_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(plutodrone
  "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/msg/PlutoMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plutodrone
)

### Generating Services
_generate_srv_lisp(plutodrone
  "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/srv/PlutoPilot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plutodrone
)

### Generating Module File
_generate_module_lisp(plutodrone
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plutodrone
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(plutodrone_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(plutodrone_generate_messages plutodrone_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/msg/PlutoMsg.msg" NAME_WE)
add_dependencies(plutodrone_generate_messages_lisp _plutodrone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/srv/PlutoPilot.srv" NAME_WE)
add_dependencies(plutodrone_generate_messages_lisp _plutodrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plutodrone_genlisp)
add_dependencies(plutodrone_genlisp plutodrone_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plutodrone_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(plutodrone
  "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/msg/PlutoMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plutodrone
)

### Generating Services
_generate_srv_nodejs(plutodrone
  "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/srv/PlutoPilot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plutodrone
)

### Generating Module File
_generate_module_nodejs(plutodrone
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plutodrone
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(plutodrone_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(plutodrone_generate_messages plutodrone_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/msg/PlutoMsg.msg" NAME_WE)
add_dependencies(plutodrone_generate_messages_nodejs _plutodrone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/srv/PlutoPilot.srv" NAME_WE)
add_dependencies(plutodrone_generate_messages_nodejs _plutodrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plutodrone_gennodejs)
add_dependencies(plutodrone_gennodejs plutodrone_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plutodrone_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(plutodrone
  "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/msg/PlutoMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plutodrone
)

### Generating Services
_generate_srv_py(plutodrone
  "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/srv/PlutoPilot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plutodrone
)

### Generating Module File
_generate_module_py(plutodrone
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plutodrone
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(plutodrone_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(plutodrone_generate_messages plutodrone_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/msg/PlutoMsg.msg" NAME_WE)
add_dependencies(plutodrone_generate_messages_py _plutodrone_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pritul/catkin_ws/src/pluto_drone/plutodrone/srv/PlutoPilot.srv" NAME_WE)
add_dependencies(plutodrone_generate_messages_py _plutodrone_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(plutodrone_genpy)
add_dependencies(plutodrone_genpy plutodrone_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS plutodrone_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plutodrone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/plutodrone
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(plutodrone_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plutodrone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/plutodrone
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(plutodrone_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plutodrone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/plutodrone
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(plutodrone_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plutodrone)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/plutodrone
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(plutodrone_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plutodrone)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plutodrone\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/plutodrone
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(plutodrone_generate_messages_py std_msgs_generate_messages_py)
endif()
