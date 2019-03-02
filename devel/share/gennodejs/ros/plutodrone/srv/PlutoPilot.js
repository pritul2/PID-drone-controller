// Auto-generated. Do not edit!

// (in-package plutodrone.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PlutoPilotRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roll = null;
      this.pitch = null;
      this.yaw = null;
      this.accX = null;
      this.accY = null;
      this.accZ = null;
      this.gyroX = null;
      this.gyroY = null;
      this.gyroZ = null;
      this.magX = null;
      this.magY = null;
      this.magZ = null;
      this.alt = null;
    }
    else {
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0;
      }
      if (initObj.hasOwnProperty('accX')) {
        this.accX = initObj.accX
      }
      else {
        this.accX = 0.0;
      }
      if (initObj.hasOwnProperty('accY')) {
        this.accY = initObj.accY
      }
      else {
        this.accY = 0.0;
      }
      if (initObj.hasOwnProperty('accZ')) {
        this.accZ = initObj.accZ
      }
      else {
        this.accZ = 0.0;
      }
      if (initObj.hasOwnProperty('gyroX')) {
        this.gyroX = initObj.gyroX
      }
      else {
        this.gyroX = 0.0;
      }
      if (initObj.hasOwnProperty('gyroY')) {
        this.gyroY = initObj.gyroY
      }
      else {
        this.gyroY = 0.0;
      }
      if (initObj.hasOwnProperty('gyroZ')) {
        this.gyroZ = initObj.gyroZ
      }
      else {
        this.gyroZ = 0.0;
      }
      if (initObj.hasOwnProperty('magX')) {
        this.magX = initObj.magX
      }
      else {
        this.magX = 0.0;
      }
      if (initObj.hasOwnProperty('magY')) {
        this.magY = initObj.magY
      }
      else {
        this.magY = 0.0;
      }
      if (initObj.hasOwnProperty('magZ')) {
        this.magZ = initObj.magZ
      }
      else {
        this.magZ = 0.0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlutoPilotRequest
    // Serialize message field [roll]
    bufferOffset = _serializer.int32(obj.roll, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.int32(obj.pitch, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.int32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [accX]
    bufferOffset = _serializer.float32(obj.accX, buffer, bufferOffset);
    // Serialize message field [accY]
    bufferOffset = _serializer.float32(obj.accY, buffer, bufferOffset);
    // Serialize message field [accZ]
    bufferOffset = _serializer.float32(obj.accZ, buffer, bufferOffset);
    // Serialize message field [gyroX]
    bufferOffset = _serializer.float32(obj.gyroX, buffer, bufferOffset);
    // Serialize message field [gyroY]
    bufferOffset = _serializer.float32(obj.gyroY, buffer, bufferOffset);
    // Serialize message field [gyroZ]
    bufferOffset = _serializer.float32(obj.gyroZ, buffer, bufferOffset);
    // Serialize message field [magX]
    bufferOffset = _serializer.float32(obj.magX, buffer, bufferOffset);
    // Serialize message field [magY]
    bufferOffset = _serializer.float32(obj.magY, buffer, bufferOffset);
    // Serialize message field [magZ]
    bufferOffset = _serializer.float32(obj.magZ, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float32(obj.alt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlutoPilotRequest
    let len;
    let data = new PlutoPilotRequest(null);
    // Deserialize message field [roll]
    data.roll = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [accX]
    data.accX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accY]
    data.accY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accZ]
    data.accZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyroX]
    data.gyroX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyroY]
    data.gyroY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyroZ]
    data.gyroZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [magX]
    data.magX = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [magY]
    data.magY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [magZ]
    data.magZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plutodrone/PlutoPilotRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e61791776d560375085144e1668140e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    int32 roll
    int32 pitch
    int32 yaw
    float32 accX
    float32 accY
    float32 accZ
    float32 gyroX
    float32 gyroY
    float32 gyroZ
    float32 magX
    float32 magY
    float32 magZ
    float32 alt
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlutoPilotRequest(null);
    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0
    }

    if (msg.accX !== undefined) {
      resolved.accX = msg.accX;
    }
    else {
      resolved.accX = 0.0
    }

    if (msg.accY !== undefined) {
      resolved.accY = msg.accY;
    }
    else {
      resolved.accY = 0.0
    }

    if (msg.accZ !== undefined) {
      resolved.accZ = msg.accZ;
    }
    else {
      resolved.accZ = 0.0
    }

    if (msg.gyroX !== undefined) {
      resolved.gyroX = msg.gyroX;
    }
    else {
      resolved.gyroX = 0.0
    }

    if (msg.gyroY !== undefined) {
      resolved.gyroY = msg.gyroY;
    }
    else {
      resolved.gyroY = 0.0
    }

    if (msg.gyroZ !== undefined) {
      resolved.gyroZ = msg.gyroZ;
    }
    else {
      resolved.gyroZ = 0.0
    }

    if (msg.magX !== undefined) {
      resolved.magX = msg.magX;
    }
    else {
      resolved.magX = 0.0
    }

    if (msg.magY !== undefined) {
      resolved.magY = msg.magY;
    }
    else {
      resolved.magY = 0.0
    }

    if (msg.magZ !== undefined) {
      resolved.magZ = msg.magZ;
    }
    else {
      resolved.magZ = 0.0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    return resolved;
    }
};

class PlutoPilotResponse {
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlutoPilotResponse
    // Serialize message field [rcRoll]
    bufferOffset = _serializer.int32(obj.rcRoll, buffer, bufferOffset);
    // Serialize message field [rcPitch]
    bufferOffset = _serializer.int32(obj.rcPitch, buffer, bufferOffset);
    // Serialize message field [rcYaw]
    bufferOffset = _serializer.int32(obj.rcYaw, buffer, bufferOffset);
    // Serialize message field [rcThrottle]
    bufferOffset = _serializer.int32(obj.rcThrottle, buffer, bufferOffset);
    // Serialize message field [rcAUX1]
    bufferOffset = _serializer.int32(obj.rcAUX1, buffer, bufferOffset);
    // Serialize message field [rcAUX2]
    bufferOffset = _serializer.int32(obj.rcAUX2, buffer, bufferOffset);
    // Serialize message field [rcAUX3]
    bufferOffset = _serializer.int32(obj.rcAUX3, buffer, bufferOffset);
    // Serialize message field [rcAUX4]
    bufferOffset = _serializer.int32(obj.rcAUX4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlutoPilotResponse
    let len;
    let data = new PlutoPilotResponse(null);
    // Deserialize message field [rcRoll]
    data.rcRoll = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rcPitch]
    data.rcPitch = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rcYaw]
    data.rcYaw = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rcThrottle]
    data.rcThrottle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rcAUX1]
    data.rcAUX1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rcAUX2]
    data.rcAUX2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rcAUX3]
    data.rcAUX3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rcAUX4]
    data.rcAUX4 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'plutodrone/PlutoPilotResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7a7b135453cda7e71490802dabf7edd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    int32 rcRoll
    int32 rcPitch
    int32 rcYaw
    int32 rcThrottle
    int32 rcAUX1
    int32 rcAUX2
    int32 rcAUX3
    int32 rcAUX4
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlutoPilotResponse(null);
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

    return resolved;
    }
};

module.exports = {
  Request: PlutoPilotRequest,
  Response: PlutoPilotResponse,
  md5sum() { return 'a9cb76ac323ce16acce1b8357e8cbb55'; },
  datatype() { return 'plutodrone/PlutoPilot'; }
};
