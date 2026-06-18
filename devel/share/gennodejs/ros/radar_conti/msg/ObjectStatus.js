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

class ObjectStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obj_nofobjects = null;
      this.obj_meascounter = null;
      this.obj_interfaceversion = null;
    }
    else {
      if (initObj.hasOwnProperty('obj_nofobjects')) {
        this.obj_nofobjects = initObj.obj_nofobjects
      }
      else {
        this.obj_nofobjects = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('obj_meascounter')) {
        this.obj_meascounter = initObj.obj_meascounter
      }
      else {
        this.obj_meascounter = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('obj_interfaceversion')) {
        this.obj_interfaceversion = initObj.obj_interfaceversion
      }
      else {
        this.obj_interfaceversion = new std_msgs.msg.Int32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectStatus
    // Serialize message field [obj_nofobjects]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.obj_nofobjects, buffer, bufferOffset);
    // Serialize message field [obj_meascounter]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.obj_meascounter, buffer, bufferOffset);
    // Serialize message field [obj_interfaceversion]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.obj_interfaceversion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectStatus
    let len;
    let data = new ObjectStatus(null);
    // Deserialize message field [obj_nofobjects]
    data.obj_nofobjects = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_meascounter]
    data.obj_meascounter = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [obj_interfaceversion]
    data.obj_interfaceversion = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/ObjectStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bce59d00818d64eb8f4cd2b557dee63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #  ------------------------------------------------------------------------
    #
    #  Name:       Obj_0_Status
    #  Id:         0x60a
    #  Length:     4 bytes
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
    #                                         +-- Obj_NofObjects
    #           +---+---+---+---+---+---+---+---+
    #     B   1 |<------------------------------|
    #     y     +---+---+---+---+---+---+---+---+
    #     t   2 |------------------------------x|
    #     e     +---+---+---+---+---+---+---+---+
    #                                         +-- Obj_MeasCounter
    #           +---+---+---+---+---+---+---+---+
    #         3 |<-------------x|   |   |   |   |
    #           +---+---+---+---+---+---+---+---+
    #                         +-- Obj_InterfaceVersion
    #
    #  Signal tree:
    #
    #    -- {root}
    #       +-- Obj_NofObjects
    #       +-- Obj_MeasCounter
    #       +-- Obj_InterfaceVersion
    #
    #  ------------------------------------------------------------------------
    #
    std_msgs/Int32 obj_nofobjects
    std_msgs/Int32 obj_meascounter
    std_msgs/Int32 obj_interfaceversion
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
    const resolved = new ObjectStatus(null);
    if (msg.obj_nofobjects !== undefined) {
      resolved.obj_nofobjects = std_msgs.msg.Int32.Resolve(msg.obj_nofobjects)
    }
    else {
      resolved.obj_nofobjects = new std_msgs.msg.Int32()
    }

    if (msg.obj_meascounter !== undefined) {
      resolved.obj_meascounter = std_msgs.msg.Int32.Resolve(msg.obj_meascounter)
    }
    else {
      resolved.obj_meascounter = new std_msgs.msg.Int32()
    }

    if (msg.obj_interfaceversion !== undefined) {
      resolved.obj_interfaceversion = std_msgs.msg.Int32.Resolve(msg.obj_interfaceversion)
    }
    else {
      resolved.obj_interfaceversion = new std_msgs.msg.Int32()
    }

    return resolved;
    }
};

module.exports = ObjectStatus;
