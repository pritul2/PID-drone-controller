#include <ros_msg_io.h>
#include <ros_srv_io.h>
#include <v_repLib.h>

bool ros_srv_callback__std_srvs__Empty(std_srvs::Empty::Request& req, std_srvs::Empty::Response& res, ServiceServerProxy *proxy)
{
    bool ret = false;
    int stack = -1;

    try
    {
        stack = simCreateStackE();
        write__std_srvs__EmptyRequest(req, stack, &(proxy->wr_opt));
        simCallScriptFunctionExE(proxy->serviceCallback.scriptId, proxy->serviceCallback.name.c_str(), stack);
        read__std_srvs__EmptyResponse(stack, &res, &(proxy->rd_opt));
        simReleaseStackE(stack);
        stack = -1;
        return true;
    }
    catch(exception& ex)
    {
        if(stack != -1)
            simReleaseStack(stack); // don't throw
        std::string msg = "ros_srv_callback__std_srvs__Empty: ";
        msg += ex.what();
        simSetLastError(proxy->serviceCallback.name.c_str(), msg.c_str());
        return false;
    }
}

bool ros_srv_callback__plutodrone__PlutoPilot(plutodrone::PlutoPilot::Request& req, plutodrone::PlutoPilot::Response& res, ServiceServerProxy *proxy)
{
    bool ret = false;
    int stack = -1;

    try
    {
        stack = simCreateStackE();
        write__plutodrone__PlutoPilotRequest(req, stack, &(proxy->wr_opt));
        simCallScriptFunctionExE(proxy->serviceCallback.scriptId, proxy->serviceCallback.name.c_str(), stack);
        read__plutodrone__PlutoPilotResponse(stack, &res, &(proxy->rd_opt));
        simReleaseStackE(stack);
        stack = -1;
        return true;
    }
    catch(exception& ex)
    {
        if(stack != -1)
            simReleaseStack(stack); // don't throw
        std::string msg = "ros_srv_callback__plutodrone__PlutoPilot: ";
        msg += ex.what();
        simSetLastError(proxy->serviceCallback.name.c_str(), msg.c_str());
        return false;
    }
}

bool ros_srv_callback__roscpp__SetLoggerLevel(roscpp::SetLoggerLevel::Request& req, roscpp::SetLoggerLevel::Response& res, ServiceServerProxy *proxy)
{
    bool ret = false;
    int stack = -1;

    try
    {
        stack = simCreateStackE();
        write__roscpp__SetLoggerLevelRequest(req, stack, &(proxy->wr_opt));
        simCallScriptFunctionExE(proxy->serviceCallback.scriptId, proxy->serviceCallback.name.c_str(), stack);
        read__roscpp__SetLoggerLevelResponse(stack, &res, &(proxy->rd_opt));
        simReleaseStackE(stack);
        stack = -1;
        return true;
    }
    catch(exception& ex)
    {
        if(stack != -1)
            simReleaseStack(stack); // don't throw
        std::string msg = "ros_srv_callback__roscpp__SetLoggerLevel: ";
        msg += ex.what();
        simSetLastError(proxy->serviceCallback.name.c_str(), msg.c_str());
        return false;
    }
}

bool ros_srv_callback__std_srvs__Trigger(std_srvs::Trigger::Request& req, std_srvs::Trigger::Response& res, ServiceServerProxy *proxy)
{
    bool ret = false;
    int stack = -1;

    try
    {
        stack = simCreateStackE();
        write__std_srvs__TriggerRequest(req, stack, &(proxy->wr_opt));
        simCallScriptFunctionExE(proxy->serviceCallback.scriptId, proxy->serviceCallback.name.c_str(), stack);
        read__std_srvs__TriggerResponse(stack, &res, &(proxy->rd_opt));
        simReleaseStackE(stack);
        stack = -1;
        return true;
    }
    catch(exception& ex)
    {
        if(stack != -1)
            simReleaseStack(stack); // don't throw
        std::string msg = "ros_srv_callback__std_srvs__Trigger: ";
        msg += ex.what();
        simSetLastError(proxy->serviceCallback.name.c_str(), msg.c_str());
        return false;
    }
}

bool ros_srv_callback__roscpp__GetLoggers(roscpp::GetLoggers::Request& req, roscpp::GetLoggers::Response& res, ServiceServerProxy *proxy)
{
    bool ret = false;
    int stack = -1;

    try
    {
        stack = simCreateStackE();
        write__roscpp__GetLoggersRequest(req, stack, &(proxy->wr_opt));
        simCallScriptFunctionExE(proxy->serviceCallback.scriptId, proxy->serviceCallback.name.c_str(), stack);
        read__roscpp__GetLoggersResponse(stack, &res, &(proxy->rd_opt));
        simReleaseStackE(stack);
        stack = -1;
        return true;
    }
    catch(exception& ex)
    {
        if(stack != -1)
            simReleaseStack(stack); // don't throw
        std::string msg = "ros_srv_callback__roscpp__GetLoggers: ";
        msg += ex.what();
        simSetLastError(proxy->serviceCallback.name.c_str(), msg.c_str());
        return false;
    }
}

bool ros_srv_callback__roscpp__Empty(roscpp::Empty::Request& req, roscpp::Empty::Response& res, ServiceServerProxy *proxy)
{
    bool ret = false;
    int stack = -1;

    try
    {
        stack = simCreateStackE();
        write__roscpp__EmptyRequest(req, stack, &(proxy->wr_opt));
        simCallScriptFunctionExE(proxy->serviceCallback.scriptId, proxy->serviceCallback.name.c_str(), stack);
        read__roscpp__EmptyResponse(stack, &res, &(proxy->rd_opt));
        simReleaseStackE(stack);
        stack = -1;
        return true;
    }
    catch(exception& ex)
    {
        if(stack != -1)
            simReleaseStack(stack); // don't throw
        std::string msg = "ros_srv_callback__roscpp__Empty: ";
        msg += ex.what();
        simSetLastError(proxy->serviceCallback.name.c_str(), msg.c_str());
        return false;
    }
}

bool ros_srv_callback__dynamic_reconfigure__Reconfigure(dynamic_reconfigure::Reconfigure::Request& req, dynamic_reconfigure::Reconfigure::Response& res, ServiceServerProxy *proxy)
{
    bool ret = false;
    int stack = -1;

    try
    {
        stack = simCreateStackE();
        write__dynamic_reconfigure__ReconfigureRequest(req, stack, &(proxy->wr_opt));
        simCallScriptFunctionExE(proxy->serviceCallback.scriptId, proxy->serviceCallback.name.c_str(), stack);
        read__dynamic_reconfigure__ReconfigureResponse(stack, &res, &(proxy->rd_opt));
        simReleaseStackE(stack);
        stack = -1;
        return true;
    }
    catch(exception& ex)
    {
        if(stack != -1)
            simReleaseStack(stack); // don't throw
        std::string msg = "ros_srv_callback__dynamic_reconfigure__Reconfigure: ";
        msg += ex.what();
        simSetLastError(proxy->serviceCallback.name.c_str(), msg.c_str());
        return false;
    }
}

