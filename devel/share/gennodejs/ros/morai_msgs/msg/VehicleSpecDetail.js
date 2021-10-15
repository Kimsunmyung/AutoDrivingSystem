// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class VehicleSpecDetail {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicle_name = null;
      this.length = null;
      this.width = null;
      this.height = null;
      this.wheelbase = null;
      this.front_overhang = null;
      this.rear_overhang = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehicle_name')) {
        this.vehicle_name = initObj.vehicle_name
      }
      else {
        this.vehicle_name = '';
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('wheelbase')) {
        this.wheelbase = initObj.wheelbase
      }
      else {
        this.wheelbase = 0.0;
      }
      if (initObj.hasOwnProperty('front_overhang')) {
        this.front_overhang = initObj.front_overhang
      }
      else {
        this.front_overhang = 0.0;
      }
      if (initObj.hasOwnProperty('rear_overhang')) {
        this.rear_overhang = initObj.rear_overhang
      }
      else {
        this.rear_overhang = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleSpecDetail
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicle_name]
    bufferOffset = _serializer.string(obj.vehicle_name, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    // Serialize message field [wheelbase]
    bufferOffset = _serializer.float32(obj.wheelbase, buffer, bufferOffset);
    // Serialize message field [front_overhang]
    bufferOffset = _serializer.float32(obj.front_overhang, buffer, bufferOffset);
    // Serialize message field [rear_overhang]
    bufferOffset = _serializer.float32(obj.rear_overhang, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleSpecDetail
    let len;
    let data = new VehicleSpecDetail(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_name]
    data.vehicle_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheelbase]
    data.wheelbase = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_overhang]
    data.front_overhang = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_overhang]
    data.rear_overhang = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.vehicle_name.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/VehicleSpecDetail';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c068a372b804d7e798ef8a7c1b0cd3e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleSpecDetail(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicle_name !== undefined) {
      resolved.vehicle_name = msg.vehicle_name;
    }
    else {
      resolved.vehicle_name = ''
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.wheelbase !== undefined) {
      resolved.wheelbase = msg.wheelbase;
    }
    else {
      resolved.wheelbase = 0.0
    }

    if (msg.front_overhang !== undefined) {
      resolved.front_overhang = msg.front_overhang;
    }
    else {
      resolved.front_overhang = 0.0
    }

    if (msg.rear_overhang !== undefined) {
      resolved.rear_overhang = msg.rear_overhang;
    }
    else {
      resolved.rear_overhang = 0.0
    }

    return resolved;
    }
};

module.exports = VehicleSpecDetail;
