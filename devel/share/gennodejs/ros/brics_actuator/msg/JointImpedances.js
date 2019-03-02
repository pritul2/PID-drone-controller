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

class JointImpedances {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.poisonStamp = null;
      this.dampings = null;
      this.stiffnesses = null;
    }
    else {
      if (initObj.hasOwnProperty('poisonStamp')) {
        this.poisonStamp = initObj.poisonStamp
      }
      else {
        this.poisonStamp = new Poison();
      }
      if (initObj.hasOwnProperty('dampings')) {
        this.dampings = initObj.dampings
      }
      else {
        this.dampings = [];
      }
      if (initObj.hasOwnProperty('stiffnesses')) {
        this.stiffnesses = initObj.stiffnesses
      }
      else {
        this.stiffnesses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointImpedances
    // Serialize message field [poisonStamp]
    bufferOffset = Poison.serialize(obj.poisonStamp, buffer, bufferOffset);
    // Serialize message field [dampings]
    // Serialize the length for message field [dampings]
    bufferOffset = _serializer.uint32(obj.dampings.length, buffer, bufferOffset);
    obj.dampings.forEach((val) => {
      bufferOffset = JointValue.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [stiffnesses]
    // Serialize the length for message field [stiffnesses]
    bufferOffset = _serializer.uint32(obj.stiffnesses.length, buffer, bufferOffset);
    obj.stiffnesses.forEach((val) => {
      bufferOffset = JointValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointImpedances
    let len;
    let data = new JointImpedances(null);
    // Deserialize message field [poisonStamp]
    data.poisonStamp = Poison.deserialize(buffer, bufferOffset);
    // Deserialize message field [dampings]
    // Deserialize array length for message field [dampings]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.dampings = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.dampings[i] = JointValue.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [stiffnesses]
    // Deserialize array length for message field [stiffnesses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.stiffnesses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.stiffnesses[i] = JointValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Poison.getMessageSize(object.poisonStamp);
    object.dampings.forEach((val) => {
      length += JointValue.getMessageSize(val);
    });
    object.stiffnesses.forEach((val) => {
      length += JointValue.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'brics_actuator/JointImpedances';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14fdbb76121290f17525acd99e7242c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Poison poisonStamp
    JointValue[] dampings
    JointValue[] stiffnesses
    
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
    const resolved = new JointImpedances(null);
    if (msg.poisonStamp !== undefined) {
      resolved.poisonStamp = Poison.Resolve(msg.poisonStamp)
    }
    else {
      resolved.poisonStamp = new Poison()
    }

    if (msg.dampings !== undefined) {
      resolved.dampings = new Array(msg.dampings.length);
      for (let i = 0; i < resolved.dampings.length; ++i) {
        resolved.dampings[i] = JointValue.Resolve(msg.dampings[i]);
      }
    }
    else {
      resolved.dampings = []
    }

    if (msg.stiffnesses !== undefined) {
      resolved.stiffnesses = new Array(msg.stiffnesses.length);
      for (let i = 0; i < resolved.stiffnesses.length; ++i) {
        resolved.stiffnesses[i] = JointValue.Resolve(msg.stiffnesses[i]);
      }
    }
    else {
      resolved.stiffnesses = []
    }

    return resolved;
    }
};

module.exports = JointImpedances;
