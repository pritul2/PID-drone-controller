#ifndef VREP_ROS_PLUGIN__ROS_SRV_IO__H
#define VREP_ROS_PLUGIN__ROS_SRV_IO__H

#include <ros_msg_builtin_io.h>
#include <ros/ros.h>
#include <vrep_ros_interface.h>

#include <std_srvs/Empty.h>
#include <plutodrone/PlutoPilot.h>
#include <roscpp/SetLoggerLevel.h>
#include <std_srvs/Trigger.h>
#include <roscpp/GetLoggers.h>
#include <roscpp/Empty.h>
#include <dynamic_reconfigure/Reconfigure.h>

bool ros_srv_callback__std_srvs__Empty(std_srvs::Empty::Request& req, std_srvs::Empty::Response& res, ServiceServerProxy *proxy);
bool ros_srv_callback__plutodrone__PlutoPilot(plutodrone::PlutoPilot::Request& req, plutodrone::PlutoPilot::Response& res, ServiceServerProxy *proxy);
bool ros_srv_callback__roscpp__SetLoggerLevel(roscpp::SetLoggerLevel::Request& req, roscpp::SetLoggerLevel::Response& res, ServiceServerProxy *proxy);
bool ros_srv_callback__std_srvs__Trigger(std_srvs::Trigger::Request& req, std_srvs::Trigger::Response& res, ServiceServerProxy *proxy);
bool ros_srv_callback__roscpp__GetLoggers(roscpp::GetLoggers::Request& req, roscpp::GetLoggers::Response& res, ServiceServerProxy *proxy);
bool ros_srv_callback__roscpp__Empty(roscpp::Empty::Request& req, roscpp::Empty::Response& res, ServiceServerProxy *proxy);
bool ros_srv_callback__dynamic_reconfigure__Reconfigure(dynamic_reconfigure::Reconfigure::Request& req, dynamic_reconfigure::Reconfigure::Response& res, ServiceServerProxy *proxy);

#endif // VREP_ROS_PLUGIN__ROS_SRV_IO__H
