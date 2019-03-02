// Auto-generated. Do not edit!

// (in-package brics_actuator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointValue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timeStamp = null;
      this.joint_uri = null;
      this.unit = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('joint_uri')) {
        this.joint_uri = initObj.joint_uri
      }
      else {
        this.joint_uri = '';
      }
      if (initObj.hasOwnProperty('unit')) {
        this.unit = initObj.unit
      }
      else {
        this.unit = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointValue
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.time(obj.timeStamp, buffer, bufferOffset);
    // Serialize message field [joint_uri]
    bufferOffset = _serializer.string(obj.joint_uri, buffer, bufferOffset);
    // Serialize message field [unit]
    bufferOffset = _serializer.string(obj.unit, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.float64(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointValue
    let len;
    let data = new JointValue(null);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [joint_uri]
    data.joint_uri = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [unit]
    data.unit = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.joint_uri.length;
    length += object.unit.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'brics_actuator/JointValue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8dad5a006889ad7de711a684999f0c6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new JointValue(null);
    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = {secs: 0, nsecs: 0}
    }

    if (msg.joint_uri !== undefined) {
      resolved.joint_uri = msg.joint_uri;
    }
    else {
      resolved.joint_uri = ''
    }

    if (msg.unit !== undefined) {
      resolved.unit = msg.unit;
    }
    else {
      resolved.unit = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0.0
    }

    return resolved;
    }
};

module.exports = JointValue;
