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

class JointVelocities {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.poisonStamp = null;
      this.velocities = null;
    }
    else {
      if (initObj.hasOwnProperty('poisonStamp')) {
        this.poisonStamp = initObj.poisonStamp
      }
      else {
        this.poisonStamp = new Poison();
      }
      if (initObj.hasOwnProperty('velocities')) {
        this.velocities = initObj.velocities
      }
      else {
        this.velocities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointVelocities
    // Serialize message field [poisonStamp]
    bufferOffset = Poison.serialize(obj.poisonStamp, buffer, bufferOffset);
    // Serialize message field [velocities]
    // Serialize the length for message field [velocities]
    bufferOffset = _serializer.uint32(obj.velocities.length, buffer, bufferOffset);
    obj.velocities.forEach((val) => {
      bufferOffset = JointValue.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointVelocities
    let len;
    let data = new JointVelocities(null);
    // Deserialize message field [poisonStamp]
    data.poisonStamp = Poison.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocities]
    // Deserialize array length for message field [velocities]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.velocities = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.velocities[i] = JointValue.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Poison.getMessageSize(object.poisonStamp);
    object.velocities.forEach((val) => {
      length += JointValue.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'brics_actuator/JointVelocities';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9786afc900be50b3ba4113fcb65c9363';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Poison poisonStamp
    JointValue[] velocities
    
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
    const resolved = new JointVelocities(null);
    if (msg.poisonStamp !== undefined) {
      resolved.poisonStamp = Poison.Resolve(msg.poisonStamp)
    }
    else {
      resolved.poisonStamp = new Poison()
    }

    if (msg.velocities !== undefined) {
      resolved.velocities = new Array(msg.velocities.length);
      for (let i = 0; i < resolved.velocities.length; ++i) {
        resolved.velocities[i] = JointValue.Resolve(msg.velocities[i]);
      }
    }
    else {
      resolved.velocities = []
    }

    return resolved;
    }
};

module.exports = JointVelocities;
