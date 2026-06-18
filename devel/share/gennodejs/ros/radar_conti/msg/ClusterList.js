// Auto-generated. Do not edit!

// (in-package radar_conti.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Cluster = require('./Cluster.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ClusterList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cluster_count = null;
      this.clusters = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('cluster_count')) {
        this.cluster_count = initObj.cluster_count
      }
      else {
        this.cluster_count = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('clusters')) {
        this.clusters = initObj.clusters
      }
      else {
        this.clusters = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClusterList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cluster_count]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.cluster_count, buffer, bufferOffset);
    // Serialize message field [clusters]
    // Serialize the length for message field [clusters]
    bufferOffset = _serializer.uint32(obj.clusters.length, buffer, bufferOffset);
    obj.clusters.forEach((val) => {
      bufferOffset = Cluster.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClusterList
    let len;
    let data = new ClusterList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_count]
    data.cluster_count = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [clusters]
    // Deserialize array length for message field [clusters]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.clusters = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.clusters[i] = Cluster.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.clusters.forEach((val) => {
      length += Cluster.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/ClusterList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f224f52f8435f121b949e6b05d35dc26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    std_msgs/Int32 cluster_count
    Cluster[] clusters
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
    MSG: radar_conti/Cluster
    std_msgs/Int32 cluster_id
    ClusterGeneral cluster_general
    ClusterQuality cluster_quality
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
    const resolved = new ClusterList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.cluster_count !== undefined) {
      resolved.cluster_count = std_msgs.msg.Int32.Resolve(msg.cluster_count)
    }
    else {
      resolved.cluster_count = new std_msgs.msg.Int32()
    }

    if (msg.clusters !== undefined) {
      resolved.clusters = new Array(msg.clusters.length);
      for (let i = 0; i < resolved.clusters.length; ++i) {
        resolved.clusters[i] = Cluster.Resolve(msg.clusters[i]);
      }
    }
    else {
      resolved.clusters = []
    }

    return resolved;
    }
};

module.exports = ClusterList;
