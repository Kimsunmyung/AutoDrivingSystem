// Auto-generated. Do not edit!

// (in-package BJ_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class gps_utm {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.easting = null;
      this.northing = null;
      this.covariance = null;
    }
    else {
      if (initObj.hasOwnProperty('easting')) {
        this.easting = initObj.easting
      }
      else {
        this.easting = 0.0;
      }
      if (initObj.hasOwnProperty('northing')) {
        this.northing = initObj.northing
      }
      else {
        this.northing = 0.0;
      }
      if (initObj.hasOwnProperty('covariance')) {
        this.covariance = initObj.covariance
      }
      else {
        this.covariance = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type gps_utm
    // Serialize message field [easting]
    bufferOffset = _serializer.float64(obj.easting, buffer, bufferOffset);
    // Serialize message field [northing]
    bufferOffset = _serializer.float64(obj.northing, buffer, bufferOffset);
    // Check that the constant length array field [covariance] has the right length
    if (obj.covariance.length !== 3) {
      throw new Error('Unable to serialize array field covariance - length must be 3')
    }
    // Serialize message field [covariance]
    bufferOffset = _arraySerializer.float64(obj.covariance, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type gps_utm
    let len;
    let data = new gps_utm(null);
    // Deserialize message field [easting]
    data.easting = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [northing]
    data.northing = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [covariance]
    data.covariance = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'BJ_msgs/gps_utm';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cec6c34a96ba0d56b1ca9b5d5580d06';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 easting
    float64 northing
    float64[3] covariance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new gps_utm(null);
    if (msg.easting !== undefined) {
      resolved.easting = msg.easting;
    }
    else {
      resolved.easting = 0.0
    }

    if (msg.northing !== undefined) {
      resolved.northing = msg.northing;
    }
    else {
      resolved.northing = 0.0
    }

    if (msg.covariance !== undefined) {
      resolved.covariance = msg.covariance;
    }
    else {
      resolved.covariance = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = gps_utm;
