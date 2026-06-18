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

class ObjectExtended {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obj_arellong = null;
      this.obj_arellat = null;
      this.obj_class = null;
      this.obj_orientationangle = null;
      this.obj_length = null;
      this.obj_width = null;
    }
    else {
      if (initObj.hasOwnProperty('obj_arellong')) {
        this.obj_arellong = initObj.obj_arellong
      }
      else {
        this.obj_arellong = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_arellat')) {
        this.obj_arellat = initObj.obj_arellat
      }
      else {
        this.obj_arellat = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_class')) {
        this.obj_class = initObj.obj_class
      }
      else {
        this.obj_class = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('obj_orientationangle')) {
        this.obj_orientationangle = initObj.obj_orientationangle
      }
      else {
        this.obj_orientationangle = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_length')) {
        this.obj_length = initObj.obj_length
      }
      else {
        this.obj_length = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('obj_width')) {
        this.obj_width = initObj.obj_width
      }
      else {
        this.obj_width = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectExtended
    // Serialize message field [obj_arellong]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_arellong, buffer, bufferOffset);
    // Serialize message field [obj_arellat]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_arellat, buffer, bufferOffset);
    // Serialize message field [obj_class]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.obj_class, buffer, bufferOffset);
    // Serialize message field [obj_orientationangle]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_orientationangle, buffer, bufferOffset);
    // Serialize message field [obj_length]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_length, buffer, bufferOffset);
    // Serialize message field [obj_width]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.obj_width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectExtended
    let len;
    let data = new ObjectExtended(null);
    // Deserialize message field [obj_arellong]
    data.obj_arellong = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_arellat]
    data.obj_arellat = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_class]
    data.obj_class = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_orientationangle]
    data.obj_orientationangle = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_length]
    data.obj_length = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_width]
    data.obj_width = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/ObjectExtended';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96824e97e44bcd21a96fe4ebd1753186';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    MSG: std_msgs/Float64
    float64 data
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
    const resolved = new ObjectExtended(null);
    if (msg.obj_arellong !== undefined) {
      resolved.obj_arellong = std_msgs.msg.Float64.Resolve(msg.obj_arellong)
    }
    else {
      resolved.obj_arellong = new std_msgs.msg.Float64()
    }

    if (msg.obj_arellat !== undefined) {
      resolved.obj_arellat = std_msgs.msg.Float64.Resolve(msg.obj_arellat)
    }
    else {
      resolved.obj_arellat = new std_msgs.msg.Float64()
    }

    if (msg.obj_class !== undefined) {
      resolved.obj_class = std_msgs.msg.Int32.Resolve(msg.obj_class)
    }
    else {
      resolved.obj_class = new std_msgs.msg.Int32()
    }

    if (msg.obj_orientationangle !== undefined) {
      resolved.obj_orientationangle = std_msgs.msg.Float64.Resolve(msg.obj_orientationangle)
    }
    else {
      resolved.obj_orientationangle = new std_msgs.msg.Float64()
    }

    if (msg.obj_length !== undefined) {
      resolved.obj_length = std_msgs.msg.Float64.Resolve(msg.obj_length)
    }
    else {
      resolved.obj_length = new std_msgs.msg.Float64()
    }

    if (msg.obj_width !== undefined) {
      resolved.obj_width = std_msgs.msg.Float64.Resolve(msg.obj_width)
    }
    else {
      resolved.obj_width = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = ObjectExtended;
