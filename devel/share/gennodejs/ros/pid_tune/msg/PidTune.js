// Auto-generated. Do not edit!

// (in-package pid_tune.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PidTune {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Kp = null;
      this.Kd = null;
      this.Ki = null;
      this.Kp_z = null;
    }
    else {
      if (initObj.hasOwnProperty('Kp')) {
        this.Kp = initObj.Kp
      }
      else {
        this.Kp = 0;
      }
      if (initObj.hasOwnProperty('Kd')) {
        this.Kd = initObj.Kd
      }
      else {
        this.Kd = 0;
      }
      if (initObj.hasOwnProperty('Ki')) {
        this.Ki = initObj.Ki
      }
      else {
        this.Ki = 0;
      }
      if (initObj.hasOwnProperty('Kp_z')) {
        this.Kp_z = initObj.Kp_z
      }
      else {
        this.Kp_z = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PidTune
    // Serialize message field [Kp]
    bufferOffset = _serializer.int16(obj.Kp, buffer, bufferOffset);
    // Serialize message field [Kd]
    bufferOffset = _serializer.int16(obj.Kd, buffer, bufferOffset);
    // Serialize message field [Ki]
    bufferOffset = _serializer.int16(obj.Ki, buffer, bufferOffset);
    // Serialize message field [Kp_z]
    bufferOffset = _serializer.int16(obj.Kp_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PidTune
    let len;
    let data = new PidTune(null);
    // Deserialize message field [Kp]
    data.Kp = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Kd]
    data.Kd = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Ki]
    data.Ki = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [Kp_z]
    data.Kp_z = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pid_tune/PidTune';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c2da60e6140b798a4857caa11a7c01a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 Kp
    int16 Kd
    int16 Ki
    int16 Kp_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PidTune(null);
    if (msg.Kp !== undefined) {
      resolved.Kp = msg.Kp;
    }
    else {
      resolved.Kp = 0
    }

    if (msg.Kd !== undefined) {
      resolved.Kd = msg.Kd;
    }
    else {
      resolved.Kd = 0
    }

    if (msg.Ki !== undefined) {
      resolved.Ki = msg.Ki;
    }
    else {
      resolved.Ki = 0
    }

    if (msg.Kp_z !== undefined) {
      resolved.Kp_z = msg.Kp_z;
    }
    else {
      resolved.Kp_z = 0
    }

    return resolved;
    }
};

module.exports = PidTune;
