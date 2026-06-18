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

class ClusterStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cluster_nofclustersnear = null;
      this.cluster_nofclustersfar = null;
      this.cluster_meascounter = null;
      this.cluster_interfaceversion = null;
    }
    else {
      if (initObj.hasOwnProperty('cluster_nofclustersnear')) {
        this.cluster_nofclustersnear = initObj.cluster_nofclustersnear
      }
      else {
        this.cluster_nofclustersnear = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('cluster_nofclustersfar')) {
        this.cluster_nofclustersfar = initObj.cluster_nofclustersfar
      }
      else {
        this.cluster_nofclustersfar = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('cluster_meascounter')) {
        this.cluster_meascounter = initObj.cluster_meascounter
      }
      else {
        this.cluster_meascounter = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('cluster_interfaceversion')) {
        this.cluster_interfaceversion = initObj.cluster_interfaceversion
      }
      else {
        this.cluster_interfaceversion = new std_msgs.msg.Int32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClusterStatus
    // Serialize message field [cluster_nofclustersnear]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.cluster_nofclustersnear, buffer, bufferOffset);
    // Serialize message field [cluster_nofclustersfar]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.cluster_nofclustersfar, buffer, bufferOffset);
    // Serialize message field [cluster_meascounter]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.cluster_meascounter, buffer, bufferOffset);
    // Serialize message field [cluster_interfaceversion]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.cluster_interfaceversion, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClusterStatus
    let len;
    let data = new ClusterStatus(null);
    // Deserialize message field [cluster_nofclustersnear]
    data.cluster_nofclustersnear = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_nofclustersfar]
    data.cluster_nofclustersfar = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_meascounter]
    data.cluster_meascounter = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_interfaceversion]
    data.cluster_interfaceversion = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/ClusterStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f2a6f691f628cc21b647de1bb56d9b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #  ------------------------------------------------------------------------
    #
    #  Name:       Cluster_0_Status
    #  Id:         0x600
    #  Length:     5 bytes
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
    #                                         +-- Cluster_NofClustersNear
    #           +---+---+---+---+---+---+---+---+
    #         1 |<-----------------------------x|
    #           +---+---+---+---+---+---+---+---+
    #     B                                   +-- Cluster_NofClustersFar
    #     y     +---+---+---+---+---+---+---+---+
    #     t   2 |<------------------------------|
    #     e     +---+---+---+---+---+---+---+---+
    #         3 |------------------------------x|
    #           +---+---+---+---+---+---+---+---+
    #                                         +-- Cluster_MeasCounter
    #           +---+---+---+---+---+---+---+---+
    #         4 |<-------------x|   |   |   |   |
    #           +---+---+---+---+---+---+---+---+
    #                         +-- Cluster_InterfaceVersion
    #
    #  Signal tree:
    #
    #    -- {root}
    #       +-- Cluster_NofClustersNear
    #       +-- Cluster_NofClustersFar
    #       +-- Cluster_MeasCounter
    #       +-- Cluster_InterfaceVersion
    #
    #  ------------------------------------------------------------------------
    #
    std_msgs/Int32 cluster_nofclustersnear
    std_msgs/Int32 cluster_nofclustersfar
    std_msgs/Int32 cluster_meascounter
    std_msgs/Int32 cluster_interfaceversion
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
    const resolved = new ClusterStatus(null);
    if (msg.cluster_nofclustersnear !== undefined) {
      resolved.cluster_nofclustersnear = std_msgs.msg.Int32.Resolve(msg.cluster_nofclustersnear)
    }
    else {
      resolved.cluster_nofclustersnear = new std_msgs.msg.Int32()
    }

    if (msg.cluster_nofclustersfar !== undefined) {
      resolved.cluster_nofclustersfar = std_msgs.msg.Int32.Resolve(msg.cluster_nofclustersfar)
    }
    else {
      resolved.cluster_nofclustersfar = new std_msgs.msg.Int32()
    }

    if (msg.cluster_meascounter !== undefined) {
      resolved.cluster_meascounter = std_msgs.msg.Int32.Resolve(msg.cluster_meascounter)
    }
    else {
      resolved.cluster_meascounter = new std_msgs.msg.Int32()
    }

    if (msg.cluster_interfaceversion !== undefined) {
      resolved.cluster_interfaceversion = std_msgs.msg.Int32.Resolve(msg.cluster_interfaceversion)
    }
    else {
      resolved.cluster_interfaceversion = new std_msgs.msg.Int32()
    }

    return resolved;
    }
};

module.exports = ClusterStatus;
