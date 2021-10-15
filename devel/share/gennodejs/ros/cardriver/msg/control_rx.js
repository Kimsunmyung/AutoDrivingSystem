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

class control_rx {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.car_connected = null;
      this.steer_degree = null;
      this.steer_raw = null;
      this.steer_limit_left = null;
      this.steer_limit_center = null;
      this.steer_limit_right = null;
      this.rotor_hall = null;
      this.rotor_hall_l = null;
      this.rotor_hall_r = null;
      this.voltage = null;
      this.current_charging = null;
      this.current_discharging = null;
      this.drv_temperature = null;
      this.car_vector = null;
      this.car_lamp = null;
      this.car_signal = null;
      this.car_solidbrk = null;
      this.embed_custom_a = null;
      this.embed_custom_b = null;
    }
    else {
      if (initObj.hasOwnProperty('car_connected')) {
        this.car_connected = initObj.car_connected
      }
      else {
        this.car_connected = 0;
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
      if (initObj.hasOwnProperty('steer_limit_left')) {
        this.steer_limit_left = initObj.steer_limit_left
      }
      else {
        this.steer_limit_left = 0;
      }
      if (initObj.hasOwnProperty('steer_limit_center')) {
        this.steer_limit_center = initObj.steer_limit_center
      }
      else {
        this.steer_limit_center = 0;
      }
      if (initObj.hasOwnProperty('steer_limit_right')) {
        this.steer_limit_right = initObj.steer_limit_right
      }
      else {
        this.steer_limit_right = 0;
      }
      if (initObj.hasOwnProperty('rotor_hall')) {
        this.rotor_hall = initObj.rotor_hall
      }
      else {
        this.rotor_hall = 0;
      }
      if (initObj.hasOwnProperty('rotor_hall_l')) {
        this.rotor_hall_l = initObj.rotor_hall_l
      }
      else {
        this.rotor_hall_l = 0;
      }
      if (initObj.hasOwnProperty('rotor_hall_r')) {
        this.rotor_hall_r = initObj.rotor_hall_r
      }
      else {
        this.rotor_hall_r = 0;
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0;
      }
      if (initObj.hasOwnProperty('current_charging')) {
        this.current_charging = initObj.current_charging
      }
      else {
        this.current_charging = 0;
      }
      if (initObj.hasOwnProperty('current_discharging')) {
        this.current_discharging = initObj.current_discharging
      }
      else {
        this.current_discharging = 0;
      }
      if (initObj.hasOwnProperty('drv_temperature')) {
        this.drv_temperature = initObj.drv_temperature
      }
      else {
        this.drv_temperature = 0;
      }
      if (initObj.hasOwnProperty('car_vector')) {
        this.car_vector = initObj.car_vector
      }
      else {
        this.car_vector = 0;
      }
      if (initObj.hasOwnProperty('car_lamp')) {
        this.car_lamp = initObj.car_lamp
      }
      else {
        this.car_lamp = 0;
      }
      if (initObj.hasOwnProperty('car_signal')) {
        this.car_signal = initObj.car_signal
      }
      else {
        this.car_signal = 0;
      }
      if (initObj.hasOwnProperty('car_solidbrk')) {
        this.car_solidbrk = initObj.car_solidbrk
      }
      else {
        this.car_solidbrk = 0;
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
    // Serializes a message object of type control_rx
    // Serialize message field [car_connected]
    bufferOffset = _serializer.int32(obj.car_connected, buffer, bufferOffset);
    // Serialize message field [steer_degree]
    bufferOffset = _serializer.int32(obj.steer_degree, buffer, bufferOffset);
    // Serialize message field [steer_raw]
    bufferOffset = _serializer.int32(obj.steer_raw, buffer, bufferOffset);
    // Serialize message field [steer_limit_left]
    bufferOffset = _serializer.int32(obj.steer_limit_left, buffer, bufferOffset);
    // Serialize message field [steer_limit_center]
    bufferOffset = _serializer.int32(obj.steer_limit_center, buffer, bufferOffset);
    // Serialize message field [steer_limit_right]
    bufferOffset = _serializer.int32(obj.steer_limit_right, buffer, bufferOffset);
    // Serialize message field [rotor_hall]
    bufferOffset = _serializer.int32(obj.rotor_hall, buffer, bufferOffset);
    // Serialize message field [rotor_hall_l]
    bufferOffset = _serializer.int32(obj.rotor_hall_l, buffer, bufferOffset);
    // Serialize message field [rotor_hall_r]
    bufferOffset = _serializer.int32(obj.rotor_hall_r, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.int32(obj.voltage, buffer, bufferOffset);
    // Serialize message field [current_charging]
    bufferOffset = _serializer.int32(obj.current_charging, buffer, bufferOffset);
    // Serialize message field [current_discharging]
    bufferOffset = _serializer.int32(obj.current_discharging, buffer, bufferOffset);
    // Serialize message field [drv_temperature]
    bufferOffset = _serializer.int32(obj.drv_temperature, buffer, bufferOffset);
    // Serialize message field [car_vector]
    bufferOffset = _serializer.int32(obj.car_vector, buffer, bufferOffset);
    // Serialize message field [car_lamp]
    bufferOffset = _serializer.int32(obj.car_lamp, buffer, bufferOffset);
    // Serialize message field [car_signal]
    bufferOffset = _serializer.int32(obj.car_signal, buffer, bufferOffset);
    // Serialize message field [car_solidbrk]
    bufferOffset = _serializer.int32(obj.car_solidbrk, buffer, bufferOffset);
    // Serialize message field [embed_custom_a]
    bufferOffset = _serializer.int32(obj.embed_custom_a, buffer, bufferOffset);
    // Serialize message field [embed_custom_b]
    bufferOffset = _serializer.int32(obj.embed_custom_b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type control_rx
    let len;
    let data = new control_rx(null);
    // Deserialize message field [car_connected]
    data.car_connected = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steer_degree]
    data.steer_degree = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steer_raw]
    data.steer_raw = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steer_limit_left]
    data.steer_limit_left = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steer_limit_center]
    data.steer_limit_center = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steer_limit_right]
    data.steer_limit_right = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rotor_hall]
    data.rotor_hall = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rotor_hall_l]
    data.rotor_hall_l = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [rotor_hall_r]
    data.rotor_hall_r = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_charging]
    data.current_charging = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_discharging]
    data.current_discharging = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [drv_temperature]
    data.drv_temperature = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [car_vector]
    data.car_vector = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [car_lamp]
    data.car_lamp = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [car_signal]
    data.car_signal = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [car_solidbrk]
    data.car_solidbrk = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [embed_custom_a]
    data.embed_custom_a = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [embed_custom_b]
    data.embed_custom_b = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cardriver/control_rx';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0da4322d997508756a375365d6879e43';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 car_connected
    int32 steer_degree
    int32 steer_raw
    int32 steer_limit_left
    int32 steer_limit_center
    int32 steer_limit_right
    int32 rotor_hall
    int32 rotor_hall_l
    int32 rotor_hall_r
    int32 voltage
    int32 current_charging
    int32 current_discharging
    int32 drv_temperature
    int32 car_vector
    int32 car_lamp
    int32 car_signal
    int32 car_solidbrk
    int32 embed_custom_a
    int32 embed_custom_b
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new control_rx(null);
    if (msg.car_connected !== undefined) {
      resolved.car_connected = msg.car_connected;
    }
    else {
      resolved.car_connected = 0
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

    if (msg.steer_limit_left !== undefined) {
      resolved.steer_limit_left = msg.steer_limit_left;
    }
    else {
      resolved.steer_limit_left = 0
    }

    if (msg.steer_limit_center !== undefined) {
      resolved.steer_limit_center = msg.steer_limit_center;
    }
    else {
      resolved.steer_limit_center = 0
    }

    if (msg.steer_limit_right !== undefined) {
      resolved.steer_limit_right = msg.steer_limit_right;
    }
    else {
      resolved.steer_limit_right = 0
    }

    if (msg.rotor_hall !== undefined) {
      resolved.rotor_hall = msg.rotor_hall;
    }
    else {
      resolved.rotor_hall = 0
    }

    if (msg.rotor_hall_l !== undefined) {
      resolved.rotor_hall_l = msg.rotor_hall_l;
    }
    else {
      resolved.rotor_hall_l = 0
    }

    if (msg.rotor_hall_r !== undefined) {
      resolved.rotor_hall_r = msg.rotor_hall_r;
    }
    else {
      resolved.rotor_hall_r = 0
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0
    }

    if (msg.current_charging !== undefined) {
      resolved.current_charging = msg.current_charging;
    }
    else {
      resolved.current_charging = 0
    }

    if (msg.current_discharging !== undefined) {
      resolved.current_discharging = msg.current_discharging;
    }
    else {
      resolved.current_discharging = 0
    }

    if (msg.drv_temperature !== undefined) {
      resolved.drv_temperature = msg.drv_temperature;
    }
    else {
      resolved.drv_temperature = 0
    }

    if (msg.car_vector !== undefined) {
      resolved.car_vector = msg.car_vector;
    }
    else {
      resolved.car_vector = 0
    }

    if (msg.car_lamp !== undefined) {
      resolved.car_lamp = msg.car_lamp;
    }
    else {
      resolved.car_lamp = 0
    }

    if (msg.car_signal !== undefined) {
      resolved.car_signal = msg.car_signal;
    }
    else {
      resolved.car_signal = 0
    }

    if (msg.car_solidbrk !== undefined) {
      resolved.car_solidbrk = msg.car_solidbrk;
    }
    else {
      resolved.car_solidbrk = 0
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

module.exports = control_rx;
