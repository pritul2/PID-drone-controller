// Auto-generated. Do not edit!

// (in-package brics_actuator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Poison = require('./Poison.js');
let JointValue = require('./JointValue.js');

//-----------------------------------------------------------

class JointTorques {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.poisonStamp = null;
      this.torques = null;
    }
    else {
      if (initObj.hasOwnProperty('poisonStamp')) {
        this.poisonStamp = initObj.poisonStamp
      }
      else {
        this.poisonStamp = new Poison();
      }
      if (initObj.hasOwnProperty('torques')) {
        this.torques = initObj.torques
      }
      else {
        this.torques = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointTorques
    // Serialize message field [poisonStamp]
    bufferOffset = Poison.serialize(obj.poisonStamp, buffer, bufferOffset);
    // Serialize message field [torques]
    // Serialize the length for message field [torques]
    bufferOffset = _serializer.uint32(obj.torques.length, buffer, bufferOffset);
    obj.torques.forEach((val) => {
      bufferOffset = JointValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointTorques
    let len;
    let data = new JointTorques(null);
    // Deserialize message field [poisonStamp]
    data.poisonStamp = Poison.deserialize(buffer, bufferOffset);
    // Deserialize message field [torques]
    // Deserialize array length for message field [torques]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.torques = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.torques[i] = JointValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Poison.getMessageSize(object.poisonStamp);
    object.torques.forEach((val) => {
      length += JointValue.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'brics_actuator/JointTorques';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75ccec429fa95e6b178bb9f3d06583e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Poison poisonStamp
    JointValue[] torques
    
    ================================================================================
    MSG: brics_actuator/Poison
    string originator 		# node id
    string description 		# encoding still an issue
    float32 qos			# reliability of the channel
    				# 0..1 where 1 means healthy
    
    ================================================================================
    MSG: brics_actuator/JointValue
    time timeStamp 		#time of the data 
    string joint_uri
    string unit 		#if empy expects si units, you can use boost::unit
    float64 value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointTorques(null);
    if (msg.poisonStamp !== undefined) {
      resolved.poisonStamp = Poison.Resolve(msg.poisonStamp)
    }
    else {
      resolved.poisonStamp = new Poison()
    }

    if (msg.torques !== undefined) {
      resolved.torques = new Array(msg.torques.length);
      for (let i = 0; i < resolved.torques.length; ++i) {
        resolved.torques[i] = JointValue.Resolve(msg.torques[i]);
      }
    }
    else {
      resolved.torques = []
    }

    return resolved;
    }
};

module.exports = JointTorques;
