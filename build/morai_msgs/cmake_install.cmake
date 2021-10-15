# Install script for directory: /home/nvidia/catkin_ws/src/morai_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nvidia/catkin_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/msg" TYPE FILE FILES
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/CtrlCmd.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/EgoVehiclePosition.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/EgoVehicleStatus.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/EgoVehicleVelocity.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/FactoryAddress.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/GPSMessage.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/GuideData.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/ObjectInfo.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/ScenarioLoad.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/SVehicleStatus.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/TrafficLight.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/VehicleCommand.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/VelPlot.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/ERP42Info.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/GetTrafficLightStatus.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/SetTrafficLight.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/IntersectionControl.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/IntersectionStatus.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/CollisionData.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/MultiEgoSetting.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/IntscnTL.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/SensorPosControl.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/GenericVehicleControl.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/SaveSensorData.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/MoraiTimestamp.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/GhostMessage.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/Lamps.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/MoraiTLInfo.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/MoraiSimProcHandle.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/MoraiSimProcStatus.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/MoraiSrvResponse.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/MoraiTLIndex.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/RadarTrack.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/RadarTracks.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/Mgeo.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/MgeoLink.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/MgeoLinkList.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/MgeoNode.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/MgeoNodeList.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/EventInfo.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/ReplayInfo.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/ObjectStatus.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/ObjectStatusList.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/VehicleSpecIndex.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/VehicleSpec.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/VehicleSpecDetail.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/VehicleSpecDetails.msg"
    "/home/nvidia/catkin_ws/src/morai_msgs/msg/FTGdata.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/srv" TYPE FILE FILES
    "/home/nvidia/catkin_ws/src/morai_msgs/srv/MoraiScenarioLoadSrv.srv"
    "/home/nvidia/catkin_ws/src/morai_msgs/srv/MoraiSimProcSrv.srv"
    "/home/nvidia/catkin_ws/src/morai_msgs/srv/MoraiTLInfoSrv.srv"
    "/home/nvidia/catkin_ws/src/morai_msgs/srv/MoraiVehicleSpecSrv.srv"
    "/home/nvidia/catkin_ws/src/morai_msgs/srv/MoraiEventCmdSrv.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/cmake" TYPE FILE FILES "/home/nvidia/catkin_ws/build/morai_msgs/catkin_generated/installspace/morai_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/include/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/share/roseus/ros/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/share/common-lisp/ros/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/share/gennodejs/ros/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/nvidia/catkin_ws/devel/lib/python2.7/dist-packages/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/nvidia/catkin_ws/devel/lib/python2.7/dist-packages/morai_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nvidia/catkin_ws/build/morai_msgs/catkin_generated/installspace/morai_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/cmake" TYPE FILE FILES "/home/nvidia/catkin_ws/build/morai_msgs/catkin_generated/installspace/morai_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs/cmake" TYPE FILE FILES
    "/home/nvidia/catkin_ws/build/morai_msgs/catkin_generated/installspace/morai_msgsConfig.cmake"
    "/home/nvidia/catkin_ws/build/morai_msgs/catkin_generated/installspace/morai_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/morai_msgs" TYPE FILE FILES "/home/nvidia/catkin_ws/src/morai_msgs/package.xml")
endif()

