# Install script for directory: /home/pritul/catkin_ws/src/brics_actuator

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/pritul/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/brics_actuator/msg" TYPE FILE FILES
    "/home/pritul/catkin_ws/src/brics_actuator/msg/CartesianPose.msg"
    "/home/pritul/catkin_ws/src/brics_actuator/msg/CartesianTwist.msg"
    "/home/pritul/catkin_ws/src/brics_actuator/msg/CartesianVector.msg"
    "/home/pritul/catkin_ws/src/brics_actuator/msg/CartesianWrench.msg"
    "/home/pritul/catkin_ws/src/brics_actuator/msg/JointAccelerations.msg"
    "/home/pritul/catkin_ws/src/brics_actuator/msg/JointConstraint.msg"
    "/home/pritul/catkin_ws/src/brics_actuator/msg/JointImpedances.msg"
    "/home/pritul/catkin_ws/src/brics_actuator/msg/JointPositions.msg"
    "/home/pritul/catkin_ws/src/brics_actuator/msg/JointTorques.msg"
    "/home/pritul/catkin_ws/src/brics_actuator/msg/JointValue.msg"
    "/home/pritul/catkin_ws/src/brics_actuator/msg/JointVelocities.msg"
    "/home/pritul/catkin_ws/src/brics_actuator/msg/Poison.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/brics_actuator/cmake" TYPE FILE FILES "/home/pritul/catkin_ws/build/brics_actuator/catkin_generated/installspace/brics_actuator-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/pritul/catkin_ws/devel/include/brics_actuator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/pritul/catkin_ws/devel/share/roseus/ros/brics_actuator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/pritul/catkin_ws/devel/share/common-lisp/ros/brics_actuator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/pritul/catkin_ws/devel/share/gennodejs/ros/brics_actuator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/pritul/catkin_ws/devel/lib/python2.7/dist-packages/brics_actuator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/pritul/catkin_ws/devel/lib/python2.7/dist-packages/brics_actuator")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/pritul/catkin_ws/build/brics_actuator/catkin_generated/installspace/brics_actuator.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/brics_actuator/cmake" TYPE FILE FILES "/home/pritul/catkin_ws/build/brics_actuator/catkin_generated/installspace/brics_actuator-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/brics_actuator/cmake" TYPE FILE FILES
    "/home/pritul/catkin_ws/build/brics_actuator/catkin_generated/installspace/brics_actuatorConfig.cmake"
    "/home/pritul/catkin_ws/build/brics_actuator/catkin_generated/installspace/brics_actuatorConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/brics_actuator" TYPE FILE FILES "/home/pritul/catkin_ws/src/brics_actuator/package.xml")
endif()

