// Auto-generated. Do not edit!

// (in-package brics_actuator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointValue = require('./JointValue.js');

//-----------------------------------------------------------

class JointConstraint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = new JointValue();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointConstraint
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = JointValue.serialize(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointConstraint
    let len;
    let data = new JointConstraint(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = JointValue.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.type.length;
    length += JointValue.getMessageSize(object.value);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'brics_actuator/JointConstraint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f77db04949b26b64f80564df22f00ecb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type  		#smaller, greater, equal or <, >, =
    JointValue value
    
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
    const resolved = new JointConstraint(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    if (msg.value !== undefined) {
      resolved.value = JointValue.Resolve(msg.value)
    }
    else {
      resolved.value = new JointValue()
    }

    return resolved;
    }
};

module.exports = JointConstraint;
