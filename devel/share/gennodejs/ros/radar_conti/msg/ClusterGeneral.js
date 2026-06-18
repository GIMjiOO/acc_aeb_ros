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

class ClusterGeneral {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cluster_distlong = null;
      this.cluster_distlat = null;
      this.cluster_vrellong = null;
      this.cluster_vrellat = null;
      this.cluster_dynprop = null;
      this.cluster_rcs = null;
    }
    else {
      if (initObj.hasOwnProperty('cluster_distlong')) {
        this.cluster_distlong = initObj.cluster_distlong
      }
      else {
        this.cluster_distlong = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('cluster_distlat')) {
        this.cluster_distlat = initObj.cluster_distlat
      }
      else {
        this.cluster_distlat = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('cluster_vrellong')) {
        this.cluster_vrellong = initObj.cluster_vrellong
      }
      else {
        this.cluster_vrellong = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('cluster_vrellat')) {
        this.cluster_vrellat = initObj.cluster_vrellat
      }
      else {
        this.cluster_vrellat = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('cluster_dynprop')) {
        this.cluster_dynprop = initObj.cluster_dynprop
      }
      else {
        this.cluster_dynprop = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('cluster_rcs')) {
        this.cluster_rcs = initObj.cluster_rcs
      }
      else {
        this.cluster_rcs = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClusterGeneral
    // Serialize message field [cluster_distlong]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.cluster_distlong, buffer, bufferOffset);
    // Serialize message field [cluster_distlat]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.cluster_distlat, buffer, bufferOffset);
    // Serialize message field [cluster_vrellong]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.cluster_vrellong, buffer, bufferOffset);
    // Serialize message field [cluster_vrellat]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.cluster_vrellat, buffer, bufferOffset);
    // Serialize message field [cluster_dynprop]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.cluster_dynprop, buffer, bufferOffset);
    // Serialize message field [cluster_rcs]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.cluster_rcs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClusterGeneral
    let len;
    let data = new ClusterGeneral(null);
    // Deserialize message field [cluster_distlong]
    data.cluster_distlong = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_distlat]
    data.cluster_distlat = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_vrellong]
    data.cluster_vrellong = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_vrellat]
    data.cluster_vrellat = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_dynprop]
    data.cluster_dynprop = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_rcs]
    data.cluster_rcs = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/ClusterGeneral';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48915065ec2595ba51250ae485075a77';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #  ------------------------------------------------------------------------
    #
    #  Name:       Cluster_1_General
    #  Id:         0x701
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
    #                                         +-- Cluster_ID
    #           +---+---+---+---+---+---+---+---+
    #         1 |<------------------------------|
    #           +---+---+---+---+---+---+---+---+
    #         2 |------------------x|   |<------|
    #           +---+---+---+---+---+---+---+---+
    #                             +-- Cluster_DistLong
    #           +---+---+---+---+---+---+---+---+
    #         3 |------------------------------x|
    #     B     +---+---+---+---+---+---+---+---+
    #     y                                   +-- Cluster_DistLat
    #     t     +---+---+---+---+---+---+---+---+
    #     e   4 |<------------------------------|
    #           +---+---+---+---+---+---+---+---+
    #         5 |------x|<----------------------|
    #           +---+---+---+---+---+---+---+---+
    #                 +-- Cluster_VrelLong
    #           +---+---+---+---+---+---+---+---+
    #         6 |----------x|   |   |<---------x|
    #           +---+---+---+---+---+---+---+---+
    #                     |                   +-- Cluster_DynProp
    #                     +-- Cluster_VrelLat
    #           +---+---+---+---+---+---+---+---+
    #         7 |<-----------------------------x|
    #           +---+---+---+---+---+---+---+---+
    #                                         +-- Cluster_RCS
    #
    #  Signal tree:
    #
    #    -- {root}
    #       +-- Cluster_ID
    #       +-- Cluster_DistLong
    #       +-- Cluster_DistLat
    #       +-- Cluster_VrelLong
    #       +-- Cluster_VrelLat
    #       +-- Cluster_DynProp
    #       +-- Cluster_RCS
    #
    #  ------------------------------------------------------------------------
    std_msgs/Float64 cluster_distlong
    std_msgs/Float64 cluster_distlat
    std_msgs/Float64 cluster_vrellong
    std_msgs/Float64 cluster_vrellat
    std_msgs/Int32   cluster_dynprop
    std_msgs/Float64 cluster_rcs
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
    const resolved = new ClusterGeneral(null);
    if (msg.cluster_distlong !== undefined) {
      resolved.cluster_distlong = std_msgs.msg.Float64.Resolve(msg.cluster_distlong)
    }
    else {
      resolved.cluster_distlong = new std_msgs.msg.Float64()
    }

    if (msg.cluster_distlat !== undefined) {
      resolved.cluster_distlat = std_msgs.msg.Float64.Resolve(msg.cluster_distlat)
    }
    else {
      resolved.cluster_distlat = new std_msgs.msg.Float64()
    }

    if (msg.cluster_vrellong !== undefined) {
      resolved.cluster_vrellong = std_msgs.msg.Float64.Resolve(msg.cluster_vrellong)
    }
    else {
      resolved.cluster_vrellong = new std_msgs.msg.Float64()
    }

    if (msg.cluster_vrellat !== undefined) {
      resolved.cluster_vrellat = std_msgs.msg.Float64.Resolve(msg.cluster_vrellat)
    }
    else {
      resolved.cluster_vrellat = new std_msgs.msg.Float64()
    }

    if (msg.cluster_dynprop !== undefined) {
      resolved.cluster_dynprop = std_msgs.msg.Int32.Resolve(msg.cluster_dynprop)
    }
    else {
      resolved.cluster_dynprop = new std_msgs.msg.Int32()
    }

    if (msg.cluster_rcs !== undefined) {
      resolved.cluster_rcs = std_msgs.msg.Float64.Resolve(msg.cluster_rcs)
    }
    else {
      resolved.cluster_rcs = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = ClusterGeneral;
