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

class ObjectGeneral {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obj_distlong = null;
      this.obj_distlat = null;
      this.obj_vrellong = null;
      this.obj_vrellat = null;
      this.obj_dynprop = null;
      this.obj_rcs = null;
    }
    else {
      if (initObj.hasOwnProperty('obj_distlong')) {
        this.obj_distlong = initObj.obj_distlong
      }
      else {
        this.obj_distlong = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_distlat')) {
        this.obj_distlat = initObj.obj_distlat
      }
      else {
        this.obj_distlat = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_vrellong')) {
        this.obj_vrellong = initObj.obj_vrellong
      }
      else {
        this.obj_vrellong = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_vrellat')) {
        this.obj_vrellat = initObj.obj_vrellat
      }
      else {
        this.obj_vrellat = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_dynprop')) {
        this.obj_dynprop = initObj.obj_dynprop
      }
      else {
        this.obj_dynprop = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('obj_rcs')) {
        this.obj_rcs = initObj.obj_rcs
      }
      else {
        this.obj_rcs = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectGeneral
    // Serialize message field [obj_distlong]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_distlong, buffer, bufferOffset);
    // Serialize message field [obj_distlat]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_distlat, buffer, bufferOffset);
    // Serialize message field [obj_vrellong]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_vrellong, buffer, bufferOffset);
    // Serialize message field [obj_vrellat]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_vrellat, buffer, bufferOffset);
    // Serialize message field [obj_dynprop]
    bufferOffset = std_msgs.msg.String.serialize(obj.obj_dynprop, buffer, bufferOffset);
    // Serialize message field [obj_rcs]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_rcs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectGeneral
    let len;
    let data = new ObjectGeneral(null);
    // Deserialize message field [obj_distlong]
    data.obj_distlong = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_distlat]
    data.obj_distlat = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_vrellong]
    data.obj_vrellong = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_vrellat]
    data.obj_vrellat = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_dynprop]
    data.obj_dynprop = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_rcs]
    data.obj_rcs = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.obj_dynprop);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/ObjectGeneral';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c5a688592b37e839ffa103089e32ef1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #  ------------------------------------------------------------------------
    #
    #  Name:       Obj_1_General
    #  Id:         0x60b
    #  Length:     8 bytes
    #  Cycle time: 0 ms
    #  Senders:    ARS_ISF
    #  Layout:
    #
    #                          Bit
    #
    #             7   6   5   4   3   2   1   0
    #           +---+---+---+---+---+---+---+---+
    #         0 |<-----------------------------x|
    #           +---+---+---+---+---+---+---+---+
    #                                         +-- Obj_ID
    #           +---+---+---+---+---+---+---+---+
    #         1 |<------------------------------|
    #           +---+---+---+---+---+---+---+---+
    #         2 |------------------x|<----------|
    #           +---+---+---+---+---+---+---+---+
    #                             +-- Obj_DistLong
    #           +---+---+---+---+---+---+---+---+
    #         3 |------------------------------x|
    #     B     +---+---+---+---+---+---+---+---+
    #     y                                   +-- Obj_DistLat
    #     t     +---+---+---+---+---+---+---+---+
    #     e   4 |<------------------------------|
    #           +---+---+---+---+---+---+---+---+
    #         5 |------x|<----------------------|
    #           +---+---+---+---+---+---+---+---+
    #                 +-- Obj_VrelLong
    #           +---+---+---+---+---+---+---+---+
    #         6 |----------x|   |   |<---------x|
    #           +---+---+---+---+---+---+---+---+
    #                     |                   +-- Obj_DynProp
    #                     +-- Obj_VrelLat
    #           +---+---+---+---+---+---+---+---+
    #         7 |<-----------------------------x|
    #           +---+---+---+---+---+---+---+---+
    #                                         +-- Obj_RCS
    #
    #  Signal tree:
    #
    #    -- {root}
    #       +-- Obj_ID
    #       +-- Obj_DistLong
    #       +-- Obj_DistLat
    #       +-- Obj_VrelLong
    #       +-- Obj_VrelLat
    #       +-- Obj_DynProp
    #       +-- Obj_RCS
    #
    #  ------------------------------------------------------------------------
    #
    std_msgs/Float64 obj_distlong
    std_msgs/Float64 obj_distlat
    std_msgs/Float64 obj_vrellong
    std_msgs/Float64 obj_vrellat
    std_msgs/String obj_dynprop
    std_msgs/Float64 obj_rcs
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectGeneral(null);
    if (msg.obj_distlong !== undefined) {
      resolved.obj_distlong = std_msgs.msg.Float64.Resolve(msg.obj_distlong)
    }
    else {
      resolved.obj_distlong = new std_msgs.msg.Float64()
    }

    if (msg.obj_distlat !== undefined) {
      resolved.obj_distlat = std_msgs.msg.Float64.Resolve(msg.obj_distlat)
    }
    else {
      resolved.obj_distlat = new std_msgs.msg.Float64()
    }

    if (msg.obj_vrellong !== undefined) {
      resolved.obj_vrellong = std_msgs.msg.Float64.Resolve(msg.obj_vrellong)
    }
    else {
      resolved.obj_vrellong = new std_msgs.msg.Float64()
    }

    if (msg.obj_vrellat !== undefined) {
      resolved.obj_vrellat = std_msgs.msg.Float64.Resolve(msg.obj_vrellat)
    }
    else {
      resolved.obj_vrellat = new std_msgs.msg.Float64()
    }

    if (msg.obj_dynprop !== undefined) {
      resolved.obj_dynprop = std_msgs.msg.String.Resolve(msg.obj_dynprop)
    }
    else {
      resolved.obj_dynprop = new std_msgs.msg.String()
    }

    if (msg.obj_rcs !== undefined) {
      resolved.obj_rcs = std_msgs.msg.Float64.Resolve(msg.obj_rcs)
    }
    else {
      resolved.obj_rcs = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = ObjectGeneral;
