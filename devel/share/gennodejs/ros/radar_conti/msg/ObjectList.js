// Auto-generated. Do not edit!

// (in-package radar_conti.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Object = require('./Object.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObjectList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.object_count = null;
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('object_count')) {
        this.object_count = initObj.object_count
      }
      else {
        this.object_count = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [object_count]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.object_count, buffer, bufferOffset);
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = Object.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectList
    let len;
    let data = new ObjectList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_count]
    data.object_count = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = Object.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.objects.forEach((val) => {
      length += Object.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/ObjectList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c7dbccc0809b5bdaa59e6da1bf9289de';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    std_msgs/Int32 object_count
    Object[] objects
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
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: radar_conti/Object
    std_msgs/Int32 obj_id
    ObjectGeneral object_general
    ObjectExtended object_extended
    ObjectQuality object_quality
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
    const resolved = new ObjectList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.object_count !== undefined) {
      resolved.object_count = std_msgs.msg.Int32.Resolve(msg.object_count)
    }
    else {
      resolved.object_count = new std_msgs.msg.Int32()
    }

    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = Object.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

module.exports = ObjectList;
