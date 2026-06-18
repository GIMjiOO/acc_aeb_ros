// Auto-generated. Do not edit!

// (in-package radar_conti.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ClusterGeneral = require('./ClusterGeneral.js');
let ClusterQuality = require('./ClusterQuality.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Cluster {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cluster_id = null;
      this.cluster_general = null;
      this.cluster_quality = null;
    }
    else {
      if (initObj.hasOwnProperty('cluster_id')) {
        this.cluster_id = initObj.cluster_id
      }
      else {
        this.cluster_id = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('cluster_general')) {
        this.cluster_general = initObj.cluster_general
      }
      else {
        this.cluster_general = new ClusterGeneral();
      }
      if (initObj.hasOwnProperty('cluster_quality')) {
        this.cluster_quality = initObj.cluster_quality
      }
      else {
        this.cluster_quality = new ClusterQuality();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cluster
    // Serialize message field [cluster_id]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.cluster_id, buffer, bufferOffset);
    // Serialize message field [cluster_general]
    bufferOffset = ClusterGeneral.serialize(obj.cluster_general, buffer, bufferOffset);
    // Serialize message field [cluster_quality]
    bufferOffset = ClusterQuality.serialize(obj.cluster_quality, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cluster
    let len;
    let data = new Cluster(null);
    // Deserialize message field [cluster_id]
    data.cluster_id = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_general]
    data.cluster_general = ClusterGeneral.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_quality]
    data.cluster_quality = ClusterQuality.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ClusterQuality.getMessageSize(object.cluster_quality);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/Cluster';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2811095d8cefca700603904d21f118c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int32 cluster_id
    ClusterGeneral cluster_general
    ClusterQuality cluster_quality
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: radar_conti/ClusterGeneral
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
    MSG: radar_conti/ClusterQuality
    #  ------------------------------------------------------------------------
    #
    #  Name:       Cluster_2_Quality
    #  Id:         0x702
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
    #                                         +-- Cluster_ID
    #           +---+---+---+---+---+---+---+---+
    #         1 |<-----------------x|<----------|
    #           +---+---+---+---+---+---+---+---+
    #                             +-- Cluster_DistLong_rms
    #           +---+---+---+---+---+---+---+---+
    #     B   2 |------x|<-----------------x|<--|
    #     y     +---+---+---+---+---+---+---+---+
    #     t           |                   +-- Cluster_VrelLong_rms
    #     e           +-- Cluster_DistLat_rms
    #           +---+---+---+---+---+---+---+---+
    #         3 |--------------x|   |<---------x|
    #           +---+---+---+---+---+---+---+---+
    #                         |               +-- Cluster_PdH0
    #                         +-- Cluster_VrelLat_rms
    #           +---+---+---+---+---+---+---+---+
    #         4 |<-----------------x|<---------x|
    #           +---+---+---+---+---+---+---+---+
    #                             |           +-- Cluster_AmbigState
    #                             +-- Cluster_InvalidState
    #
    #  Signal tree:
    #
    #    -- {root}
    #       +-- Cluster_ID
    #       +-- Cluster_DistLong_rms
    #       +-- Cluster_DistLat_rms
    #       +-- Cluster_VrelLong_rms
    #       +-- Cluster_VrelLat_rms
    #       +-- Cluster_PdH0
    #       +-- Cluster_InvalidState
    #       +-- Cluster_AmbigState
    #
    #  ------------------------------------------------------------------------
    #
    std_msgs/Float64 cluster_distlong_rms
    std_msgs/Float64 cluster_distlat_rms
    std_msgs/Float64 cluster_vrellong_rms
    std_msgs/Float64 cluster_vrellat_rms
    std_msgs/String cluster_pdh0
    std_msgs/String cluster_invalidstate
    std_msgs/String cluster_ambigstate
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
    const resolved = new Cluster(null);
    if (msg.cluster_id !== undefined) {
      resolved.cluster_id = std_msgs.msg.Int32.Resolve(msg.cluster_id)
    }
    else {
      resolved.cluster_id = new std_msgs.msg.Int32()
    }

    if (msg.cluster_general !== undefined) {
      resolved.cluster_general = ClusterGeneral.Resolve(msg.cluster_general)
    }
    else {
      resolved.cluster_general = new ClusterGeneral()
    }

    if (msg.cluster_quality !== undefined) {
      resolved.cluster_quality = ClusterQuality.Resolve(msg.cluster_quality)
    }
    else {
      resolved.cluster_quality = new ClusterQuality()
    }

    return resolved;
    }
};

module.exports = Cluster;
