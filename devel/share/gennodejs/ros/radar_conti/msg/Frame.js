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

class Frame {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.dlc = null;
      this.data = null;
      this.err = null;
      this.rtr = null;
      this.eff = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('dlc')) {
        this.dlc = initObj.dlc
      }
      else {
        this.dlc = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new Array(8).fill(0);
      }
      if (initObj.hasOwnProperty('err')) {
        this.err = initObj.err
      }
      else {
        this.err = 0;
      }
      if (initObj.hasOwnProperty('rtr')) {
        this.rtr = initObj.rtr
      }
      else {
        this.rtr = 0;
      }
      if (initObj.hasOwnProperty('eff')) {
        this.eff = initObj.eff
      }
      else {
        this.eff = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Frame
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [dlc]
    bufferOffset = _serializer.uint8(obj.dlc, buffer, bufferOffset);
    // Check that the constant length array field [data] has the right length
    if (obj.data.length !== 8) {
      throw new Error('Unable to serialize array field data - length must be 8')
    }
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, 8);
    // Serialize message field [err]
    bufferOffset = _serializer.uint8(obj.err, buffer, bufferOffset);
    // Serialize message field [rtr]
    bufferOffset = _serializer.uint8(obj.rtr, buffer, bufferOffset);
    // Serialize message field [eff]
    bufferOffset = _serializer.uint8(obj.eff, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Frame
    let len;
    let data = new Frame(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [dlc]
    data.dlc = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, 8)
    // Deserialize message field [err]
    data.err = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rtr]
    data.rtr = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [eff]
    data.eff = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/Frame';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a26d3cc4cc1900d6e3717664421f4e34';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint32 id
    uint8 dlc
    uint8[8] data
    uint8 err
    uint8 rtr
    uint8 eff
    
    ## @file Frame.msg
    # @ingroup ros2can_bridge
    # @author Philipp Wuestenberg
    # @brief message type to publish can messages to ROS topic
    # @param id CAN message id (11/29 bit)
    # @param dlc CAN data size in bytes
    # @param data CAN data
    # @param err error flag bit (0 = data frame, 1 = error message)
    # @param rtr remote transmission request flag (1 = rtr frame)
    # @param eff frame format flag (0 = standard 11 bit, 1 = extended 29 bit)
    
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
    const resolved = new Frame(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.dlc !== undefined) {
      resolved.dlc = msg.dlc;
    }
    else {
      resolved.dlc = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = new Array(8).fill(0)
    }

    if (msg.err !== undefined) {
      resolved.err = msg.err;
    }
    else {
      resolved.err = 0
    }

    if (msg.rtr !== undefined) {
      resolved.rtr = msg.rtr;
    }
    else {
      resolved.rtr = 0
    }

    if (msg.eff !== undefined) {
      resolved.eff = msg.eff;
    }
    else {
      resolved.eff = 0
    }

    return resolved;
    }
};

module.exports = Frame;
