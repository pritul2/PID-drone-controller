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

class Poison {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.originator = null;
      this.description = null;
      this.qos = null;
    }
    else {
      if (initObj.hasOwnProperty('originator')) {
        this.originator = initObj.originator
      }
      else {
        this.originator = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('qos')) {
        this.qos = initObj.qos
      }
      else {
        this.qos = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Poison
    // Serialize message field [originator]
    bufferOffset = _serializer.string(obj.originator, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [qos]
    bufferOffset = _serializer.float32(obj.qos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Poison
    let len;
    let data = new Poison(null);
    // Deserialize message field [originator]
    data.originator = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [qos]
    data.qos = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.originator.length;
    length += object.description.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'brics_actuator/Poison';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b16420a6fd4cc18f64b776ee10e98bb0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string originator 		# node id
    string description 		# encoding still an issue
    float32 qos			# reliability of the channel
    				# 0..1 where 1 means healthy
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Poison(null);
    if (msg.originator !== undefined) {
      resolved.originator = msg.originator;
    }
    else {
      resolved.originator = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.qos !== undefined) {
      resolved.qos = msg.qos;
    }
    else {
      resolved.qos = 0.0
    }

    return resolved;
    }
};

module.exports = Poison;
