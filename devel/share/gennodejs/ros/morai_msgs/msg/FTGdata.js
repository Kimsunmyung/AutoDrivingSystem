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

class FTGdata {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.do_ca = null;
      this.ca_const_alpha = null;
      this.ca_const_beta = null;
      this.ca_distance = null;
      this.phi_gap = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('do_ca')) {
        this.do_ca = initObj.do_ca
      }
      else {
        this.do_ca = false;
      }
      if (initObj.hasOwnProperty('ca_const_alpha')) {
        this.ca_const_alpha = initObj.ca_const_alpha
      }
      else {
        this.ca_const_alpha = 0.0;
      }
      if (initObj.hasOwnProperty('ca_const_beta')) {
        this.ca_const_beta = initObj.ca_const_beta
      }
      else {
        this.ca_const_beta = 0.0;
      }
      if (initObj.hasOwnProperty('ca_distance')) {
        this.ca_distance = initObj.ca_distance
      }
      else {
        this.ca_distance = 0.0;
      }
      if (initObj.hasOwnProperty('phi_gap')) {
        this.phi_gap = initObj.phi_gap
      }
      else {
        this.phi_gap = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FTGdata
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [do_ca]
    bufferOffset = _serializer.bool(obj.do_ca, buffer, bufferOffset);
    // Serialize message field [ca_const_alpha]
    bufferOffset = _serializer.float32(obj.ca_const_alpha, buffer, bufferOffset);
    // Serialize message field [ca_const_beta]
    bufferOffset = _serializer.float32(obj.ca_const_beta, buffer, bufferOffset);
    // Serialize message field [ca_distance]
    bufferOffset = _serializer.float32(obj.ca_distance, buffer, bufferOffset);
    // Serialize message field [phi_gap]
    bufferOffset = _serializer.float32(obj.phi_gap, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FTGdata
    let len;
    let data = new FTGdata(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [do_ca]
    data.do_ca = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ca_const_alpha]
    data.ca_const_alpha = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ca_const_beta]
    data.ca_const_beta = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ca_distance]
    data.ca_distance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [phi_gap]
    data.phi_gap = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/FTGdata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '832e1533a2882488fefe13ba032e8348';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # frame and time stamp
    Header header
    
    # should we do collision avoidance
    bool do_ca
    
    float32 ca_const_alpha
    float32 ca_const_beta
    float32 ca_distance
    
    float32 phi_gap
    
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
    const resolved = new FTGdata(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.do_ca !== undefined) {
      resolved.do_ca = msg.do_ca;
    }
    else {
      resolved.do_ca = false
    }

    if (msg.ca_const_alpha !== undefined) {
      resolved.ca_const_alpha = msg.ca_const_alpha;
    }
    else {
      resolved.ca_const_alpha = 0.0
    }

    if (msg.ca_const_beta !== undefined) {
      resolved.ca_const_beta = msg.ca_const_beta;
    }
    else {
      resolved.ca_const_beta = 0.0
    }

    if (msg.ca_distance !== undefined) {
      resolved.ca_distance = msg.ca_distance;
    }
    else {
      resolved.ca_distance = 0.0
    }

    if (msg.phi_gap !== undefined) {
      resolved.phi_gap = msg.phi_gap;
    }
    else {
      resolved.phi_gap = 0.0
    }

    return resolved;
    }
};

module.exports = FTGdata;
