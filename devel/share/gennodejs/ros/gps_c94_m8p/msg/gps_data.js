// Auto-generated. Do not edit!

// (in-package gps_c94_m8p.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class gps_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.getTime = null;
      this.fixedstate = null;
      this.latitude = null;
      this.longitude = null;
      this.altitude = null;
      this.utm_x = null;
      this.utm_y = null;
      this.heading_rad = null;
      this.heading_pi = null;
      this.heading_degrees = null;
      this.position_error = null;
    }
    else {
      if (initObj.hasOwnProperty('getTime')) {
        this.getTime = initObj.getTime
      }
      else {
        this.getTime = '';
      }
      if (initObj.hasOwnProperty('fixedstate')) {
        this.fixedstate = initObj.fixedstate
      }
      else {
        this.fixedstate = 0;
      }
      if (initObj.hasOwnProperty('latitude')) {
        this.latitude = initObj.latitude
      }
      else {
        this.latitude = 0.0;
      }
      if (initObj.hasOwnProperty('longitude')) {
        this.longitude = initObj.longitude
      }
      else {
        this.longitude = 0.0;
      }
      if (initObj.hasOwnProperty('altitude')) {
        this.altitude = initObj.altitude
      }
      else {
        this.altitude = 0.0;
      }
      if (initObj.hasOwnProperty('utm_x')) {
        this.utm_x = initObj.utm_x
      }
      else {
        this.utm_x = 0.0;
      }
      if (initObj.hasOwnProperty('utm_y')) {
        this.utm_y = initObj.utm_y
      }
      else {
        this.utm_y = 0.0;
      }
      if (initObj.hasOwnProperty('heading_rad')) {
        this.heading_rad = initObj.heading_rad
      }
      else {
        this.heading_rad = 0.0;
      }
      if (initObj.hasOwnProperty('heading_pi')) {
        this.heading_pi = initObj.heading_pi
      }
      else {
        this.heading_pi = 0.0;
      }
      if (initObj.hasOwnProperty('heading_degrees')) {
        this.heading_degrees = initObj.heading_degrees
      }
      else {
        this.heading_degrees = 0.0;
      }
      if (initObj.hasOwnProperty('position_error')) {
        this.position_error = initObj.position_error
      }
      else {
        this.position_error = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gps_data
    // Serialize message field [getTime]
    bufferOffset = _serializer.string(obj.getTime, buffer, bufferOffset);
    // Serialize message field [fixedstate]
    bufferOffset = _serializer.int32(obj.fixedstate, buffer, bufferOffset);
    // Serialize message field [latitude]
    bufferOffset = _serializer.float64(obj.latitude, buffer, bufferOffset);
    // Serialize message field [longitude]
    bufferOffset = _serializer.float64(obj.longitude, buffer, bufferOffset);
    // Serialize message field [altitude]
    bufferOffset = _serializer.float64(obj.altitude, buffer, bufferOffset);
    // Serialize message field [utm_x]
    bufferOffset = _serializer.float64(obj.utm_x, buffer, bufferOffset);
    // Serialize message field [utm_y]
    bufferOffset = _serializer.float64(obj.utm_y, buffer, bufferOffset);
    // Serialize message field [heading_rad]
    bufferOffset = _serializer.float64(obj.heading_rad, buffer, bufferOffset);
    // Serialize message field [heading_pi]
    bufferOffset = _serializer.float64(obj.heading_pi, buffer, bufferOffset);
    // Serialize message field [heading_degrees]
    bufferOffset = _serializer.float64(obj.heading_degrees, buffer, bufferOffset);
    // Serialize message field [position_error]
    bufferOffset = _serializer.float64(obj.position_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gps_data
    let len;
    let data = new gps_data(null);
    // Deserialize message field [getTime]
    data.getTime = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [fixedstate]
    data.fixedstate = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [latitude]
    data.latitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [longitude]
    data.longitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [altitude]
    data.altitude = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [utm_x]
    data.utm_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [utm_y]
    data.utm_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_rad]
    data.heading_rad = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_pi]
    data.heading_pi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_degrees]
    data.heading_degrees = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [position_error]
    data.position_error = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.getTime.length;
    return length + 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gps_c94_m8p/gps_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e79e5fcae5f58ad42f8ae61b301f630';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string getTime
    
    int32 fixedstate
    
    float64 latitude
    float64 longitude
    float64 altitude
    
    float64 utm_x
    float64 utm_y
    
    float64 heading_rad
    float64 heading_pi
    float64 heading_degrees
    
    float64 position_error
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gps_data(null);
    if (msg.getTime !== undefined) {
      resolved.getTime = msg.getTime;
    }
    else {
      resolved.getTime = ''
    }

    if (msg.fixedstate !== undefined) {
      resolved.fixedstate = msg.fixedstate;
    }
    else {
      resolved.fixedstate = 0
    }

    if (msg.latitude !== undefined) {
      resolved.latitude = msg.latitude;
    }
    else {
      resolved.latitude = 0.0
    }

    if (msg.longitude !== undefined) {
      resolved.longitude = msg.longitude;
    }
    else {
      resolved.longitude = 0.0
    }

    if (msg.altitude !== undefined) {
      resolved.altitude = msg.altitude;
    }
    else {
      resolved.altitude = 0.0
    }

    if (msg.utm_x !== undefined) {
      resolved.utm_x = msg.utm_x;
    }
    else {
      resolved.utm_x = 0.0
    }

    if (msg.utm_y !== undefined) {
      resolved.utm_y = msg.utm_y;
    }
    else {
      resolved.utm_y = 0.0
    }

    if (msg.heading_rad !== undefined) {
      resolved.heading_rad = msg.heading_rad;
    }
    else {
      resolved.heading_rad = 0.0
    }

    if (msg.heading_pi !== undefined) {
      resolved.heading_pi = msg.heading_pi;
    }
    else {
      resolved.heading_pi = 0.0
    }

    if (msg.heading_degrees !== undefined) {
      resolved.heading_degrees = msg.heading_degrees;
    }
    else {
      resolved.heading_degrees = 0.0
    }

    if (msg.position_error !== undefined) {
      resolved.position_error = msg.position_error;
    }
    else {
      resolved.position_error = 0.0
    }

    return resolved;
    }
};

module.exports = gps_data;
