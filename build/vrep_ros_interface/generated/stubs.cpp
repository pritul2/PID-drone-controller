#include "stubs.h"

#include <cstdlib>
#include <iostream>

#include <boost/lexical_cast.hpp>
#include <boost/format.hpp>

#define CATCH_AND_RETHROW(prefix)   \
    catch(std::exception &ex)       \
    {                               \
        std::string msg = prefix;   \
        msg += ex.what();           \
        throw exception(msg);       \
    }                               \
    catch(std::string& s)           \
    {                               \
        std::string msg = prefix;   \
        msg += s;                   \
        throw exception(msg);       \
    }                               \
    catch(int& n)                   \
    {                               \
        std::stringstream msg;      \
        msg << prefix;              \
        msg << "error #" << n;      \
        throw exception(msg.str()); \
    }

bool isDebugStubsEnabled()
{
    static int enabled = -1;

    if(enabled == 0) return false;
    if(enabled == 1) return true;

    char *val = std::getenv("DEBUG_STUBS");
    if(!val) enabled = 0;
    else enabled = boost::lexical_cast<int>(val) != 0 ? 1 : 0;
    return enabled;
}

simInt simRegisterScriptCallbackFunctionE(const simChar *funcNameAtPluginName, const simChar *callTips, simVoid (*callBack)(struct SScriptCallBack *cb))
{
    simInt ret = simRegisterScriptCallbackFunction(funcNameAtPluginName, callTips, callBack);
    if(ret == 0)
    {
        std::cout << "Plugin 'RosInterface': warning: replaced function '" << funcNameAtPluginName << "'" << std::endl;
    }
    if(ret == -1)
        throw exception("simRegisterScriptCallbackFunction: error");
    return ret;
}

simInt simRegisterScriptVariableE(const simChar *varName, const simChar *varValue, simInt stackID)
{
    simInt ret = simRegisterScriptVariable(varName, varValue, stackID);
    if(ret == 0)
    {
        std::cout << "Plugin 'RosInterface': warning: replaced variable '" << varName << "'" << std::endl;
    }
    if(ret == -1)
        throw exception("simRegisterScriptVariable: error");
    return ret;
}

simVoid simCallScriptFunctionExE(simInt scriptHandleOrType,const simChar* functionNameAtScriptName,simInt stackId)
{
    if(simCallScriptFunctionEx(scriptHandleOrType, functionNameAtScriptName, stackId) == -1)
        throw exception("simCallScriptFunctionEx: error");
}

simInt simCreateStackE()
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simCreateStack()" << std::endl;
    }
#endif // DEBUG

    simInt ret = simCreateStack();
    if(ret == -1)
        throw exception("simCreateStack: error");
    return ret;
}

simVoid simReleaseStackE(simInt stackHandle)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simReleaseStack(stack)" << std::endl;
    }
#endif // DEBUG

    if(simReleaseStack(stackHandle) != 1)
        throw exception("simReleaseStack: error");
}

simInt simCopyStackE(simInt stackHandle)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simCopyStack(stack)" << std::endl;
    }
#endif // DEBUG

    simInt ret = simCopyStack(stackHandle);
    if(ret == -1)
        throw exception("simCopyStack: error");
    return ret;
}

simVoid simPushNullOntoStackE(simInt stackHandle)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simPushNullOntoStack(stack)" << std::endl;
    }
#endif // DEBUG

    if(simPushNullOntoStack(stackHandle) == -1)
        throw exception("simPushNullOntoStack: error");
}

simVoid simPushBoolOntoStackE(simInt stackHandle, simBool value)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simPushBoolOntoStack(stack, " << value << ")" << std::endl;
    }
#endif // DEBUG

    if(simPushBoolOntoStack(stackHandle, value) == -1)
        throw exception("simPushBoolOntoStack: error");
}

simVoid simPushInt32OntoStackE(simInt stackHandle, simInt value)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simPushInt32OntoStack(stack, " << value << ")" << std::endl;
    }
#endif // DEBUG

    if(simPushInt32OntoStack(stackHandle, value) == -1)
        throw exception("simPushInt32OntoStack: error");
}

simVoid simPushFloatOntoStackE(simInt stackHandle, simFloat value)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simPushFloatOntoStack(stack, " << value << ")" << std::endl;
    }
#endif // DEBUG

    if(simPushFloatOntoStack(stackHandle, value) == -1)
        throw exception("simPushFloatOntoStack: error");
}

simVoid simPushDoubleOntoStackE(simInt stackHandle, simDouble value)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simPushDoubleOntoStack(stack, " << value << ")" << std::endl;
    }
#endif // DEBUG

    if(simPushDoubleOntoStack(stackHandle, value) == -1)
        throw exception("simPushDoubleOntoStack: error");
}

simVoid simPushStringOntoStackE(simInt stackHandle, const simChar *value, simInt stringSize)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simPushStringOntoStack(stack, \"" << value << "\" [" << stringSize << "])" << std::endl;
    }
#endif // DEBUG

    if(simPushStringOntoStack(stackHandle, value, stringSize) == -1)
        throw exception("simPushStringOntoStack: error");
}

simVoid simPushUInt8TableOntoStackE(simInt stackHandle, const simUChar *values, simInt valueCnt)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simPushUInt8TableOntoStack(stack, <" << valueCnt << " values>)" << std::endl;
    }
#endif // DEBUG

    if(simPushUInt8TableOntoStack(stackHandle, values, valueCnt) == -1)
        throw exception("simPushUInt8TableOntoStack: error");
}

simVoid simPushInt32TableOntoStackE(simInt stackHandle, const simInt *values, simInt valueCnt)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simPushInt32TableOntoStack(stack, <" << valueCnt << " values>)" << std::endl;
    }
#endif // DEBUG

    if(simPushInt32TableOntoStack(stackHandle, values, valueCnt) == -1)
        throw exception("simPushInt32TableOntoStack: error");
}

simVoid simPushFloatTableOntoStackE(simInt stackHandle, const simFloat *values, simInt valueCnt)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simPushFloatTableOntoStack(stack, <" << valueCnt << " values>)" << std::endl;
    }
#endif // DEBUG

    if(simPushFloatTableOntoStack(stackHandle, values, valueCnt) == -1)
        throw exception("simPushFloatTableOntoStack: error");
}

simVoid simPushDoubleTableOntoStackE(simInt stackHandle, const simDouble *values, simInt valueCnt)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simPushDoubleTableOntoStack(stack, <" << valueCnt << " values>)" << std::endl;
    }
#endif // DEBUG

    if(simPushDoubleTableOntoStack(stackHandle, values, valueCnt) == -1)
        throw exception("simPushDoubleTableOntoStack: error");
}

simVoid simPushTableOntoStackE(simInt stackHandle)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simPushTableOntoStack(stack)" << std::endl;
    }
#endif // DEBUG

    if(simPushTableOntoStack(stackHandle) == -1)
        throw exception("simPushTableOntoStack: error");
}

simVoid simInsertDataIntoStackTableE(simInt stackHandle)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simInsertDataIntoStackTable(stack)" << std::endl;
    }
#endif // DEBUG

    if(simInsertDataIntoStackTable(stackHandle) == -1)
        throw exception("simInsertDataIntoStackTable: error");
}

simInt simGetStackSizeE(simInt stackHandle)
{
    simInt ret = simGetStackSize(stackHandle);

#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simGetStackSize(stack) -> " << ret << std::endl;
    }
#endif // DEBUG

    if(ret == -1)
        throw exception("simGetStackSize: error");
    return ret;
}

simInt simPopStackItemE(simInt stackHandle, simInt count)
{
    simInt ret = simPopStackItem(stackHandle, count);

#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simPopStackItem(stack, " << count << ") -> " << ret << std::endl;
    }
#endif // DEBUG

    if(ret == -1)
        throw exception("simPopStackItem: error");
    return ret;
}

simVoid simMoveStackItemToTopE(simInt stackHandle, simInt cIndex)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simMoveStackItemToTop(stack, " << cIndex << ")" << std::endl;
    }
#endif // DEBUG

    if(simMoveStackItemToTop(stackHandle, cIndex) == -1)
        throw exception("simMoveStackItemToTop: error");
}

simInt simIsStackValueNullE(simInt stackHandle)
{
    simInt ret = simIsStackValueNull(stackHandle);
    if(ret == -1)
        throw exception("simIsStackValueNull: error");
    return ret;
}

simInt simGetStackBoolValueE(simInt stackHandle, simBool *boolValue)
{
    simInt ret = simGetStackBoolValue(stackHandle, boolValue);
    if(ret == -1)
        throw exception("simGetStackBoolValue: error");
    return ret;
}

simInt simGetStackInt32ValueE(simInt stackHandle, simInt *numberValue)
{
    simInt ret = simGetStackInt32Value(stackHandle, numberValue);
    if(ret == -1)
        throw exception("simGetStackInt32Value: error");
    return ret;
}

simInt simGetStackFloatValueE(simInt stackHandle, simFloat *numberValue)
{
    simInt ret = simGetStackFloatValue(stackHandle, numberValue);
    if(ret == -1)
        throw exception("simGetStackFloatValue: error");
    return ret;
}

simInt simGetStackDoubleValueE(simInt stackHandle, simDouble *numberValue)
{
    simInt ret = simGetStackDoubleValue(stackHandle, numberValue);
    if(ret == -1)
        throw exception("simGetStackDoubleValue: error");
    return ret;
}

simChar* simGetStackStringValueE(simInt stackHandle, simInt *stringSize)
{
    simChar *ret = simGetStackStringValue(stackHandle, stringSize);
    // if stringSize is NULL, we cannot distinguish error (-1) from type error (0)
    if(ret == NULL && stringSize && *stringSize == -1)
        throw exception("simGetStackStringValue: error");
    return ret;
}

simInt simGetStackTableInfoE(simInt stackHandle, simInt infoType)
{
    simInt ret = simGetStackTableInfo(stackHandle, infoType);

#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simGetStackTableInfo(stack, " << infoType << ") -> " << ret << std::endl;
    }
#endif // DEBUG

    if(ret == -1)
        throw exception("simGetStackTableInfo: error");
    return ret;
}

simInt simGetStackUInt8TableE(simInt stackHandle, simUChar *array, simInt count)
{
    simInt ret = simGetStackUInt8Table(stackHandle, array, count);
    if(ret == -1)
        throw exception("simGetStackUInt8Table: error");
    return ret;
}

simInt simGetStackInt32TableE(simInt stackHandle, simInt *array, simInt count)
{
    simInt ret = simGetStackInt32Table(stackHandle, array, count);
    if(ret == -1)
        throw exception("simGetStackInt32Table: error");
    return ret;
}

simInt simGetStackFloatTableE(simInt stackHandle, simFloat *array, simInt count)
{
    simInt ret = simGetStackFloatTable(stackHandle, array, count);
    if(ret == -1)
        throw exception("simGetStackFloatTable: error");
    return ret;
}

simInt simGetStackDoubleTableE(simInt stackHandle, simDouble *array, simInt count)
{
    simInt ret = simGetStackDoubleTable(stackHandle, array, count);
    if(ret == -1)
        throw exception("simGetStackDoubleTable: error");
    return ret;
}

simVoid simUnfoldStackTableE(simInt stackHandle)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: simUnfoldStackTable(stack)" << std::endl;
    }
#endif // DEBUG

    if(simUnfoldStackTable(stackHandle) == -1)
        throw exception("simUnfoldStackTable: error");
}

simInt simGetInt32ParameterE(simInt parameter)
{
    simInt ret;
    if(simGetInt32Parameter(parameter, &ret) == -1)
        throw exception("simGetInt32Parameter: error");
    return ret;
}

simChar* simCreateBufferE(simInt size)
{
    simChar *ret = simCreateBuffer(size);
    if(ret == NULL)
        throw exception("simCreateBuffer: error");
    return ret;
}

simVoid simReleaseBufferE(simChar *buffer)
{
    if(simReleaseBuffer(buffer) == -1)
        throw exception("simReleaseBuffer: error");
}

void read__bool(int stack, bool *value)
{
    simBool v;
    if(simGetStackBoolValueE(stack, &v) == 1)
    {
        *value = v;
        simPopStackItemE(stack, 1);
    }
    else
    {
        throw exception("expected bool");
    }
}

void read__int(int stack, int *value)
{
    int v;
    if(simGetStackInt32ValueE(stack, &v) == 1)
    {
        *value = v;
        simPopStackItemE(stack, 1);
    }
    else
    {
        throw exception("expected int");
    }
}

void read__float(int stack, float *value)
{
    simFloat v;
    if(simGetStackFloatValueE(stack, &v) == 1)
    {
        *value = v;
        simPopStackItemE(stack, 1);
    }
    else
    {
        throw exception("expected float");
    }
}

void read__double(int stack, double *value)
{
    simDouble v;
    if(simGetStackDoubleValueE(stack, &v) == 1)
    {
        *value = v;
        simPopStackItemE(stack, 1);
    }
    else
    {
        throw exception("expected double");
    }
}

void read__std__string(int stack, std::string *value)
{
    simChar *str;
    simInt strSize;
    if((str = simGetStackStringValueE(stack, &strSize)) != NULL && strSize >= 0)
    {
        *value = std::string(str, strSize);
        simPopStackItemE(stack, 1);
        simReleaseBufferE(str);
    }
    else
    {
        throw exception("expected string");
    }
}

void write__bool(bool value, int stack)
{
    simBool v = value;
    simPushBoolOntoStackE(stack, v);
}

void write__int(int value, int stack)
{
    simInt v = value;
    simPushInt32OntoStackE(stack, v);
}

void write__float(float value, int stack)
{
    simFloat v = value;
    simPushFloatOntoStackE(stack, v);
}

void write__double(double value, int stack)
{
    simDouble v = value;
    simPushDoubleOntoStackE(stack, v);
}

void write__std__string(std::string value, int stack)
{
    const simChar *v = value.c_str();
    simPushStringOntoStackE(stack, v, value.length());
}

bool registerScriptStuff()
{
    try
    {
        {
            simInt vrepVer = 0, vrepRev = 0, vrepMinVer = 30400, vrepMinRev = 9;
            simGetIntegerParameter(sim_intparam_program_version, &vrepVer);
            simGetIntegerParameter(sim_intparam_program_revision, &vrepRev);
            if(vrepVer < vrepMinVer || (vrepVer == vrepMinVer && vrepRev < vrepMinRev))
            {
                std::stringstream ss;
                ss << "this plugin requires at least V-REP " << (vrepMinVer / 10000) << "." << (vrepMinVer / 100 % 100) << "." << (vrepMinVer % 100) << " rev" << vrepMinRev;
                throw exception(ss.str());
            }
        }
        try
        {
            simRegisterScriptVariableE("simROS", "{}", 0);
            simRegisterScriptVariableE("simROS", "require('simExtRosInterface')", 0);

            // register new-style short-version varables
            // register new-style short-version commands
            simRegisterScriptCallbackFunctionE("simROS.subscribe@RosInterface", "number subscriberHandle=simROS.subscribe(string topicName,string topicType,string topicCallback,number queueSize=1)\n\nSubscribe to a topic.", subscribe_callback);
            simRegisterScriptCallbackFunctionE("simROS.shutdownSubscriber@RosInterface", "simROS.shutdownSubscriber(number subscriberHandle)\n\nUnsubscribe the callback associated with this subscriber.", shutdownSubscriber_callback);
            simRegisterScriptCallbackFunctionE("simROS.subscriberTreatUInt8ArrayAsString@RosInterface", "simROS.subscriberTreatUInt8ArrayAsString(number subscriberHandle)\n\nAfter calling this function, this subscriber will treat uint8 arrays as string. Using strings should be in general much faster that using int arrays in Lua.", subscriberTreatUInt8ArrayAsString_callback);
            simRegisterScriptCallbackFunctionE("simROS.advertise@RosInterface", "number publisherHandle=simROS.advertise(string topicName,string topicType,number queueSize=1,bool latch=false)\n\nAdvertise a topic and create a topic publisher.", advertise_callback);
            simRegisterScriptCallbackFunctionE("simROS.shutdownPublisher@RosInterface", "simROS.shutdownPublisher(number publisherHandle)\n\nShutdown the advertisement associated with this publisher.", shutdownPublisher_callback);
            simRegisterScriptCallbackFunctionE("simROS.publisherTreatUInt8ArrayAsString@RosInterface", "simROS.publisherTreatUInt8ArrayAsString(number publisherHandle)\n\nAfter calling this function, this publisher will treat uint8 arrays as string. Using strings should be in general much faster that using int arrays in Lua.", publisherTreatUInt8ArrayAsString_callback);
            simRegisterScriptCallbackFunctionE("simROS.publish@RosInterface", "simROS.publish(number publisherHandle,table message)\n\nPublish a message on the topic associated with this publisher.", publish_callback);
            simRegisterScriptCallbackFunctionE("simROS.serviceClient@RosInterface", "number serviceClientHandle=simROS.serviceClient(string serviceName,string serviceType)\n\nCreate a service client.", serviceClient_callback);
            simRegisterScriptCallbackFunctionE("simROS.shutdownServiceClient@RosInterface", "simROS.shutdownServiceClient(number serviceClientHandle)\n\nShutdown the service client.", shutdownServiceClient_callback);
            simRegisterScriptCallbackFunctionE("simROS.serviceClientTreatUInt8ArrayAsString@RosInterface", "simROS.serviceClientTreatUInt8ArrayAsString(number serviceClientHandle)\n\nAfter calling this function, this service client will treat uint8 arrays as string. Using strings should be in general much faster that using int arrays in Lua.", serviceClientTreatUInt8ArrayAsString_callback);
            simRegisterScriptCallbackFunctionE("simROS.call@RosInterface", "table result=simROS.call(number serviceClientHandle,table request)\n\nCall the service associated with this service client.", call_callback);
            simRegisterScriptCallbackFunctionE("simROS.advertiseService@RosInterface", "number serviceServerHandle=simROS.advertiseService(string serviceName,string serviceType,string serviceCallback)\n\nAdvertise a service and create a service server.", advertiseService_callback);
            simRegisterScriptCallbackFunctionE("simROS.shutdownServiceServer@RosInterface", "simROS.shutdownServiceServer(number serviceServerHandle)\n\nShutdown the service server.", shutdownServiceServer_callback);
            simRegisterScriptCallbackFunctionE("simROS.serviceServerTreatUInt8ArrayAsString@RosInterface", "simROS.serviceServerTreatUInt8ArrayAsString(number serviceServerHandle)\n\nAfter calling this function, this service server will treat uint8 arrays as string. Using strings should be in general much faster that using int arrays in Lua.", serviceServerTreatUInt8ArrayAsString_callback);
            simRegisterScriptCallbackFunctionE("simROS.sendTransform@RosInterface", "simROS.sendTransform(table transform)\n\nPublish a TF transformation between frames.", sendTransform_callback);
            simRegisterScriptCallbackFunctionE("simROS.sendTransforms@RosInterface", "simROS.sendTransforms(table transforms)\n\nPublish several TF transformations between frames.", sendTransforms_callback);
            simRegisterScriptCallbackFunctionE("simROS.imageTransportSubscribe@RosInterface", "number subscriberHandle=simROS.imageTransportSubscribe(string topicName,string topicCallback,number queueSize=1)\n\nSubscribe to a topic using ImageTransport.", imageTransportSubscribe_callback);
            simRegisterScriptCallbackFunctionE("simROS.imageTransportShutdownSubscriber@RosInterface", "simROS.imageTransportShutdownSubscriber(number subscriberHandle)\n\nUnsubscribe the callback associated with this subscriber using ImageTransport.", imageTransportShutdownSubscriber_callback);
            simRegisterScriptCallbackFunctionE("simROS.imageTransportAdvertise@RosInterface", "number publisherHandle=simROS.imageTransportAdvertise(string topicName,number queueSize=1)\n\nAdvertise a topic and create a topic publisher using ImageTransport.", imageTransportAdvertise_callback);
            simRegisterScriptCallbackFunctionE("simROS.imageTransportShutdownPublisher@RosInterface", "simROS.imageTransportShutdownPublisher(number publisherHandle)\n\nShutdown the advertisement associated with this publisher using ImageTransport.", imageTransportShutdownPublisher_callback);
            simRegisterScriptCallbackFunctionE("simROS.imageTransportPublish@RosInterface", "simROS.imageTransportPublish(number publisherHandle,string data,number width,number height,string frame_id)\n\nPublish a message on the topic associated with this publisher using ImageTransport.", imageTransportPublish_callback);
            simRegisterScriptCallbackFunctionE("simROS.getTime@RosInterface", "number time=simROS.getTime(number flag=0)\n\nReturn the current ROS time (i.e. the time returned by ros::Time::now()).", getTime_callback);
            simRegisterScriptCallbackFunctionE("simROS.getParamString@RosInterface", "bool exists,string value=simROS.getParamString(string name,string defaultValue='')\n\nRetrieve a string parameter from the ROS Parameter Server.", getParamString_callback);
            simRegisterScriptCallbackFunctionE("simROS.getParamInt@RosInterface", "bool exists,number value=simROS.getParamInt(string name,number defaultValue=0)\n\nRetrieve an integer parameter from the ROS Parameter Server.", getParamInt_callback);
            simRegisterScriptCallbackFunctionE("simROS.getParamDouble@RosInterface", "bool exists,number value=simROS.getParamDouble(string name,number defaultValue=0.0)\n\nRetrieve a double parameter from the ROS Parameter Server.", getParamDouble_callback);
            simRegisterScriptCallbackFunctionE("simROS.getParamBool@RosInterface", "bool exists,bool value=simROS.getParamBool(string name,bool defaultValue=false)\n\nRetrieve a boolean parameter from the ROS Parameter Server.", getParamBool_callback);
            simRegisterScriptCallbackFunctionE("simROS.setParamString@RosInterface", "simROS.setParamString(string name,string value)\n\nSet a string parameter in the ROS Parameter Server.", setParamString_callback);
            simRegisterScriptCallbackFunctionE("simROS.setParamInt@RosInterface", "simROS.setParamInt(string name,number value)\n\nSet a integer parameter in the ROS Parameter Server.", setParamInt_callback);
            simRegisterScriptCallbackFunctionE("simROS.setParamDouble@RosInterface", "simROS.setParamDouble(string name,number value)\n\nSet a double parameter in the ROS Parameter Server.", setParamDouble_callback);
            simRegisterScriptCallbackFunctionE("simROS.setParamBool@RosInterface", "simROS.setParamBool(string name,bool value)\n\nSet a boolean parameter in the ROS Parameter Server.", setParamBool_callback);
            simRegisterScriptCallbackFunctionE("simROS.hasParam@RosInterface", "bool exists=simROS.hasParam(string name)\n\nCheck wether a parameter exists in the ROS Parameter Server.", hasParam_callback);
            simRegisterScriptCallbackFunctionE("simROS.deleteParam@RosInterface", "simROS.deleteParam(string name)\n\nDelete a parameter in the ROS Parameter Server.", deleteParam_callback);
            simRegisterScriptCallbackFunctionE("simROS.searchParam@RosInterface", "bool found,string name=simROS.searchParam(string name)\n\nSearch a parameter in the ROS Parameter Server, looking in the closest namespace.", searchParam_callback);

            // commands simExt<PLUGIN_NAME>_<COMMAND_NAME> (deprecated)
            simRegisterScriptCallbackFunctionE("simExtRosInterface_subscribe@RosInterface", "number subscriberHandle=simExtRosInterface_subscribe(string topicName,string topicType,string topicCallback,number queueSize=1)\n\n(DEPRECATED, please use simROS.subscribe)", subscribe_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_shutdownSubscriber@RosInterface", "simExtRosInterface_shutdownSubscriber(number subscriberHandle)\n\n(DEPRECATED, please use simROS.shutdownSubscriber)", shutdownSubscriber_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_subscriberTreatUInt8ArrayAsString@RosInterface", "simExtRosInterface_subscriberTreatUInt8ArrayAsString(number subscriberHandle)\n\n(DEPRECATED, please use simROS.subscriberTreatUInt8ArrayAsString)", subscriberTreatUInt8ArrayAsString_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_advertise@RosInterface", "number publisherHandle=simExtRosInterface_advertise(string topicName,string topicType,number queueSize=1,bool latch=false)\n\n(DEPRECATED, please use simROS.advertise)", advertise_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_shutdownPublisher@RosInterface", "simExtRosInterface_shutdownPublisher(number publisherHandle)\n\n(DEPRECATED, please use simROS.shutdownPublisher)", shutdownPublisher_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_publisherTreatUInt8ArrayAsString@RosInterface", "simExtRosInterface_publisherTreatUInt8ArrayAsString(number publisherHandle)\n\n(DEPRECATED, please use simROS.publisherTreatUInt8ArrayAsString)", publisherTreatUInt8ArrayAsString_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_publish@RosInterface", "simExtRosInterface_publish(number publisherHandle,table message)\n\n(DEPRECATED, please use simROS.publish)", publish_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_serviceClient@RosInterface", "number serviceClientHandle=simExtRosInterface_serviceClient(string serviceName,string serviceType)\n\n(DEPRECATED, please use simROS.serviceClient)", serviceClient_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_shutdownServiceClient@RosInterface", "simExtRosInterface_shutdownServiceClient(number serviceClientHandle)\n\n(DEPRECATED, please use simROS.shutdownServiceClient)", shutdownServiceClient_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_serviceClientTreatUInt8ArrayAsString@RosInterface", "simExtRosInterface_serviceClientTreatUInt8ArrayAsString(number serviceClientHandle)\n\n(DEPRECATED, please use simROS.serviceClientTreatUInt8ArrayAsString)", serviceClientTreatUInt8ArrayAsString_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_call@RosInterface", "table result=simExtRosInterface_call(number serviceClientHandle,table request)\n\n(DEPRECATED, please use simROS.call)", call_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_advertiseService@RosInterface", "number serviceServerHandle=simExtRosInterface_advertiseService(string serviceName,string serviceType,string serviceCallback)\n\n(DEPRECATED, please use simROS.advertiseService)", advertiseService_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_shutdownServiceServer@RosInterface", "simExtRosInterface_shutdownServiceServer(number serviceServerHandle)\n\n(DEPRECATED, please use simROS.shutdownServiceServer)", shutdownServiceServer_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_serviceServerTreatUInt8ArrayAsString@RosInterface", "simExtRosInterface_serviceServerTreatUInt8ArrayAsString(number serviceServerHandle)\n\n(DEPRECATED, please use simROS.serviceServerTreatUInt8ArrayAsString)", serviceServerTreatUInt8ArrayAsString_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_sendTransform@RosInterface", "simExtRosInterface_sendTransform(table transform)\n\n(DEPRECATED, please use simROS.sendTransform)", sendTransform_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_sendTransforms@RosInterface", "simExtRosInterface_sendTransforms(table transforms)\n\n(DEPRECATED, please use simROS.sendTransforms)", sendTransforms_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_imageTransportSubscribe@RosInterface", "number subscriberHandle=simExtRosInterface_imageTransportSubscribe(string topicName,string topicCallback,number queueSize=1)\n\n(DEPRECATED, please use simROS.imageTransportSubscribe)", imageTransportSubscribe_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_imageTransportShutdownSubscriber@RosInterface", "simExtRosInterface_imageTransportShutdownSubscriber(number subscriberHandle)\n\n(DEPRECATED, please use simROS.imageTransportShutdownSubscriber)", imageTransportShutdownSubscriber_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_imageTransportAdvertise@RosInterface", "number publisherHandle=simExtRosInterface_imageTransportAdvertise(string topicName,number queueSize=1)\n\n(DEPRECATED, please use simROS.imageTransportAdvertise)", imageTransportAdvertise_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_imageTransportShutdownPublisher@RosInterface", "simExtRosInterface_imageTransportShutdownPublisher(number publisherHandle)\n\n(DEPRECATED, please use simROS.imageTransportShutdownPublisher)", imageTransportShutdownPublisher_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_imageTransportPublish@RosInterface", "simExtRosInterface_imageTransportPublish(number publisherHandle,string data,number width,number height,string frame_id)\n\n(DEPRECATED, please use simROS.imageTransportPublish)", imageTransportPublish_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_getTime@RosInterface", "number time=simExtRosInterface_getTime(number flag=0)\n\n(DEPRECATED, please use simROS.getTime)", getTime_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_getParamString@RosInterface", "bool exists,string value=simExtRosInterface_getParamString(string name,string defaultValue='')\n\n(DEPRECATED, please use simROS.getParamString)", getParamString_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_getParamInt@RosInterface", "bool exists,number value=simExtRosInterface_getParamInt(string name,number defaultValue=0)\n\n(DEPRECATED, please use simROS.getParamInt)", getParamInt_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_getParamDouble@RosInterface", "bool exists,number value=simExtRosInterface_getParamDouble(string name,number defaultValue=0.0)\n\n(DEPRECATED, please use simROS.getParamDouble)", getParamDouble_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_getParamBool@RosInterface", "bool exists,bool value=simExtRosInterface_getParamBool(string name,bool defaultValue=false)\n\n(DEPRECATED, please use simROS.getParamBool)", getParamBool_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_setParamString@RosInterface", "simExtRosInterface_setParamString(string name,string value)\n\n(DEPRECATED, please use simROS.setParamString)", setParamString_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_setParamInt@RosInterface", "simExtRosInterface_setParamInt(string name,number value)\n\n(DEPRECATED, please use simROS.setParamInt)", setParamInt_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_setParamDouble@RosInterface", "simExtRosInterface_setParamDouble(string name,number value)\n\n(DEPRECATED, please use simROS.setParamDouble)", setParamDouble_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_setParamBool@RosInterface", "simExtRosInterface_setParamBool(string name,bool value)\n\n(DEPRECATED, please use simROS.setParamBool)", setParamBool_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_hasParam@RosInterface", "bool exists=simExtRosInterface_hasParam(string name)\n\n(DEPRECATED, please use simROS.hasParam)", hasParam_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_deleteParam@RosInterface", "simExtRosInterface_deleteParam(string name)\n\n(DEPRECATED, please use simROS.deleteParam)", deleteParam_callback);
            simRegisterScriptCallbackFunctionE("simExtRosInterface_searchParam@RosInterface", "bool found,string name=simExtRosInterface_searchParam(string name)\n\n(DEPRECATED, please use simROS.searchParam)", searchParam_callback);
            // register variables (deprecated)

#include "lua_calltips.cpp"
        }
        CATCH_AND_RETHROW("Initialization failed (registerScriptStuff): ")
    }
    catch(exception& ex)
    {
        std::cout << ex.what() << std::endl;
        return false;
    }
    return true;
}

subscribe_in::subscribe_in()
{
    queueSize = 1;
}

subscribe_out::subscribe_out()
{
}

void subscribe(SScriptCallBack *p, subscribe_in *in_args, subscribe_out *out_args)
{
    subscribe(p, "simExtRosInterface_subscribe", in_args, out_args);
}

int subscribe(SScriptCallBack *p, std::string topicName, std::string topicType, std::string topicCallback, int queueSize)
{
    subscribe_in in_args;
    in_args.topicName = topicName;
    in_args.topicType = topicType;
    in_args.topicCallback = topicCallback;
    in_args.queueSize = queueSize;
    subscribe_out out_args;
    subscribe(p, &in_args, &out_args);
    return out_args.subscriberHandle;
}

void subscribe(SScriptCallBack *p, subscribe_out *out_args, std::string topicName, std::string topicType, std::string topicCallback, int queueSize)
{
    subscribe_in in_args;
    in_args.topicName = topicName;
    in_args.topicType = topicType;
    in_args.topicCallback = topicCallback;
    in_args.queueSize = queueSize;
    subscribe(p, &in_args, out_args);
}

void subscribe_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"subscribe\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_subscribe";

    subscribe_in in_args;
    subscribe_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 3)
            throw exception("not enough arguments");
        if(numArgs > 4)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (topicName)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (topicName) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.topicName));
            }
            CATCH_AND_RETHROW("read in arg 1 (topicName): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (topicType)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (topicType) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.topicType));
            }
            CATCH_AND_RETHROW("read in arg 2 (topicType): ")
        }

        if(numArgs >= 3)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 3 (topicCallback)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 3 (topicCallback) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.topicCallback));
            }
            CATCH_AND_RETHROW("read in arg 3 (topicCallback): ")
        }

        if(numArgs >= 4)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 4 (queueSize)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 4 (queueSize) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.queueSize));
            }
            CATCH_AND_RETHROW("read in arg 4 (queueSize): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        subscribe(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack

        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 1 (subscriberHandle)..." << std::endl;
#endif // DEBUG

            // write output argument 1 (subscriberHandle) of type int
            write__int((out_args.subscriberHandle), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 1 (subscriberHandle): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

shutdownSubscriber_in::shutdownSubscriber_in()
{
}

shutdownSubscriber_out::shutdownSubscriber_out()
{
}

void shutdownSubscriber(SScriptCallBack *p, shutdownSubscriber_in *in_args, shutdownSubscriber_out *out_args)
{
    shutdownSubscriber(p, "simExtRosInterface_shutdownSubscriber", in_args, out_args);
}

void shutdownSubscriber(SScriptCallBack *p, int subscriberHandle)
{
    shutdownSubscriber_in in_args;
    in_args.subscriberHandle = subscriberHandle;
    shutdownSubscriber_out out_args;
    shutdownSubscriber(p, &in_args, &out_args);
}

void shutdownSubscriber(SScriptCallBack *p, shutdownSubscriber_out *out_args, int subscriberHandle)
{
    shutdownSubscriber_in in_args;
    in_args.subscriberHandle = subscriberHandle;
    shutdownSubscriber(p, &in_args, out_args);
}

void shutdownSubscriber_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"shutdownSubscriber\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_shutdownSubscriber";

    shutdownSubscriber_in in_args;
    shutdownSubscriber_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (subscriberHandle)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (subscriberHandle) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.subscriberHandle));
            }
            CATCH_AND_RETHROW("read in arg 1 (subscriberHandle): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        shutdownSubscriber(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

subscriberTreatUInt8ArrayAsString_in::subscriberTreatUInt8ArrayAsString_in()
{
}

subscriberTreatUInt8ArrayAsString_out::subscriberTreatUInt8ArrayAsString_out()
{
}

void subscriberTreatUInt8ArrayAsString(SScriptCallBack *p, subscriberTreatUInt8ArrayAsString_in *in_args, subscriberTreatUInt8ArrayAsString_out *out_args)
{
    subscriberTreatUInt8ArrayAsString(p, "simExtRosInterface_subscriberTreatUInt8ArrayAsString", in_args, out_args);
}

void subscriberTreatUInt8ArrayAsString(SScriptCallBack *p, int subscriberHandle)
{
    subscriberTreatUInt8ArrayAsString_in in_args;
    in_args.subscriberHandle = subscriberHandle;
    subscriberTreatUInt8ArrayAsString_out out_args;
    subscriberTreatUInt8ArrayAsString(p, &in_args, &out_args);
}

void subscriberTreatUInt8ArrayAsString(SScriptCallBack *p, subscriberTreatUInt8ArrayAsString_out *out_args, int subscriberHandle)
{
    subscriberTreatUInt8ArrayAsString_in in_args;
    in_args.subscriberHandle = subscriberHandle;
    subscriberTreatUInt8ArrayAsString(p, &in_args, out_args);
}

void subscriberTreatUInt8ArrayAsString_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"subscriberTreatUInt8ArrayAsString\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_subscriberTreatUInt8ArrayAsString";

    subscriberTreatUInt8ArrayAsString_in in_args;
    subscriberTreatUInt8ArrayAsString_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (subscriberHandle)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (subscriberHandle) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.subscriberHandle));
            }
            CATCH_AND_RETHROW("read in arg 1 (subscriberHandle): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        subscriberTreatUInt8ArrayAsString(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

advertise_in::advertise_in()
{
    queueSize = 1;
    latch = false;
}

advertise_out::advertise_out()
{
}

void advertise(SScriptCallBack *p, advertise_in *in_args, advertise_out *out_args)
{
    advertise(p, "simExtRosInterface_advertise", in_args, out_args);
}

int advertise(SScriptCallBack *p, std::string topicName, std::string topicType, int queueSize, bool latch)
{
    advertise_in in_args;
    in_args.topicName = topicName;
    in_args.topicType = topicType;
    in_args.queueSize = queueSize;
    in_args.latch = latch;
    advertise_out out_args;
    advertise(p, &in_args, &out_args);
    return out_args.publisherHandle;
}

void advertise(SScriptCallBack *p, advertise_out *out_args, std::string topicName, std::string topicType, int queueSize, bool latch)
{
    advertise_in in_args;
    in_args.topicName = topicName;
    in_args.topicType = topicType;
    in_args.queueSize = queueSize;
    in_args.latch = latch;
    advertise(p, &in_args, out_args);
}

void advertise_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"advertise\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_advertise";

    advertise_in in_args;
    advertise_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 2)
            throw exception("not enough arguments");
        if(numArgs > 4)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (topicName)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (topicName) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.topicName));
            }
            CATCH_AND_RETHROW("read in arg 1 (topicName): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (topicType)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (topicType) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.topicType));
            }
            CATCH_AND_RETHROW("read in arg 2 (topicType): ")
        }

        if(numArgs >= 3)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 3 (queueSize)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 3 (queueSize) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.queueSize));
            }
            CATCH_AND_RETHROW("read in arg 3 (queueSize): ")
        }

        if(numArgs >= 4)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 4 (latch)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 4 (latch) of type bool
                simMoveStackItemToTopE(p->stackID, 0);
                read__bool(p->stackID, &(in_args.latch));
            }
            CATCH_AND_RETHROW("read in arg 4 (latch): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        advertise(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack

        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 1 (publisherHandle)..." << std::endl;
#endif // DEBUG

            // write output argument 1 (publisherHandle) of type int
            write__int((out_args.publisherHandle), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 1 (publisherHandle): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

shutdownPublisher_in::shutdownPublisher_in()
{
}

shutdownPublisher_out::shutdownPublisher_out()
{
}

void shutdownPublisher(SScriptCallBack *p, shutdownPublisher_in *in_args, shutdownPublisher_out *out_args)
{
    shutdownPublisher(p, "simExtRosInterface_shutdownPublisher", in_args, out_args);
}

void shutdownPublisher(SScriptCallBack *p, int publisherHandle)
{
    shutdownPublisher_in in_args;
    in_args.publisherHandle = publisherHandle;
    shutdownPublisher_out out_args;
    shutdownPublisher(p, &in_args, &out_args);
}

void shutdownPublisher(SScriptCallBack *p, shutdownPublisher_out *out_args, int publisherHandle)
{
    shutdownPublisher_in in_args;
    in_args.publisherHandle = publisherHandle;
    shutdownPublisher(p, &in_args, out_args);
}

void shutdownPublisher_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"shutdownPublisher\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_shutdownPublisher";

    shutdownPublisher_in in_args;
    shutdownPublisher_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (publisherHandle)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (publisherHandle) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.publisherHandle));
            }
            CATCH_AND_RETHROW("read in arg 1 (publisherHandle): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        shutdownPublisher(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

publisherTreatUInt8ArrayAsString_in::publisherTreatUInt8ArrayAsString_in()
{
}

publisherTreatUInt8ArrayAsString_out::publisherTreatUInt8ArrayAsString_out()
{
}

void publisherTreatUInt8ArrayAsString(SScriptCallBack *p, publisherTreatUInt8ArrayAsString_in *in_args, publisherTreatUInt8ArrayAsString_out *out_args)
{
    publisherTreatUInt8ArrayAsString(p, "simExtRosInterface_publisherTreatUInt8ArrayAsString", in_args, out_args);
}

void publisherTreatUInt8ArrayAsString(SScriptCallBack *p, int publisherHandle)
{
    publisherTreatUInt8ArrayAsString_in in_args;
    in_args.publisherHandle = publisherHandle;
    publisherTreatUInt8ArrayAsString_out out_args;
    publisherTreatUInt8ArrayAsString(p, &in_args, &out_args);
}

void publisherTreatUInt8ArrayAsString(SScriptCallBack *p, publisherTreatUInt8ArrayAsString_out *out_args, int publisherHandle)
{
    publisherTreatUInt8ArrayAsString_in in_args;
    in_args.publisherHandle = publisherHandle;
    publisherTreatUInt8ArrayAsString(p, &in_args, out_args);
}

void publisherTreatUInt8ArrayAsString_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"publisherTreatUInt8ArrayAsString\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_publisherTreatUInt8ArrayAsString";

    publisherTreatUInt8ArrayAsString_in in_args;
    publisherTreatUInt8ArrayAsString_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (publisherHandle)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (publisherHandle) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.publisherHandle));
            }
            CATCH_AND_RETHROW("read in arg 1 (publisherHandle): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        publisherTreatUInt8ArrayAsString(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

publish_in::publish_in()
{
}

publish_out::publish_out()
{
}

void publish(SScriptCallBack *p, publish_in *in_args, publish_out *out_args)
{
    publish(p, "simExtRosInterface_publish", in_args, out_args);
}

void publish(SScriptCallBack *p, int publisherHandle)
{
    publish_in in_args;
    in_args.publisherHandle = publisherHandle;
    publish_out out_args;
    publish(p, &in_args, &out_args);
}

void publish(SScriptCallBack *p, publish_out *out_args, int publisherHandle)
{
    publish_in in_args;
    in_args.publisherHandle = publisherHandle;
    publish(p, &in_args, out_args);
}

void publish_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"publish\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_publish";

    publish_in in_args;
    publish_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 2)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (publisherHandle)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (publisherHandle) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.publisherHandle));
            }
            CATCH_AND_RETHROW("read in arg 1 (publisherHandle): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        publish(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

serviceClient_in::serviceClient_in()
{
}

serviceClient_out::serviceClient_out()
{
}

void serviceClient(SScriptCallBack *p, serviceClient_in *in_args, serviceClient_out *out_args)
{
    serviceClient(p, "simExtRosInterface_serviceClient", in_args, out_args);
}

int serviceClient(SScriptCallBack *p, std::string serviceName, std::string serviceType)
{
    serviceClient_in in_args;
    in_args.serviceName = serviceName;
    in_args.serviceType = serviceType;
    serviceClient_out out_args;
    serviceClient(p, &in_args, &out_args);
    return out_args.serviceClientHandle;
}

void serviceClient(SScriptCallBack *p, serviceClient_out *out_args, std::string serviceName, std::string serviceType)
{
    serviceClient_in in_args;
    in_args.serviceName = serviceName;
    in_args.serviceType = serviceType;
    serviceClient(p, &in_args, out_args);
}

void serviceClient_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"serviceClient\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_serviceClient";

    serviceClient_in in_args;
    serviceClient_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 2)
            throw exception("not enough arguments");
        if(numArgs > 2)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (serviceName)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (serviceName) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.serviceName));
            }
            CATCH_AND_RETHROW("read in arg 1 (serviceName): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (serviceType)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (serviceType) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.serviceType));
            }
            CATCH_AND_RETHROW("read in arg 2 (serviceType): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        serviceClient(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack

        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 1 (serviceClientHandle)..." << std::endl;
#endif // DEBUG

            // write output argument 1 (serviceClientHandle) of type int
            write__int((out_args.serviceClientHandle), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 1 (serviceClientHandle): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

shutdownServiceClient_in::shutdownServiceClient_in()
{
}

shutdownServiceClient_out::shutdownServiceClient_out()
{
}

void shutdownServiceClient(SScriptCallBack *p, shutdownServiceClient_in *in_args, shutdownServiceClient_out *out_args)
{
    shutdownServiceClient(p, "simExtRosInterface_shutdownServiceClient", in_args, out_args);
}

void shutdownServiceClient(SScriptCallBack *p, int serviceClientHandle)
{
    shutdownServiceClient_in in_args;
    in_args.serviceClientHandle = serviceClientHandle;
    shutdownServiceClient_out out_args;
    shutdownServiceClient(p, &in_args, &out_args);
}

void shutdownServiceClient(SScriptCallBack *p, shutdownServiceClient_out *out_args, int serviceClientHandle)
{
    shutdownServiceClient_in in_args;
    in_args.serviceClientHandle = serviceClientHandle;
    shutdownServiceClient(p, &in_args, out_args);
}

void shutdownServiceClient_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"shutdownServiceClient\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_shutdownServiceClient";

    shutdownServiceClient_in in_args;
    shutdownServiceClient_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (serviceClientHandle)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (serviceClientHandle) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.serviceClientHandle));
            }
            CATCH_AND_RETHROW("read in arg 1 (serviceClientHandle): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        shutdownServiceClient(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

serviceClientTreatUInt8ArrayAsString_in::serviceClientTreatUInt8ArrayAsString_in()
{
}

serviceClientTreatUInt8ArrayAsString_out::serviceClientTreatUInt8ArrayAsString_out()
{
}

void serviceClientTreatUInt8ArrayAsString(SScriptCallBack *p, serviceClientTreatUInt8ArrayAsString_in *in_args, serviceClientTreatUInt8ArrayAsString_out *out_args)
{
    serviceClientTreatUInt8ArrayAsString(p, "simExtRosInterface_serviceClientTreatUInt8ArrayAsString", in_args, out_args);
}

void serviceClientTreatUInt8ArrayAsString(SScriptCallBack *p, int serviceClientHandle)
{
    serviceClientTreatUInt8ArrayAsString_in in_args;
    in_args.serviceClientHandle = serviceClientHandle;
    serviceClientTreatUInt8ArrayAsString_out out_args;
    serviceClientTreatUInt8ArrayAsString(p, &in_args, &out_args);
}

void serviceClientTreatUInt8ArrayAsString(SScriptCallBack *p, serviceClientTreatUInt8ArrayAsString_out *out_args, int serviceClientHandle)
{
    serviceClientTreatUInt8ArrayAsString_in in_args;
    in_args.serviceClientHandle = serviceClientHandle;
    serviceClientTreatUInt8ArrayAsString(p, &in_args, out_args);
}

void serviceClientTreatUInt8ArrayAsString_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"serviceClientTreatUInt8ArrayAsString\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_serviceClientTreatUInt8ArrayAsString";

    serviceClientTreatUInt8ArrayAsString_in in_args;
    serviceClientTreatUInt8ArrayAsString_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (serviceClientHandle)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (serviceClientHandle) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.serviceClientHandle));
            }
            CATCH_AND_RETHROW("read in arg 1 (serviceClientHandle): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        serviceClientTreatUInt8ArrayAsString(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

call_in::call_in()
{
}

call_out::call_out()
{
}

void call(SScriptCallBack *p, call_in *in_args, call_out *out_args)
{
    call(p, "simExtRosInterface_call", in_args, out_args);
}

void call(SScriptCallBack *p, int serviceClientHandle)
{
    call_in in_args;
    in_args.serviceClientHandle = serviceClientHandle;
    call_out out_args;
    call(p, &in_args, &out_args);
}

void call(SScriptCallBack *p, call_out *out_args, int serviceClientHandle)
{
    call_in in_args;
    in_args.serviceClientHandle = serviceClientHandle;
    call(p, &in_args, out_args);
}

void call_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"call\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_call";

    call_in in_args;
    call_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 2)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (serviceClientHandle)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (serviceClientHandle) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.serviceClientHandle));
            }
            CATCH_AND_RETHROW("read in arg 1 (serviceClientHandle): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        call(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

advertiseService_in::advertiseService_in()
{
}

advertiseService_out::advertiseService_out()
{
}

void advertiseService(SScriptCallBack *p, advertiseService_in *in_args, advertiseService_out *out_args)
{
    advertiseService(p, "simExtRosInterface_advertiseService", in_args, out_args);
}

int advertiseService(SScriptCallBack *p, std::string serviceName, std::string serviceType, std::string serviceCallback)
{
    advertiseService_in in_args;
    in_args.serviceName = serviceName;
    in_args.serviceType = serviceType;
    in_args.serviceCallback = serviceCallback;
    advertiseService_out out_args;
    advertiseService(p, &in_args, &out_args);
    return out_args.serviceServerHandle;
}

void advertiseService(SScriptCallBack *p, advertiseService_out *out_args, std::string serviceName, std::string serviceType, std::string serviceCallback)
{
    advertiseService_in in_args;
    in_args.serviceName = serviceName;
    in_args.serviceType = serviceType;
    in_args.serviceCallback = serviceCallback;
    advertiseService(p, &in_args, out_args);
}

void advertiseService_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"advertiseService\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_advertiseService";

    advertiseService_in in_args;
    advertiseService_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 3)
            throw exception("not enough arguments");
        if(numArgs > 3)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (serviceName)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (serviceName) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.serviceName));
            }
            CATCH_AND_RETHROW("read in arg 1 (serviceName): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (serviceType)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (serviceType) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.serviceType));
            }
            CATCH_AND_RETHROW("read in arg 2 (serviceType): ")
        }

        if(numArgs >= 3)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 3 (serviceCallback)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 3 (serviceCallback) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.serviceCallback));
            }
            CATCH_AND_RETHROW("read in arg 3 (serviceCallback): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        advertiseService(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack

        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 1 (serviceServerHandle)..." << std::endl;
#endif // DEBUG

            // write output argument 1 (serviceServerHandle) of type int
            write__int((out_args.serviceServerHandle), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 1 (serviceServerHandle): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

shutdownServiceServer_in::shutdownServiceServer_in()
{
}

shutdownServiceServer_out::shutdownServiceServer_out()
{
}

void shutdownServiceServer(SScriptCallBack *p, shutdownServiceServer_in *in_args, shutdownServiceServer_out *out_args)
{
    shutdownServiceServer(p, "simExtRosInterface_shutdownServiceServer", in_args, out_args);
}

void shutdownServiceServer(SScriptCallBack *p, int serviceServerHandle)
{
    shutdownServiceServer_in in_args;
    in_args.serviceServerHandle = serviceServerHandle;
    shutdownServiceServer_out out_args;
    shutdownServiceServer(p, &in_args, &out_args);
}

void shutdownServiceServer(SScriptCallBack *p, shutdownServiceServer_out *out_args, int serviceServerHandle)
{
    shutdownServiceServer_in in_args;
    in_args.serviceServerHandle = serviceServerHandle;
    shutdownServiceServer(p, &in_args, out_args);
}

void shutdownServiceServer_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"shutdownServiceServer\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_shutdownServiceServer";

    shutdownServiceServer_in in_args;
    shutdownServiceServer_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (serviceServerHandle)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (serviceServerHandle) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.serviceServerHandle));
            }
            CATCH_AND_RETHROW("read in arg 1 (serviceServerHandle): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        shutdownServiceServer(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

serviceServerTreatUInt8ArrayAsString_in::serviceServerTreatUInt8ArrayAsString_in()
{
}

serviceServerTreatUInt8ArrayAsString_out::serviceServerTreatUInt8ArrayAsString_out()
{
}

void serviceServerTreatUInt8ArrayAsString(SScriptCallBack *p, serviceServerTreatUInt8ArrayAsString_in *in_args, serviceServerTreatUInt8ArrayAsString_out *out_args)
{
    serviceServerTreatUInt8ArrayAsString(p, "simExtRosInterface_serviceServerTreatUInt8ArrayAsString", in_args, out_args);
}

void serviceServerTreatUInt8ArrayAsString(SScriptCallBack *p, int serviceServerHandle)
{
    serviceServerTreatUInt8ArrayAsString_in in_args;
    in_args.serviceServerHandle = serviceServerHandle;
    serviceServerTreatUInt8ArrayAsString_out out_args;
    serviceServerTreatUInt8ArrayAsString(p, &in_args, &out_args);
}

void serviceServerTreatUInt8ArrayAsString(SScriptCallBack *p, serviceServerTreatUInt8ArrayAsString_out *out_args, int serviceServerHandle)
{
    serviceServerTreatUInt8ArrayAsString_in in_args;
    in_args.serviceServerHandle = serviceServerHandle;
    serviceServerTreatUInt8ArrayAsString(p, &in_args, out_args);
}

void serviceServerTreatUInt8ArrayAsString_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"serviceServerTreatUInt8ArrayAsString\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_serviceServerTreatUInt8ArrayAsString";

    serviceServerTreatUInt8ArrayAsString_in in_args;
    serviceServerTreatUInt8ArrayAsString_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (serviceServerHandle)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (serviceServerHandle) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.serviceServerHandle));
            }
            CATCH_AND_RETHROW("read in arg 1 (serviceServerHandle): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        serviceServerTreatUInt8ArrayAsString(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

sendTransform_in::sendTransform_in()
{
}

sendTransform_out::sendTransform_out()
{
}

void sendTransform(SScriptCallBack *p, sendTransform_in *in_args, sendTransform_out *out_args)
{
    sendTransform(p, "simExtRosInterface_sendTransform", in_args, out_args);
}

void sendTransform(SScriptCallBack *p)
{
    sendTransform_in in_args;
    sendTransform_out out_args;
    sendTransform(p, &in_args, &out_args);
}

void sendTransform(SScriptCallBack *p, sendTransform_out *out_args)
{
    sendTransform_in in_args;
    sendTransform(p, &in_args, out_args);
}

void sendTransform_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"sendTransform\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_sendTransform";

    sendTransform_in in_args;
    sendTransform_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 0)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        sendTransform(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

sendTransforms_in::sendTransforms_in()
{
}

sendTransforms_out::sendTransforms_out()
{
}

void sendTransforms(SScriptCallBack *p, sendTransforms_in *in_args, sendTransforms_out *out_args)
{
    sendTransforms(p, "simExtRosInterface_sendTransforms", in_args, out_args);
}

void sendTransforms(SScriptCallBack *p)
{
    sendTransforms_in in_args;
    sendTransforms_out out_args;
    sendTransforms(p, &in_args, &out_args);
}

void sendTransforms(SScriptCallBack *p, sendTransforms_out *out_args)
{
    sendTransforms_in in_args;
    sendTransforms(p, &in_args, out_args);
}

void sendTransforms_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"sendTransforms\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_sendTransforms";

    sendTransforms_in in_args;
    sendTransforms_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 0)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        sendTransforms(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

imageTransportSubscribe_in::imageTransportSubscribe_in()
{
    queueSize = 1;
}

imageTransportSubscribe_out::imageTransportSubscribe_out()
{
}

void imageTransportSubscribe(SScriptCallBack *p, imageTransportSubscribe_in *in_args, imageTransportSubscribe_out *out_args)
{
    imageTransportSubscribe(p, "simExtRosInterface_imageTransportSubscribe", in_args, out_args);
}

int imageTransportSubscribe(SScriptCallBack *p, std::string topicName, std::string topicCallback, int queueSize)
{
    imageTransportSubscribe_in in_args;
    in_args.topicName = topicName;
    in_args.topicCallback = topicCallback;
    in_args.queueSize = queueSize;
    imageTransportSubscribe_out out_args;
    imageTransportSubscribe(p, &in_args, &out_args);
    return out_args.subscriberHandle;
}

void imageTransportSubscribe(SScriptCallBack *p, imageTransportSubscribe_out *out_args, std::string topicName, std::string topicCallback, int queueSize)
{
    imageTransportSubscribe_in in_args;
    in_args.topicName = topicName;
    in_args.topicCallback = topicCallback;
    in_args.queueSize = queueSize;
    imageTransportSubscribe(p, &in_args, out_args);
}

void imageTransportSubscribe_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"imageTransportSubscribe\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_imageTransportSubscribe";

    imageTransportSubscribe_in in_args;
    imageTransportSubscribe_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 2)
            throw exception("not enough arguments");
        if(numArgs > 3)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (topicName)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (topicName) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.topicName));
            }
            CATCH_AND_RETHROW("read in arg 1 (topicName): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (topicCallback)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (topicCallback) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.topicCallback));
            }
            CATCH_AND_RETHROW("read in arg 2 (topicCallback): ")
        }

        if(numArgs >= 3)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 3 (queueSize)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 3 (queueSize) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.queueSize));
            }
            CATCH_AND_RETHROW("read in arg 3 (queueSize): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        imageTransportSubscribe(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack

        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 1 (subscriberHandle)..." << std::endl;
#endif // DEBUG

            // write output argument 1 (subscriberHandle) of type int
            write__int((out_args.subscriberHandle), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 1 (subscriberHandle): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

imageTransportShutdownSubscriber_in::imageTransportShutdownSubscriber_in()
{
}

imageTransportShutdownSubscriber_out::imageTransportShutdownSubscriber_out()
{
}

void imageTransportShutdownSubscriber(SScriptCallBack *p, imageTransportShutdownSubscriber_in *in_args, imageTransportShutdownSubscriber_out *out_args)
{
    imageTransportShutdownSubscriber(p, "simExtRosInterface_imageTransportShutdownSubscriber", in_args, out_args);
}

void imageTransportShutdownSubscriber(SScriptCallBack *p, int subscriberHandle)
{
    imageTransportShutdownSubscriber_in in_args;
    in_args.subscriberHandle = subscriberHandle;
    imageTransportShutdownSubscriber_out out_args;
    imageTransportShutdownSubscriber(p, &in_args, &out_args);
}

void imageTransportShutdownSubscriber(SScriptCallBack *p, imageTransportShutdownSubscriber_out *out_args, int subscriberHandle)
{
    imageTransportShutdownSubscriber_in in_args;
    in_args.subscriberHandle = subscriberHandle;
    imageTransportShutdownSubscriber(p, &in_args, out_args);
}

void imageTransportShutdownSubscriber_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"imageTransportShutdownSubscriber\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_imageTransportShutdownSubscriber";

    imageTransportShutdownSubscriber_in in_args;
    imageTransportShutdownSubscriber_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (subscriberHandle)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (subscriberHandle) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.subscriberHandle));
            }
            CATCH_AND_RETHROW("read in arg 1 (subscriberHandle): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        imageTransportShutdownSubscriber(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

imageTransportAdvertise_in::imageTransportAdvertise_in()
{
    queueSize = 1;
}

imageTransportAdvertise_out::imageTransportAdvertise_out()
{
}

void imageTransportAdvertise(SScriptCallBack *p, imageTransportAdvertise_in *in_args, imageTransportAdvertise_out *out_args)
{
    imageTransportAdvertise(p, "simExtRosInterface_imageTransportAdvertise", in_args, out_args);
}

int imageTransportAdvertise(SScriptCallBack *p, std::string topicName, int queueSize)
{
    imageTransportAdvertise_in in_args;
    in_args.topicName = topicName;
    in_args.queueSize = queueSize;
    imageTransportAdvertise_out out_args;
    imageTransportAdvertise(p, &in_args, &out_args);
    return out_args.publisherHandle;
}

void imageTransportAdvertise(SScriptCallBack *p, imageTransportAdvertise_out *out_args, std::string topicName, int queueSize)
{
    imageTransportAdvertise_in in_args;
    in_args.topicName = topicName;
    in_args.queueSize = queueSize;
    imageTransportAdvertise(p, &in_args, out_args);
}

void imageTransportAdvertise_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"imageTransportAdvertise\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_imageTransportAdvertise";

    imageTransportAdvertise_in in_args;
    imageTransportAdvertise_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 2)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (topicName)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (topicName) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.topicName));
            }
            CATCH_AND_RETHROW("read in arg 1 (topicName): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (queueSize)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (queueSize) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.queueSize));
            }
            CATCH_AND_RETHROW("read in arg 2 (queueSize): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        imageTransportAdvertise(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack

        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 1 (publisherHandle)..." << std::endl;
#endif // DEBUG

            // write output argument 1 (publisherHandle) of type int
            write__int((out_args.publisherHandle), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 1 (publisherHandle): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

imageTransportShutdownPublisher_in::imageTransportShutdownPublisher_in()
{
}

imageTransportShutdownPublisher_out::imageTransportShutdownPublisher_out()
{
}

void imageTransportShutdownPublisher(SScriptCallBack *p, imageTransportShutdownPublisher_in *in_args, imageTransportShutdownPublisher_out *out_args)
{
    imageTransportShutdownPublisher(p, "simExtRosInterface_imageTransportShutdownPublisher", in_args, out_args);
}

void imageTransportShutdownPublisher(SScriptCallBack *p, int publisherHandle)
{
    imageTransportShutdownPublisher_in in_args;
    in_args.publisherHandle = publisherHandle;
    imageTransportShutdownPublisher_out out_args;
    imageTransportShutdownPublisher(p, &in_args, &out_args);
}

void imageTransportShutdownPublisher(SScriptCallBack *p, imageTransportShutdownPublisher_out *out_args, int publisherHandle)
{
    imageTransportShutdownPublisher_in in_args;
    in_args.publisherHandle = publisherHandle;
    imageTransportShutdownPublisher(p, &in_args, out_args);
}

void imageTransportShutdownPublisher_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"imageTransportShutdownPublisher\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_imageTransportShutdownPublisher";

    imageTransportShutdownPublisher_in in_args;
    imageTransportShutdownPublisher_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (publisherHandle)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (publisherHandle) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.publisherHandle));
            }
            CATCH_AND_RETHROW("read in arg 1 (publisherHandle): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        imageTransportShutdownPublisher(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

imageTransportPublish_in::imageTransportPublish_in()
{
}

imageTransportPublish_out::imageTransportPublish_out()
{
}

void imageTransportPublish(SScriptCallBack *p, imageTransportPublish_in *in_args, imageTransportPublish_out *out_args)
{
    imageTransportPublish(p, "simExtRosInterface_imageTransportPublish", in_args, out_args);
}

void imageTransportPublish(SScriptCallBack *p, int publisherHandle, std::string data, int width, int height, std::string frame_id)
{
    imageTransportPublish_in in_args;
    in_args.publisherHandle = publisherHandle;
    in_args.data = data;
    in_args.width = width;
    in_args.height = height;
    in_args.frame_id = frame_id;
    imageTransportPublish_out out_args;
    imageTransportPublish(p, &in_args, &out_args);
}

void imageTransportPublish(SScriptCallBack *p, imageTransportPublish_out *out_args, int publisherHandle, std::string data, int width, int height, std::string frame_id)
{
    imageTransportPublish_in in_args;
    in_args.publisherHandle = publisherHandle;
    in_args.data = data;
    in_args.width = width;
    in_args.height = height;
    in_args.frame_id = frame_id;
    imageTransportPublish(p, &in_args, out_args);
}

void imageTransportPublish_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"imageTransportPublish\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_imageTransportPublish";

    imageTransportPublish_in in_args;
    imageTransportPublish_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 5)
            throw exception("not enough arguments");
        if(numArgs > 5)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (publisherHandle)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (publisherHandle) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.publisherHandle));
            }
            CATCH_AND_RETHROW("read in arg 1 (publisherHandle): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (data)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (data) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.data));
            }
            CATCH_AND_RETHROW("read in arg 2 (data): ")
        }

        if(numArgs >= 3)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 3 (width)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 3 (width) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.width));
            }
            CATCH_AND_RETHROW("read in arg 3 (width): ")
        }

        if(numArgs >= 4)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 4 (height)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 4 (height) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.height));
            }
            CATCH_AND_RETHROW("read in arg 4 (height): ")
        }

        if(numArgs >= 5)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 5 (frame_id)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 5 (frame_id) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.frame_id));
            }
            CATCH_AND_RETHROW("read in arg 5 (frame_id): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        imageTransportPublish(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

getTime_in::getTime_in()
{
    flag = 0;
}

getTime_out::getTime_out()
{
    time = 0;
}

void getTime(SScriptCallBack *p, getTime_in *in_args, getTime_out *out_args)
{
    getTime(p, "simExtRosInterface_getTime", in_args, out_args);
}

double getTime(SScriptCallBack *p, int flag)
{
    getTime_in in_args;
    in_args.flag = flag;
    getTime_out out_args;
    getTime(p, &in_args, &out_args);
    return out_args.time;
}

void getTime(SScriptCallBack *p, getTime_out *out_args, int flag)
{
    getTime_in in_args;
    in_args.flag = flag;
    getTime(p, &in_args, out_args);
}

void getTime_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"getTime\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_getTime";

    getTime_in in_args;
    getTime_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 0)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (flag)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (flag) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.flag));
            }
            CATCH_AND_RETHROW("read in arg 1 (flag): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        getTime(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack

        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 1 (time)..." << std::endl;
#endif // DEBUG

            // write output argument 1 (time) of type double
            write__double((out_args.time), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 1 (time): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

getParamString_in::getParamString_in()
{
    defaultValue = "";
}

getParamString_out::getParamString_out()
{
    value = "";
}

void getParamString(SScriptCallBack *p, getParamString_in *in_args, getParamString_out *out_args)
{
    getParamString(p, "simExtRosInterface_getParamString", in_args, out_args);
}

void getParamString(SScriptCallBack *p, getParamString_out *out_args, std::string name, std::string defaultValue)
{
    getParamString_in in_args;
    in_args.name = name;
    in_args.defaultValue = defaultValue;
    getParamString(p, &in_args, out_args);
}

void getParamString_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"getParamString\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_getParamString";

    getParamString_in in_args;
    getParamString_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 2)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (name)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (name) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.name));
            }
            CATCH_AND_RETHROW("read in arg 1 (name): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (defaultValue)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (defaultValue) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.defaultValue));
            }
            CATCH_AND_RETHROW("read in arg 2 (defaultValue): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        getParamString(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack

        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 1 (exists)..." << std::endl;
#endif // DEBUG

            // write output argument 1 (exists) of type bool
            write__bool((out_args.exists), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 1 (exists): ")
        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 2 (value)..." << std::endl;
#endif // DEBUG

            // write output argument 2 (value) of type std::string
            write__std__string((out_args.value), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 2 (value): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

getParamInt_in::getParamInt_in()
{
    defaultValue = 0;
}

getParamInt_out::getParamInt_out()
{
    value = 0;
}

void getParamInt(SScriptCallBack *p, getParamInt_in *in_args, getParamInt_out *out_args)
{
    getParamInt(p, "simExtRosInterface_getParamInt", in_args, out_args);
}

void getParamInt(SScriptCallBack *p, getParamInt_out *out_args, std::string name, int defaultValue)
{
    getParamInt_in in_args;
    in_args.name = name;
    in_args.defaultValue = defaultValue;
    getParamInt(p, &in_args, out_args);
}

void getParamInt_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"getParamInt\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_getParamInt";

    getParamInt_in in_args;
    getParamInt_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 2)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (name)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (name) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.name));
            }
            CATCH_AND_RETHROW("read in arg 1 (name): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (defaultValue)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (defaultValue) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.defaultValue));
            }
            CATCH_AND_RETHROW("read in arg 2 (defaultValue): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        getParamInt(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack

        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 1 (exists)..." << std::endl;
#endif // DEBUG

            // write output argument 1 (exists) of type bool
            write__bool((out_args.exists), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 1 (exists): ")
        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 2 (value)..." << std::endl;
#endif // DEBUG

            // write output argument 2 (value) of type int
            write__int((out_args.value), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 2 (value): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

getParamDouble_in::getParamDouble_in()
{
    defaultValue = 0.0;
}

getParamDouble_out::getParamDouble_out()
{
    value = 0.0;
}

void getParamDouble(SScriptCallBack *p, getParamDouble_in *in_args, getParamDouble_out *out_args)
{
    getParamDouble(p, "simExtRosInterface_getParamDouble", in_args, out_args);
}

void getParamDouble(SScriptCallBack *p, getParamDouble_out *out_args, std::string name, double defaultValue)
{
    getParamDouble_in in_args;
    in_args.name = name;
    in_args.defaultValue = defaultValue;
    getParamDouble(p, &in_args, out_args);
}

void getParamDouble_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"getParamDouble\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_getParamDouble";

    getParamDouble_in in_args;
    getParamDouble_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 2)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (name)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (name) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.name));
            }
            CATCH_AND_RETHROW("read in arg 1 (name): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (defaultValue)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (defaultValue) of type double
                simMoveStackItemToTopE(p->stackID, 0);
                read__double(p->stackID, &(in_args.defaultValue));
            }
            CATCH_AND_RETHROW("read in arg 2 (defaultValue): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        getParamDouble(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack

        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 1 (exists)..." << std::endl;
#endif // DEBUG

            // write output argument 1 (exists) of type bool
            write__bool((out_args.exists), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 1 (exists): ")
        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 2 (value)..." << std::endl;
#endif // DEBUG

            // write output argument 2 (value) of type double
            write__double((out_args.value), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 2 (value): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

getParamBool_in::getParamBool_in()
{
    defaultValue = false;
}

getParamBool_out::getParamBool_out()
{
    value = false;
}

void getParamBool(SScriptCallBack *p, getParamBool_in *in_args, getParamBool_out *out_args)
{
    getParamBool(p, "simExtRosInterface_getParamBool", in_args, out_args);
}

void getParamBool(SScriptCallBack *p, getParamBool_out *out_args, std::string name, bool defaultValue)
{
    getParamBool_in in_args;
    in_args.name = name;
    in_args.defaultValue = defaultValue;
    getParamBool(p, &in_args, out_args);
}

void getParamBool_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"getParamBool\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_getParamBool";

    getParamBool_in in_args;
    getParamBool_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 2)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (name)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (name) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.name));
            }
            CATCH_AND_RETHROW("read in arg 1 (name): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (defaultValue)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (defaultValue) of type bool
                simMoveStackItemToTopE(p->stackID, 0);
                read__bool(p->stackID, &(in_args.defaultValue));
            }
            CATCH_AND_RETHROW("read in arg 2 (defaultValue): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        getParamBool(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack

        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 1 (exists)..." << std::endl;
#endif // DEBUG

            // write output argument 1 (exists) of type bool
            write__bool((out_args.exists), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 1 (exists): ")
        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 2 (value)..." << std::endl;
#endif // DEBUG

            // write output argument 2 (value) of type bool
            write__bool((out_args.value), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 2 (value): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

setParamString_in::setParamString_in()
{
}

setParamString_out::setParamString_out()
{
}

void setParamString(SScriptCallBack *p, setParamString_in *in_args, setParamString_out *out_args)
{
    setParamString(p, "simExtRosInterface_setParamString", in_args, out_args);
}

void setParamString(SScriptCallBack *p, std::string name, std::string value)
{
    setParamString_in in_args;
    in_args.name = name;
    in_args.value = value;
    setParamString_out out_args;
    setParamString(p, &in_args, &out_args);
}

void setParamString(SScriptCallBack *p, setParamString_out *out_args, std::string name, std::string value)
{
    setParamString_in in_args;
    in_args.name = name;
    in_args.value = value;
    setParamString(p, &in_args, out_args);
}

void setParamString_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"setParamString\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_setParamString";

    setParamString_in in_args;
    setParamString_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 2)
            throw exception("not enough arguments");
        if(numArgs > 2)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (name)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (name) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.name));
            }
            CATCH_AND_RETHROW("read in arg 1 (name): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (value)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (value) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.value));
            }
            CATCH_AND_RETHROW("read in arg 2 (value): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        setParamString(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

setParamInt_in::setParamInt_in()
{
}

setParamInt_out::setParamInt_out()
{
}

void setParamInt(SScriptCallBack *p, setParamInt_in *in_args, setParamInt_out *out_args)
{
    setParamInt(p, "simExtRosInterface_setParamInt", in_args, out_args);
}

void setParamInt(SScriptCallBack *p, std::string name, int value)
{
    setParamInt_in in_args;
    in_args.name = name;
    in_args.value = value;
    setParamInt_out out_args;
    setParamInt(p, &in_args, &out_args);
}

void setParamInt(SScriptCallBack *p, setParamInt_out *out_args, std::string name, int value)
{
    setParamInt_in in_args;
    in_args.name = name;
    in_args.value = value;
    setParamInt(p, &in_args, out_args);
}

void setParamInt_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"setParamInt\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_setParamInt";

    setParamInt_in in_args;
    setParamInt_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 2)
            throw exception("not enough arguments");
        if(numArgs > 2)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (name)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (name) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.name));
            }
            CATCH_AND_RETHROW("read in arg 1 (name): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (value)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (value) of type int
                simMoveStackItemToTopE(p->stackID, 0);
                read__int(p->stackID, &(in_args.value));
            }
            CATCH_AND_RETHROW("read in arg 2 (value): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        setParamInt(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

setParamDouble_in::setParamDouble_in()
{
}

setParamDouble_out::setParamDouble_out()
{
}

void setParamDouble(SScriptCallBack *p, setParamDouble_in *in_args, setParamDouble_out *out_args)
{
    setParamDouble(p, "simExtRosInterface_setParamDouble", in_args, out_args);
}

void setParamDouble(SScriptCallBack *p, std::string name, double value)
{
    setParamDouble_in in_args;
    in_args.name = name;
    in_args.value = value;
    setParamDouble_out out_args;
    setParamDouble(p, &in_args, &out_args);
}

void setParamDouble(SScriptCallBack *p, setParamDouble_out *out_args, std::string name, double value)
{
    setParamDouble_in in_args;
    in_args.name = name;
    in_args.value = value;
    setParamDouble(p, &in_args, out_args);
}

void setParamDouble_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"setParamDouble\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_setParamDouble";

    setParamDouble_in in_args;
    setParamDouble_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 2)
            throw exception("not enough arguments");
        if(numArgs > 2)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (name)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (name) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.name));
            }
            CATCH_AND_RETHROW("read in arg 1 (name): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (value)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (value) of type double
                simMoveStackItemToTopE(p->stackID, 0);
                read__double(p->stackID, &(in_args.value));
            }
            CATCH_AND_RETHROW("read in arg 2 (value): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        setParamDouble(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

setParamBool_in::setParamBool_in()
{
}

setParamBool_out::setParamBool_out()
{
}

void setParamBool(SScriptCallBack *p, setParamBool_in *in_args, setParamBool_out *out_args)
{
    setParamBool(p, "simExtRosInterface_setParamBool", in_args, out_args);
}

void setParamBool(SScriptCallBack *p, std::string name, bool value)
{
    setParamBool_in in_args;
    in_args.name = name;
    in_args.value = value;
    setParamBool_out out_args;
    setParamBool(p, &in_args, &out_args);
}

void setParamBool(SScriptCallBack *p, setParamBool_out *out_args, std::string name, bool value)
{
    setParamBool_in in_args;
    in_args.name = name;
    in_args.value = value;
    setParamBool(p, &in_args, out_args);
}

void setParamBool_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"setParamBool\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_setParamBool";

    setParamBool_in in_args;
    setParamBool_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 2)
            throw exception("not enough arguments");
        if(numArgs > 2)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (name)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (name) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.name));
            }
            CATCH_AND_RETHROW("read in arg 1 (name): ")
        }

        if(numArgs >= 2)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 2 (value)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 2 (value) of type bool
                simMoveStackItemToTopE(p->stackID, 0);
                read__bool(p->stackID, &(in_args.value));
            }
            CATCH_AND_RETHROW("read in arg 2 (value): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        setParamBool(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

hasParam_in::hasParam_in()
{
}

hasParam_out::hasParam_out()
{
}

void hasParam(SScriptCallBack *p, hasParam_in *in_args, hasParam_out *out_args)
{
    hasParam(p, "simExtRosInterface_hasParam", in_args, out_args);
}

bool hasParam(SScriptCallBack *p, std::string name)
{
    hasParam_in in_args;
    in_args.name = name;
    hasParam_out out_args;
    hasParam(p, &in_args, &out_args);
    return out_args.exists;
}

void hasParam(SScriptCallBack *p, hasParam_out *out_args, std::string name)
{
    hasParam_in in_args;
    in_args.name = name;
    hasParam(p, &in_args, out_args);
}

void hasParam_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"hasParam\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_hasParam";

    hasParam_in in_args;
    hasParam_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (name)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (name) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.name));
            }
            CATCH_AND_RETHROW("read in arg 1 (name): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        hasParam(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack

        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 1 (exists)..." << std::endl;
#endif // DEBUG

            // write output argument 1 (exists) of type bool
            write__bool((out_args.exists), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 1 (exists): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

deleteParam_in::deleteParam_in()
{
}

deleteParam_out::deleteParam_out()
{
}

void deleteParam(SScriptCallBack *p, deleteParam_in *in_args, deleteParam_out *out_args)
{
    deleteParam(p, "simExtRosInterface_deleteParam", in_args, out_args);
}

void deleteParam(SScriptCallBack *p, std::string name)
{
    deleteParam_in in_args;
    in_args.name = name;
    deleteParam_out out_args;
    deleteParam(p, &in_args, &out_args);
}

void deleteParam(SScriptCallBack *p, deleteParam_out *out_args, std::string name)
{
    deleteParam_in in_args;
    in_args.name = name;
    deleteParam(p, &in_args, out_args);
}

void deleteParam_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"deleteParam\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_deleteParam";

    deleteParam_in in_args;
    deleteParam_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (name)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (name) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.name));
            }
            CATCH_AND_RETHROW("read in arg 1 (name): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        deleteParam(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

searchParam_in::searchParam_in()
{
}

searchParam_out::searchParam_out()
{
}

void searchParam(SScriptCallBack *p, searchParam_in *in_args, searchParam_out *out_args)
{
    searchParam(p, "simExtRosInterface_searchParam", in_args, out_args);
}

void searchParam(SScriptCallBack *p, searchParam_out *out_args, std::string name)
{
    searchParam_in in_args;
    in_args.name = name;
    searchParam(p, &in_args, out_args);
}

void searchParam_callback(SScriptCallBack *p)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback for \"searchParam\"..." << std::endl;
        std::cout << "DEBUG_STUBS: reading input arguments..." << std::endl;
        simDebugStack(p->stackID, -1);
    }
#endif // DEBUG

    const char *cmd = "simExtRosInterface_searchParam";

    searchParam_in in_args;
    searchParam_out out_args;

    try
    {
        // check argument count

        int numArgs = simGetStackSizeE(p->stackID);
        if(numArgs < 1)
            throw exception("not enough arguments");
        if(numArgs > 1)
            throw exception("too many arguments");

        // read input arguments from stack

        if(numArgs >= 1)
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: reading input argument 1 (name)..." << std::endl;
#endif // DEBUG

            try
            {
                // read input argument 1 (name) of type std::string
                simMoveStackItemToTopE(p->stackID, 0);
                read__std__string(p->stackID, &(in_args.name));
            }
            CATCH_AND_RETHROW("read in arg 1 (name): ")
        }


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);

        searchParam(p, cmd, &in_args, &out_args);
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
    }

    try
    {
#ifdef DEBUG
        if(isDebugStubsEnabled())
        {
            std::cout << "DEBUG_STUBS: writing output arguments..." << std::endl;
            simDebugStack(p->stackID, -1);
        }
#endif // DEBUG

        // clear stack
        simPopStackItemE(p->stackID, 0);


        // write output arguments to stack

        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 1 (found)..." << std::endl;
#endif // DEBUG

            // write output argument 1 (found) of type bool
            write__bool((out_args.found), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 1 (found): ")
        try
        {
#ifdef DEBUG
            if(isDebugStubsEnabled())
                std::cout << "DEBUG_STUBS: writing output argument 2 (name)..." << std::endl;
#endif // DEBUG

            // write output argument 2 (name) of type std::string
            write__std__string((out_args.name), p->stackID);
        }
        CATCH_AND_RETHROW("write out arg 2 (name): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(p->stackID, -1);
#endif // DEBUG
    }
    catch(std::exception& e)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << e.what() << std::endl;
#endif
        simSetLastError(cmd, e.what());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(std::string& s)
    {
#ifdef DEBUG
        std::cerr << cmd << ": " << s << std::endl;
#endif
        simSetLastError(cmd, s.c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
    catch(int& n)
    {
        std::stringstream ss;
        ss << "error #" << n;
#ifdef DEBUG
        std::cerr << cmd << ": " << ss.str() << std::endl;
#endif
        simSetLastError(cmd, ss.str().c_str());
        // clear stack
        simPopStackItem(p->stackID, 0); // don't throw
    }
}

subscriberCallback_in::subscriberCallback_in()
{
}

subscriberCallback_out::subscriberCallback_out()
{
}

bool subscriberCallback(simInt scriptId, const char *func, subscriberCallback_in *in_args, subscriberCallback_out *out_args)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback function for \"subscriberCallback\"..." << std::endl;
        std::cout << "DEBUG_STUBS: writing input arguments..." << std::endl;
    }
#endif // DEBUG

    int stackID = -1;

    try
    {
        stackID = simCreateStackE();

        // write input arguments to stack


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(stackID, -1);
#endif // DEBUG

        simCallScriptFunctionExE(scriptId, func, stackID);

        // read output arguments from stack

#ifdef DEBUG
        if(isDebugStubsEnabled())
            std::cout << "DEBUG_STUBS: reading output arguments..." << std::endl;
#endif // DEBUG


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(stackID, -1);
#endif // DEBUG

        simReleaseStackE(stackID);
        stackID = -1;
    }
    catch(std::exception& ex)
    {
        if(stackID != -1)
            simReleaseStack(stackID); // don't throw
        simSetLastError(func, ex.what());
        return false;
    }
    catch(std::string& s)
    {
        if(stackID != -1)
            simReleaseStack(stackID); // don't throw
        simSetLastError(func, s.c_str());
        return false;
    }
    catch(int& n)
    {
        if(stackID != -1)
            simReleaseStack(stackID); // don't throw
        std::stringstream ss;
        ss << "error #" << n;
        simSetLastError(func, ss.str().c_str());
        return false;
    }

    return true;
}

imageTransportCallback_in::imageTransportCallback_in()
{
}

imageTransportCallback_out::imageTransportCallback_out()
{
}

bool imageTransportCallback(simInt scriptId, const char *func, imageTransportCallback_in *in_args, imageTransportCallback_out *out_args)
{
#ifdef DEBUG
    if(isDebugStubsEnabled())
    {
        std::cout << "DEBUG_STUBS: script callback function for \"imageTransportCallback\"..." << std::endl;
        std::cout << "DEBUG_STUBS: writing input arguments..." << std::endl;
    }
#endif // DEBUG

    int stackID = -1;

    try
    {
        stackID = simCreateStackE();

        // write input arguments to stack

        try
        {
            // write input argument 1 (data) of type std::string
            write__std__string((in_args->data), stackID);
        }
        CATCH_AND_RETHROW("writing input argument 1 (data): ")
        try
        {
            // write input argument 2 (width) of type int
            write__int((in_args->width), stackID);
        }
        CATCH_AND_RETHROW("writing input argument 2 (width): ")
        try
        {
            // write input argument 3 (height) of type int
            write__int((in_args->height), stackID);
        }
        CATCH_AND_RETHROW("writing input argument 3 (height): ")

#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(stackID, -1);
#endif // DEBUG

        simCallScriptFunctionExE(scriptId, func, stackID);

        // read output arguments from stack

#ifdef DEBUG
        if(isDebugStubsEnabled())
            std::cout << "DEBUG_STUBS: reading output arguments..." << std::endl;
#endif // DEBUG


#ifdef DEBUG
        if(isDebugStubsEnabled())
            simDebugStack(stackID, -1);
#endif // DEBUG

        simReleaseStackE(stackID);
        stackID = -1;
    }
    catch(std::exception& ex)
    {
        if(stackID != -1)
            simReleaseStack(stackID); // don't throw
        simSetLastError(func, ex.what());
        return false;
    }
    catch(std::string& s)
    {
        if(stackID != -1)
            simReleaseStack(stackID); // don't throw
        simSetLastError(func, s.c_str());
        return false;
    }
    catch(int& n)
    {
        if(stackID != -1)
            simReleaseStack(stackID); // don't throw
        std::stringstream ss;
        ss << "error #" << n;
        simSetLastError(func, ss.str().c_str());
        return false;
    }

    return true;
}

