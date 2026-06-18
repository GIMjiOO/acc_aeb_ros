// Auto-generated. Do not edit!

// (in-package radar_conti.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectGeneral = require('./ObjectGeneral.js');
let ObjectExtended = require('./ObjectExtended.js');
let ObjectQuality = require('./ObjectQuality.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obj_id = null;
      this.object_general = null;
      this.object_extended = null;
      this.object_quality = null;
    }
    else {
      if (initObj.hasOwnProperty('obj_id')) {
        this.obj_id = initObj.obj_id
      }
      else {
        this.obj_id = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('object_general')) {
        this.object_general = initObj.object_general
      }
      else {
        this.object_general = new ObjectGeneral();
      }
      if (initObj.hasOwnProperty('object_extended')) {
        this.object_extended = initObj.object_extended
      }
      else {
        this.object_extended = new ObjectExtended();
      }
      if (initObj.hasOwnProperty('object_quality')) {
        this.object_quality = initObj.object_quality
      }
      else {
        this.object_quality = new ObjectQuality();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [obj_id]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.obj_id, buffer, bufferOffset);
    // Serialize message field [object_general]
    bufferOffset = ObjectGeneral.serialize(obj.object_general, buffer, bufferOffset);
    // Serialize message field [object_extended]
    bufferOffset = ObjectExtended.serialize(obj.object_extended, buffer, bufferOffset);
    // Serialize message field [object_quality]
    bufferOffset = ObjectQuality.serialize(obj.object_quality, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [obj_id]
    data.obj_id = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_general]
    data.object_general = ObjectGeneral.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_extended]
    data.object_extended = ObjectExtended.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_quality]
    data.object_quality = ObjectQuality.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ObjectGeneral.getMessageSize(object.object_general);
    length += ObjectQuality.getMessageSize(object.object_quality);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7779c5b6537b3dc9690537349901eeb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int32 obj_id
    ObjectGeneral object_general
    ObjectExtended object_extended
    ObjectQuality object_quality
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: radar_conti/ObjectGeneral
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
    
    ================================================================================
    MSG: radar_conti/ObjectExtended
    #  ------------------------------------------------------------------------
    #
    #  Name:       Obj_3_Extended
    #  Id:         0x60d
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
    #         2 |----------x|<------------------|
    #           +---+---+---+---+---+---+---+---+
    #                     +-- Obj_ArelLong
    #           +---+---+---+---+---+---+---+---+
    #         3 |--------------x|   |<---------x|
    #     B     +---+---+---+---+---+---+---+---+
    #     y                   |               +-- Obj_Class
    #     t                   +-- Obj_ArelLat
    #     e     +---+---+---+---+---+---+---+---+
    #         4 |<------------------------------|
    #           +---+---+---+---+---+---+---+---+
    #         5 |------x|   |   |   |   |   |   |
    #           +---+---+---+---+---+---+---+---+
    #                 +-- Obj_OrientationAngle
    #           +---+---+---+---+---+---+---+---+
    #         6 |<-----------------------------x|
    #           +---+---+---+---+---+---+---+---+
    #                                         +-- Obj_Length
    #           +---+---+---+---+---+---+---+---+
    #         7 |<-----------------------------x|
    #           +---+---+---+---+---+---+---+---+
    #                                         +-- Obj_Width
    #
    #  Signal tree:
    #
    #    -- {root}
    #       +-- Obj_ID
    #       +-- Obj_ArelLong
    #       +-- Obj_ArelLat
    #       +-- Obj_Class
    #       +-- Obj_OrientationAngle
    #       +-- Obj_Length
    #       +-- Obj_Width
    #
    #  ------------------------------------------------------------------------
    #
    std_msgs/Float64 obj_arellong
    std_msgs/Float64 obj_arellat
    std_msgs/Int32 obj_class
    std_msgs/Float64 obj_orientationangle
    std_msgs/Float64 obj_length
    std_msgs/Float64 obj_width
    ================================================================================
    MSG: radar_conti/ObjectQuality
    #  ------------------------------------------------------------------------
    #
    #  Name:       Obj_2_Quality
    #  Id:         0x60c
    #  Length:     7 bytes
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
    #         1 |<-----------------x|<----------|
    #           +---+---+---+---+---+---+---+---+
    #                             +-- Obj_DistLong_rms
    #           +---+---+---+---+---+---+---+---+
    #         2 |------x|<-----------------x|<--|
    #           +---+---+---+---+---+---+---+---+
    #                 |                   +-- Obj_VrelLong_rms
    #                 +-- Obj_DistLat_rms
    #     B     +---+---+---+---+---+---+---+---+
    #     y   3 |--------------x|<--------------|
    #     t     +---+---+---+---+---+---+---+---+
    #     e                   +-- Obj_VrelLat_rms
    #           +---+---+---+---+---+---+---+---+
    #         4 |--x|<-----------------x|<------|
    #           +---+---+---+---+---+---+---+---+
    #             |                   +-- Obj_ArelLat_rms
    #             +-- Obj_ArelLong_rms
    #           +---+---+---+---+---+---+---+---+
    #         5 |----------x|   |   |   |   |   |
    #           +---+---+---+---+---+---+---+---+
    #                     +-- Obj_Orientation_rms
    #           +---+---+---+---+---+---+---+---+
    #         6 |<---------x|<---------x|   |   |
    #           +---+---+---+---+---+---+---+---+
    #                     |           +-- Obj_MeasState
    #                     +-- Obj_ProbOfExist
    #
    #  Signal tree:
    #
    #    -- {root}
    #       +-- Obj_ID
    #       +-- Obj_DistLong_rms
    #       +-- Obj_DistLat_rms
    #       +-- Obj_VrelLong_rms
    #       +-- Obj_VrelLat_rms
    #       +-- Obj_ArelLong_rms
    #       +-- Obj_ArelLat_rms
    #       +-- Obj_Orientation_rms
    #       +-- Obj_ProbOfExist
    #       +-- Obj_MeasState
    #
    #  ------------------------------------------------------------------------
    std_msgs/Float64 obj_distlong_rms
    std_msgs/Float64 obj_distlat_rms
    std_msgs/Float64 obj_vrellong_rms
    std_msgs/Float64 obj_vrellat_rms
    std_msgs/Float64 obj_arellong_rms
    std_msgs/Float64 obj_arellat_rms
    std_msgs/Float64 obj_orientation_rms
    std_msgs/Float64 obj_probofexist
    std_msgs/String  obj_measstate
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Object(null);
    if (msg.obj_id !== undefined) {
      resolved.obj_id = std_msgs.msg.Int32.Resolve(msg.obj_id)
    }
    else {
      resolved.obj_id = new std_msgs.msg.Int32()
    }

    if (msg.object_general !== undefined) {
      resolved.object_general = ObjectGeneral.Resolve(msg.object_general)
    }
    else {
      resolved.object_general = new ObjectGeneral()
    }

    if (msg.object_extended !== undefined) {
      resolved.object_extended = ObjectExtended.Resolve(msg.object_extended)
    }
    else {
      resolved.object_extended = new ObjectExtended()
    }

    if (msg.object_quality !== undefined) {
      resolved.object_quality = ObjectQuality.Resolve(msg.object_quality)
    }
    else {
      resolved.object_quality = new ObjectQuality()
    }

    return resolved;
    }
};

module.exports = Object;
