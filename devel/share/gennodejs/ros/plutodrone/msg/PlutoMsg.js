// Auto-generated. Do not edit!

// (in-package plutodrone.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PlutoMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rcRoll = null;
      this.rcPitch = null;
      this.rcYaw = null;
      this.rcThrottle = null;
      this.rcAUX1 = null;
      this.rcAUX2 = null;
      this.rcAUX3 = null;
      this.rcAUX4 = null;
      this.plutoIndex = null;
    }
    else {
      if (initObj.hasOwnProperty('rcRoll')) {
        this.rcRoll = initObj.rcRoll
      }
      else {
        this.rcRoll = 0;
      }
      if (initObj.hasOwnProperty('rcPitch')) {
        this.rcPitch = initObj.rcPitch
      }
      else {
        this.rcPitch = 0;
      }
      if (initObj.hasOwnProperty('rcYaw')) {
        this.rcYaw = initObj.rcYaw
      }
      else {
        this.rcYaw = 0;
      }
      if (initObj.hasOwnProperty('rcThrottle')) {
        this.rcThrottle = initObj.rcThrottle
      }
      else {
        this.rcThrottle = 0;
      }
      if (initObj.hasOwnProperty('rcAUX1')) {
        this.rcAUX1 = initObj.rcAUX1
      }
      else {
        this.rcAUX1 = 0;
      }
      if (initObj.hasOwnProperty('rcAUX2')) {
        this.rcAUX2 = initObj.rcAUX2
      }
      else {
        this.rcAUX2 = 0;
      }
      if (initObj.hasOwnProperty('rcAUX3')) {
        this.rcAUX3 = initObj.rcAUX3
      }
      else {
        this.rcAUX3 = 0;
      }
      if (initObj.hasOwnProperty('rcAUX4')) {
        this.rcAUX4 = initObj.rcAUX4
      }
      else {
        this.rcAUX4 = 0;
      }
      if (initObj.hasOwnProperty('plutoIndex')) {
        this.plutoIndex = initObj.plutoIndex
      }
      else {
        this.plutoIndex = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlutoMsg
    // Serialize message field [rcRoll]
    bufferOffset = _serializer.int64(obj.rcRoll, buffer, bufferOffset);
    // Serialize message field [rcPitch]
    bufferOffset = _serializer.int64(obj.rcPitch, buffer, bufferOffset);
    // Serialize message field [rcYaw]
    bufferOffset = _serializer.int64(obj.rcYaw, buffer, bufferOffset);
    // Serialize message field [rcThrottle]
    bufferOffset = _serializer.int64(obj.rcThrottle, buffer, bufferOffset);
    // Serialize message field [rcAUX1]
    bufferOffset = _serializer.int64(obj.rcAUX1, buffer, bufferOffset);
    // Serialize message field [rcAUX2]
    bufferOffset = _serializer.int64(obj.rcAUX2, buffer, bufferOffset);
    // Serialize message field [rcAUX3]
    bufferOffset = _serializer.int64(obj.rcAUX3, buffer, bufferOffset);
    // Serialize message field [rcAUX4]
    bufferOffset = _serializer.int64(obj.rcAUX4, buffer, bufferOffset);
    // Serialize message field [plutoIndex]
    bufferOffset = _serializer.int64(obj.plutoIndex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlutoMsg
    let len;
    let data = new PlutoMsg(null);
    // Deserialize message field [rcRoll]
    data.rcRoll = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rcPitch]
    data.rcPitch = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rcYaw]
    data.rcYaw = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rcThrottle]
    data.rcThrottle = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rcAUX1]
    data.rcAUX1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rcAUX2]
    data.rcAUX2 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rcAUX3]
    data.rcAUX3 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [rcAUX4]
    data.rcAUX4 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [plutoIndex]
    data.plutoIndex = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'plutodrone/PlutoMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f7fa0d15465731dd6d5e23cfeac6edf4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 rcRoll
    int64 rcPitch
    int64 rcYaw
    int64 rcThrottle
    int64 rcAUX1
    int64 rcAUX2
    int64 rcAUX3
    int64 rcAUX4
    int64 plutoIndex
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlutoMsg(null);
    if (msg.rcRoll !== undefined) {
      resolved.rcRoll = msg.rcRoll;
    }
    else {
      resolved.rcRoll = 0
    }

    if (msg.rcPitch !== undefined) {
      resolved.rcPitch = msg.rcPitch;
    }
    else {
      resolved.rcPitch = 0
    }

    if (msg.rcYaw !== undefined) {
      resolved.rcYaw = msg.rcYaw;
    }
    else {
      resolved.rcYaw = 0
    }

    if (msg.rcThrottle !== undefined) {
      resolved.rcThrottle = msg.rcThrottle;
    }
    else {
      resolved.rcThrottle = 0
    }

    if (msg.rcAUX1 !== undefined) {
      resolved.rcAUX1 = msg.rcAUX1;
    }
    else {
      resolved.rcAUX1 = 0
    }

    if (msg.rcAUX2 !== undefined) {
      resolved.rcAUX2 = msg.rcAUX2;
    }
    else {
      resolved.rcAUX2 = 0
    }

    if (msg.rcAUX3 !== undefined) {
      resolved.rcAUX3 = msg.rcAUX3;
    }
    else {
      resolved.rcAUX3 = 0
    }

    if (msg.rcAUX4 !== undefined) {
      resolved.rcAUX4 = msg.rcAUX4;
    }
    else {
      resolved.rcAUX4 = 0
    }

    if (msg.plutoIndex !== undefined) {
      resolved.plutoIndex = msg.plutoIndex;
    }
    else {
      resolved.plutoIndex = 0
    }

    return resolved;
    }
};

module.exports = PlutoMsg;
