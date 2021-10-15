// Auto-generated. Do not edit!

// (in-package cardriver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class control_tx {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.aimode = null;
      this.drive_vector = null;
      this.drive_throttle = null;
      this.steer_degree = null;
      this.steer_raw = null;
      this.signal = null;
      this.lamp = null;
      this.horn = null;
      this.embed_custom_a = null;
      this.embed_custom_b = null;
    }
    else {
      if (initObj.hasOwnProperty('aimode')) {
        this.aimode = initObj.aimode
      }
      else {
        this.aimode = 0;
      }
      if (initObj.hasOwnProperty('drive_vector')) {
        this.drive_vector = initObj.drive_vector
      }
      else {
        this.drive_vector = 0;
      }
      if (initObj.hasOwnProperty('drive_throttle')) {
        this.drive_throttle = initObj.drive_throttle
      }
      else {
        this.drive_throttle = 0;
      }
      if (initObj.hasOwnProperty('steer_degree')) {
        this.steer_degree = initObj.steer_degree
      }
      else {
        this.steer_degree = 0;
      }
      if (initObj.hasOwnProperty('steer_raw')) {
        this.steer_raw = initObj.steer_raw
      }
      else {
        this.steer_raw = 0;
      }
      if (initObj.hasOwnProperty('signal')) {
        this.signal = initObj.signal
      }
      else {
        this.signal = 0;
      }
      if (initObj.hasOwnProperty('lamp')) {
        this.lamp = initObj.lamp
      }
      else {
        this.lamp = 0;
      }
      if (initObj.hasOwnProperty('horn')) {
        this.horn = initObj.horn
      }
      else {
        this.horn = 0;
      }
      if (initObj.hasOwnProperty('embed_custom_a')) {
        this.embed_custom_a = initObj.embed_custom_a
      }
      else {
        this.embed_custom_a = 0;
      }
      if (initObj.hasOwnProperty('embed_custom_b')) {
        this.embed_custom_b = initObj.embed_custom_b
      }
      else {
        this.embed_custom_b = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type control_tx
    // Serialize message field [aimode]
    bufferOffset = _serializer.int32(obj.aimode, buffer, bufferOffset);
    // Serialize message field [drive_vector]
    bufferOffset = _serializer.int32(obj.drive_vector, buffer, bufferOffset);
    // Serialize message field [drive_throttle]
    bufferOffset = _serializer.int32(obj.drive_throttle, buffer, bufferOffset);
    // Serialize message field [steer_degree]
    bufferOffset = _serializer.int32(obj.steer_degree, buffer, bufferOffset);
    // Serialize message field [steer_raw]
    bufferOffset = _serializer.int32(obj.steer_raw, buffer, bufferOffset);
    // Serialize message field [signal]
    bufferOffset = _serializer.int32(obj.signal, buffer, bufferOffset);
    // Serialize message field [lamp]
    bufferOffset = _serializer.int32(obj.lamp, buffer, bufferOffset);
    // Serialize message field [horn]
    bufferOffset = _serializer.int32(obj.horn, buffer, bufferOffset);
    // Serialize message field [embed_custom_a]
    bufferOffset = _serializer.int32(obj.embed_custom_a, buffer, bufferOffset);
    // Serialize message field [embed_custom_b]
    bufferOffset = _serializer.int32(obj.embed_custom_b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type control_tx
    let len;
    let data = new control_tx(null);
    // Deserialize message field [aimode]
    data.aimode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [drive_vector]
    data.drive_vector = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [drive_throttle]
    data.drive_throttle = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steer_degree]
    data.steer_degree = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steer_raw]
    data.steer_raw = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [signal]
    data.signal = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [lamp]
    data.lamp = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [horn]
    data.horn = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [embed_custom_a]
    data.embed_custom_a = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [embed_custom_b]
    data.embed_custom_b = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cardriver/control_tx';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ba485599b2b943484c8d738d06c7fb7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 aimode
    int32 drive_vector
    int32 drive_throttle
    int32 steer_degree
    int32 steer_raw
    int32 signal
    int32 lamp
    int32 horn
    int32 embed_custom_a
    int32 embed_custom_b
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new control_tx(null);
    if (msg.aimode !== undefined) {
      resolved.aimode = msg.aimode;
    }
    else {
      resolved.aimode = 0
    }

    if (msg.drive_vector !== undefined) {
      resolved.drive_vector = msg.drive_vector;
    }
    else {
      resolved.drive_vector = 0
    }

    if (msg.drive_throttle !== undefined) {
      resolved.drive_throttle = msg.drive_throttle;
    }
    else {
      resolved.drive_throttle = 0
    }

    if (msg.steer_degree !== undefined) {
      resolved.steer_degree = msg.steer_degree;
    }
    else {
      resolved.steer_degree = 0
    }

    if (msg.steer_raw !== undefined) {
      resolved.steer_raw = msg.steer_raw;
    }
    else {
      resolved.steer_raw = 0
    }

    if (msg.signal !== undefined) {
      resolved.signal = msg.signal;
    }
    else {
      resolved.signal = 0
    }

    if (msg.lamp !== undefined) {
      resolved.lamp = msg.lamp;
    }
    else {
      resolved.lamp = 0
    }

    if (msg.horn !== undefined) {
      resolved.horn = msg.horn;
    }
    else {
      resolved.horn = 0
    }

    if (msg.embed_custom_a !== undefined) {
      resolved.embed_custom_a = msg.embed_custom_a;
    }
    else {
      resolved.embed_custom_a = 0
    }

    if (msg.embed_custom_b !== undefined) {
      resolved.embed_custom_b = msg.embed_custom_b;
    }
    else {
      resolved.embed_custom_b = 0
    }

    return resolved;
    }
};

module.exports = control_tx;
