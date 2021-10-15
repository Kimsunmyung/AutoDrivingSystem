// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleSpecDetail = require('./VehicleSpecDetail.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VehicleSpecDetails {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.specs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('specs')) {
        this.specs = initObj.specs
      }
      else {
        this.specs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleSpecDetails
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [specs]
    // Serialize the length for message field [specs]
    bufferOffset = _serializer.uint32(obj.specs.length, buffer, bufferOffset);
    obj.specs.forEach((val) => {
      bufferOffset = VehicleSpecDetail.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleSpecDetails
    let len;
    let data = new VehicleSpecDetails(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [specs]
    // Deserialize array length for message field [specs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.specs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.specs[i] = VehicleSpecDetail.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.specs.forEach((val) => {
      length += VehicleSpecDetail.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/VehicleSpecDetails';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8a38f8f7239dedd3095eb3a43a095b9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # frame and time stamp
    Header header
    
    # vehicle spec list
    VehicleSpecDetail[] specs
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: morai_msgs/VehicleSpecDetail
    # frame and time stamp
    Header header
    
    # vehicle name
    string vehicle_name
    
    # vehicle spec
    float32 length
    float32 width
    float32 height
    
    float32 wheelbase
    float32 front_overhang
    float32 rear_overhang
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleSpecDetails(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.specs !== undefined) {
      resolved.specs = new Array(msg.specs.length);
      for (let i = 0; i < resolved.specs.length; ++i) {
        resolved.specs[i] = VehicleSpecDetail.Resolve(msg.specs[i]);
      }
    }
    else {
      resolved.specs = []
    }

    return resolved;
    }
};

module.exports = VehicleSpecDetails;
