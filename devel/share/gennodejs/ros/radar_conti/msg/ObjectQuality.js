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

class ObjectQuality {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obj_distlong_rms = null;
      this.obj_distlat_rms = null;
      this.obj_vrellong_rms = null;
      this.obj_vrellat_rms = null;
      this.obj_arellong_rms = null;
      this.obj_arellat_rms = null;
      this.obj_orientation_rms = null;
      this.obj_probofexist = null;
      this.obj_measstate = null;
    }
    else {
      if (initObj.hasOwnProperty('obj_distlong_rms')) {
        this.obj_distlong_rms = initObj.obj_distlong_rms
      }
      else {
        this.obj_distlong_rms = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_distlat_rms')) {
        this.obj_distlat_rms = initObj.obj_distlat_rms
      }
      else {
        this.obj_distlat_rms = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_vrellong_rms')) {
        this.obj_vrellong_rms = initObj.obj_vrellong_rms
      }
      else {
        this.obj_vrellong_rms = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_vrellat_rms')) {
        this.obj_vrellat_rms = initObj.obj_vrellat_rms
      }
      else {
        this.obj_vrellat_rms = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_arellong_rms')) {
        this.obj_arellong_rms = initObj.obj_arellong_rms
      }
      else {
        this.obj_arellong_rms = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_arellat_rms')) {
        this.obj_arellat_rms = initObj.obj_arellat_rms
      }
      else {
        this.obj_arellat_rms = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_orientation_rms')) {
        this.obj_orientation_rms = initObj.obj_orientation_rms
      }
      else {
        this.obj_orientation_rms = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_probofexist')) {
        this.obj_probofexist = initObj.obj_probofexist
      }
      else {
        this.obj_probofexist = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_measstate')) {
        this.obj_measstate = initObj.obj_measstate
      }
      else {
        this.obj_measstate = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectQuality
    // Serialize message field [obj_distlong_rms]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_distlong_rms, buffer, bufferOffset);
    // Serialize message field [obj_distlat_rms]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_distlat_rms, buffer, bufferOffset);
    // Serialize message field [obj_vrellong_rms]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_vrellong_rms, buffer, bufferOffset);
    // Serialize message field [obj_vrellat_rms]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_vrellat_rms, buffer, bufferOffset);
    // Serialize message field [obj_arellong_rms]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_arellong_rms, buffer, bufferOffset);
    // Serialize message field [obj_arellat_rms]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_arellat_rms, buffer, bufferOffset);
    // Serialize message field [obj_orientation_rms]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_orientation_rms, buffer, bufferOffset);
    // Serialize message field [obj_probofexist]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_probofexist, buffer, bufferOffset);
    // Serialize message field [obj_measstate]
    bufferOffset = std_msgs.msg.String.serialize(obj.obj_measstate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectQuality
    let len;
    let data = new ObjectQuality(null);
    // Deserialize message field [obj_distlong_rms]
    data.obj_distlong_rms = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_distlat_rms]
    data.obj_distlat_rms = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_vrellong_rms]
    data.obj_vrellong_rms = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_vrellat_rms]
    data.obj_vrellat_rms = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_arellong_rms]
    data.obj_arellong_rms = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_arellat_rms]
    data.obj_arellat_rms = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_orientation_rms]
    data.obj_orientation_rms = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_probofexist]
    data.obj_probofexist = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_measstate]
    data.obj_measstate = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.obj_measstate);
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/ObjectQuality';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5d06c6b873d996c1cd9ff22fc03970e4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ObjectQuality(null);
    if (msg.obj_distlong_rms !== undefined) {
      resolved.obj_distlong_rms = std_msgs.msg.Float64.Resolve(msg.obj_distlong_rms)
    }
    else {
      resolved.obj_distlong_rms = new std_msgs.msg.Float64()
    }

    if (msg.obj_distlat_rms !== undefined) {
      resolved.obj_distlat_rms = std_msgs.msg.Float64.Resolve(msg.obj_distlat_rms)
    }
    else {
      resolved.obj_distlat_rms = new std_msgs.msg.Float64()
    }

    if (msg.obj_vrellong_rms !== undefined) {
      resolved.obj_vrellong_rms = std_msgs.msg.Float64.Resolve(msg.obj_vrellong_rms)
    }
    else {
      resolved.obj_vrellong_rms = new std_msgs.msg.Float64()
    }

    if (msg.obj_vrellat_rms !== undefined) {
      resolved.obj_vrellat_rms = std_msgs.msg.Float64.Resolve(msg.obj_vrellat_rms)
    }
    else {
      resolved.obj_vrellat_rms = new std_msgs.msg.Float64()
    }

    if (msg.obj_arellong_rms !== undefined) {
      resolved.obj_arellong_rms = std_msgs.msg.Float64.Resolve(msg.obj_arellong_rms)
    }
    else {
      resolved.obj_arellong_rms = new std_msgs.msg.Float64()
    }

    if (msg.obj_arellat_rms !== undefined) {
      resolved.obj_arellat_rms = std_msgs.msg.Float64.Resolve(msg.obj_arellat_rms)
    }
    else {
      resolved.obj_arellat_rms = new std_msgs.msg.Float64()
    }

    if (msg.obj_orientation_rms !== undefined) {
      resolved.obj_orientation_rms = std_msgs.msg.Float64.Resolve(msg.obj_orientation_rms)
    }
    else {
      resolved.obj_orientation_rms = new std_msgs.msg.Float64()
    }

    if (msg.obj_probofexist !== undefined) {
      resolved.obj_probofexist = std_msgs.msg.Float64.Resolve(msg.obj_probofexist)
    }
    else {
      resolved.obj_probofexist = new std_msgs.msg.Float64()
    }

    if (msg.obj_measstate !== undefined) {
      resolved.obj_measstate = std_msgs.msg.String.Resolve(msg.obj_measstate)
    }
    else {
      resolved.obj_measstate = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = ObjectQuality;
