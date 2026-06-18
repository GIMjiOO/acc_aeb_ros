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

class CollisonObj {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obj_id = null;
    }
    else {
      if (initObj.hasOwnProperty('obj_id')) {
        this.obj_id = initObj.obj_id
      }
      else {
        this.obj_id = new std_msgs.msg.Int32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CollisonObj
    // Serialize message field [obj_id]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.obj_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CollisonObj
    let len;
    let data = new CollisonObj(null);
    // Deserialize message field [obj_id]
    data.obj_id = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/CollisonObj';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0bbbfa30045347256b800ec4412e538';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int32 obj_id
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CollisonObj(null);
    if (msg.obj_id !== undefined) {
      resolved.obj_id = std_msgs.msg.Int32.Resolve(msg.obj_id)
    }
    else {
      resolved.obj_id = new std_msgs.msg.Int32()
    }

    return resolved;
    }
};

module.exports = CollisonObj;
