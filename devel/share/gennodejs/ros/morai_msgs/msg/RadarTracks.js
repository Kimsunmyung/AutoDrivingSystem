// Auto-generated. Do not edit!

// (in-package morai_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RadarTrack = require('./RadarTrack.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RadarTracks {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tracks = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tracks')) {
        this.tracks = initObj.tracks
      }
      else {
        this.tracks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarTracks
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tracks]
    // Serialize the length for message field [tracks]
    bufferOffset = _serializer.uint32(obj.tracks.length, buffer, bufferOffset);
    obj.tracks.forEach((val) => {
      bufferOffset = RadarTrack.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarTracks
    let len;
    let data = new RadarTracks(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tracks]
    // Deserialize array length for message field [tracks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tracks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tracks[i] = RadarTrack.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.tracks.forEach((val) => {
      length += RadarTrack.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'morai_msgs/RadarTracks';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7a281654e489a7faa3eacc0f9a4cf33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    RadarTrack[] tracks
    
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
    MSG: morai_msgs/RadarTrack
    # This message relates only to FMCW radar.  
    # All variables below are relative to the radar's frame of reference.
    # This message is not meant to be used alone but as part of a stamped or array message.
    
    # Object classifications (Additional vendor-specific classifications are permitted starting from 32000 eg. Car)
    
    int8 uuid
    
                                                # Note: The z component of these fields is ignored for 2D tracking.
    geometry_msgs/Point position                # x, y, z coordinates of the centroid of the object being tracked.
    geometry_msgs/Vector3 velocity              # The velocity of the object in each spatial dimension.
    geometry_msgs/Vector3 acceleration          # The acceleration of the object in each spatial dimension.
    geometry_msgs/Vector3 size                  # The object size as represented by the radar sensor eg. length, width, height OR the diameter of an ellipsoid in the x, y, z, dimensions
                                                # and is from the sensor frame's view.
    uint16 classification                       # An optional classification of the object (see above)
    
    float32[] position_covariance              # Upper-triangle covariance about the x, y, z axes
    float32[] velocity_covariance              # Upper-triangle covariance about the x, y, z axes
    float32[] acceleration_covariance          # Upper-triangle covariance about the x, y, z axes
    float32[] size_covariance                  # Upper-triangle covariance about the x, y, z axes
    
    float32 amplitude
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarTracks(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tracks !== undefined) {
      resolved.tracks = new Array(msg.tracks.length);
      for (let i = 0; i < resolved.tracks.length; ++i) {
        resolved.tracks[i] = RadarTrack.Resolve(msg.tracks[i]);
      }
    }
    else {
      resolved.tracks = []
    }

    return resolved;
    }
};

module.exports = RadarTracks;
