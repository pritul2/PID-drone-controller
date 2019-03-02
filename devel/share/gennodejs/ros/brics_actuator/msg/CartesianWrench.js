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
let CartesianVector = require('./CartesianVector.js');

//-----------------------------------------------------------

class CartesianWrench {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timeStamp = null;
      this.poisonStamp = null;
      this.base_frame_uri = null;
      this.target_frame_uri = null;
      this.force = null;
      this.torque = null;
    }
    else {
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('poisonStamp')) {
        this.poisonStamp = initObj.poisonStamp
      }
      else {
        this.poisonStamp = new Poison();
      }
      if (initObj.hasOwnProperty('base_frame_uri')) {
        this.base_frame_uri = initObj.base_frame_uri
      }
      else {
        this.base_frame_uri = '';
      }
      if (initObj.hasOwnProperty('target_frame_uri')) {
        this.target_frame_uri = initObj.target_frame_uri
      }
      else {
        this.target_frame_uri = '';
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = new CartesianVector();
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = new CartesianVector();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CartesianWrench
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.time(obj.timeStamp, buffer, bufferOffset);
    // Serialize message field [poisonStamp]
    bufferOffset = Poison.serialize(obj.poisonStamp, buffer, bufferOffset);
    // Serialize message field [base_frame_uri]
    bufferOffset = _serializer.string(obj.base_frame_uri, buffer, bufferOffset);
    // Serialize message field [target_frame_uri]
    bufferOffset = _serializer.string(obj.target_frame_uri, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = CartesianVector.serialize(obj.force, buffer, bufferOffset);
    // Serialize message field [torque]
    bufferOffset = CartesianVector.serialize(obj.torque, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CartesianWrench
    let len;
    let data = new CartesianWrench(null);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [poisonStamp]
    data.poisonStamp = Poison.deserialize(buffer, bufferOffset);
    // Deserialize message field [base_frame_uri]
    data.base_frame_uri = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_frame_uri]
    data.target_frame_uri = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = CartesianVector.deserialize(buffer, bufferOffset);
    // Deserialize message field [torque]
    data.torque = CartesianVector.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Poison.getMessageSize(object.poisonStamp);
    length += object.base_frame_uri.length;
    length += object.target_frame_uri.length;
    length += CartesianVector.getMessageSize(object.force);
    length += CartesianVector.getMessageSize(object.torque);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'brics_actuator/CartesianWrench';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9db8d24ea10e69de8feff86a9b0fa93d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time timeStamp
    Poison poisonStamp
    string base_frame_uri
    string target_frame_uri
    # need some more frames?	
    CartesianVector force
    CartesianVector torque	
    
    ================================================================================
    MSG: brics_actuator/Poison
    string originator 		# node id
    string description 		# encoding still an issue
    float32 qos			# reliability of the channel
    				# 0..1 where 1 means healthy
    
    ================================================================================
    MSG: brics_actuator/CartesianVector
    string unit
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CartesianWrench(null);
    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = {secs: 0, nsecs: 0}
    }

    if (msg.poisonStamp !== undefined) {
      resolved.poisonStamp = Poison.Resolve(msg.poisonStamp)
    }
    else {
      resolved.poisonStamp = new Poison()
    }

    if (msg.base_frame_uri !== undefined) {
      resolved.base_frame_uri = msg.base_frame_uri;
    }
    else {
      resolved.base_frame_uri = ''
    }

    if (msg.target_frame_uri !== undefined) {
      resolved.target_frame_uri = msg.target_frame_uri;
    }
    else {
      resolved.target_frame_uri = ''
    }

    if (msg.force !== undefined) {
      resolved.force = CartesianVector.Resolve(msg.force)
    }
    else {
      resolved.force = new CartesianVector()
    }

    if (msg.torque !== undefined) {
      resolved.torque = CartesianVector.Resolve(msg.torque)
    }
    else {
      resolved.torque = new CartesianVector()
    }

    return resolved;
    }
};

module.exports = CartesianWrench;
