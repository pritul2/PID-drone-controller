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

class JointAccelerations {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.poisonStamp = null;
      this.accelerations = null;
    }
    else {
      if (initObj.hasOwnProperty('poisonStamp')) {
        this.poisonStamp = initObj.poisonStamp
      }
      else {
        this.poisonStamp = new Poison();
      }
      if (initObj.hasOwnProperty('accelerations')) {
        this.accelerations = initObj.accelerations
      }
      else {
        this.accelerations = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointAccelerations
    // Serialize message field [poisonStamp]
    bufferOffset = Poison.serialize(obj.poisonStamp, buffer, bufferOffset);
    // Serialize message field [accelerations]
    // Serialize the length for message field [accelerations]
    bufferOffset = _serializer.uint32(obj.accelerations.length, buffer, bufferOffset);
    obj.accelerations.forEach((val) => {
      bufferOffset = JointValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointAccelerations
    let len;
    let data = new JointAccelerations(null);
    // Deserialize message field [poisonStamp]
    data.poisonStamp = Poison.deserialize(buffer, bufferOffset);
    // Deserialize message field [accelerations]
    // Deserialize array length for message field [accelerations]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.accelerations = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.accelerations[i] = JointValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Poison.getMessageSize(object.poisonStamp);
    object.accelerations.forEach((val) => {
      length += JointValue.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'brics_actuator/JointAccelerations';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f904d45aa2c1d97ea9e99a3ba4e3610e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Poison poisonStamp
    JointValue[] accelerations
    
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
    const resolved = new JointAccelerations(null);
    if (msg.poisonStamp !== undefined) {
      resolved.poisonStamp = Poison.Resolve(msg.poisonStamp)
    }
    else {
      resolved.poisonStamp = new Poison()
    }

    if (msg.accelerations !== undefined) {
      resolved.accelerations = new Array(msg.accelerations.length);
      for (let i = 0; i < resolved.accelerations.length; ++i) {
        resolved.accelerations[i] = JointValue.Resolve(msg.accelerations[i]);
      }
    }
    else {
      resolved.accelerations = []
    }

    return resolved;
    }
};

module.exports = JointAccelerations;
