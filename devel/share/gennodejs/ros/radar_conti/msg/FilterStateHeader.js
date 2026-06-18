// Auto-generated. Do not edit!

// (in-package radar_conti.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class FilterStateHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.filterstate_nofclusterfiltercfg = null;
      this.filterstate_nofobjectfiltercfg = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('filterstate_nofclusterfiltercfg')) {
        this.filterstate_nofclusterfiltercfg = initObj.filterstate_nofclusterfiltercfg
      }
      else {
        this.filterstate_nofclusterfiltercfg = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filterstate_nofobjectfiltercfg')) {
        this.filterstate_nofobjectfiltercfg = initObj.filterstate_nofobjectfiltercfg
      }
      else {
        this.filterstate_nofobjectfiltercfg = new std_msgs.msg.UInt8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FilterStateHeader
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [filterstate_nofclusterfiltercfg]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filterstate_nofclusterfiltercfg, buffer, bufferOffset);
    // Serialize message field [filterstate_nofobjectfiltercfg]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filterstate_nofobjectfiltercfg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FilterStateHeader
    let len;
    let data = new FilterStateHeader(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [filterstate_nofclusterfiltercfg]
    data.filterstate_nofclusterfiltercfg = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filterstate_nofobjectfiltercfg]
    data.filterstate_nofobjectfiltercfg = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/FilterStateHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ae5e3ef34336e8c833a830f9ae125c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    # Number of filter status messages for configured cluster filter
    #
    # possible values 0-6
    # 0: no cluster filter is set
    # 1-6: cluster filters
    
    std_msgs/UInt8 filterstate_nofclusterfiltercfg
    
    # Number of filter status messages for configured object filter
    #
    # possible values 0-16
    # 0: no object filter is set
    # 1-16: object filters
    
    std_msgs/UInt8 filterstate_nofobjectfiltercfg
    
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
    MSG: std_msgs/UInt8
    uint8 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FilterStateHeader(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.filterstate_nofclusterfiltercfg !== undefined) {
      resolved.filterstate_nofclusterfiltercfg = std_msgs.msg.UInt8.Resolve(msg.filterstate_nofclusterfiltercfg)
    }
    else {
      resolved.filterstate_nofclusterfiltercfg = new std_msgs.msg.UInt8()
    }

    if (msg.filterstate_nofobjectfiltercfg !== undefined) {
      resolved.filterstate_nofobjectfiltercfg = std_msgs.msg.UInt8.Resolve(msg.filterstate_nofobjectfiltercfg)
    }
    else {
      resolved.filterstate_nofobjectfiltercfg = new std_msgs.msg.UInt8()
    }

    return resolved;
    }
};

module.exports = FilterStateHeader;
