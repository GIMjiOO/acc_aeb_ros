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

class ClusterQuality {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cluster_distlong_rms = null;
      this.cluster_distlat_rms = null;
      this.cluster_vrellong_rms = null;
      this.cluster_vrellat_rms = null;
      this.cluster_pdh0 = null;
      this.cluster_invalidstate = null;
      this.cluster_ambigstate = null;
    }
    else {
      if (initObj.hasOwnProperty('cluster_distlong_rms')) {
        this.cluster_distlong_rms = initObj.cluster_distlong_rms
      }
      else {
        this.cluster_distlong_rms = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('cluster_distlat_rms')) {
        this.cluster_distlat_rms = initObj.cluster_distlat_rms
      }
      else {
        this.cluster_distlat_rms = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('cluster_vrellong_rms')) {
        this.cluster_vrellong_rms = initObj.cluster_vrellong_rms
      }
      else {
        this.cluster_vrellong_rms = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('cluster_vrellat_rms')) {
        this.cluster_vrellat_rms = initObj.cluster_vrellat_rms
      }
      else {
        this.cluster_vrellat_rms = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('cluster_pdh0')) {
        this.cluster_pdh0 = initObj.cluster_pdh0
      }
      else {
        this.cluster_pdh0 = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('cluster_invalidstate')) {
        this.cluster_invalidstate = initObj.cluster_invalidstate
      }
      else {
        this.cluster_invalidstate = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('cluster_ambigstate')) {
        this.cluster_ambigstate = initObj.cluster_ambigstate
      }
      else {
        this.cluster_ambigstate = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClusterQuality
    // Serialize message field [cluster_distlong_rms]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.cluster_distlong_rms, buffer, bufferOffset);
    // Serialize message field [cluster_distlat_rms]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.cluster_distlat_rms, buffer, bufferOffset);
    // Serialize message field [cluster_vrellong_rms]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.cluster_vrellong_rms, buffer, bufferOffset);
    // Serialize message field [cluster_vrellat_rms]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.cluster_vrellat_rms, buffer, bufferOffset);
    // Serialize message field [cluster_pdh0]
    bufferOffset = std_msgs.msg.String.serialize(obj.cluster_pdh0, buffer, bufferOffset);
    // Serialize message field [cluster_invalidstate]
    bufferOffset = std_msgs.msg.String.serialize(obj.cluster_invalidstate, buffer, bufferOffset);
    // Serialize message field [cluster_ambigstate]
    bufferOffset = std_msgs.msg.String.serialize(obj.cluster_ambigstate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClusterQuality
    let len;
    let data = new ClusterQuality(null);
    // Deserialize message field [cluster_distlong_rms]
    data.cluster_distlong_rms = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_distlat_rms]
    data.cluster_distlat_rms = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_vrellong_rms]
    data.cluster_vrellong_rms = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_vrellat_rms]
    data.cluster_vrellat_rms = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_pdh0]
    data.cluster_pdh0 = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_invalidstate]
    data.cluster_invalidstate = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [cluster_ambigstate]
    data.cluster_ambigstate = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.cluster_pdh0);
    length += std_msgs.msg.String.getMessageSize(object.cluster_invalidstate);
    length += std_msgs.msg.String.getMessageSize(object.cluster_ambigstate);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/ClusterQuality';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e02012645da0efa0adaf8bcdc5630918';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ClusterQuality(null);
    if (msg.cluster_distlong_rms !== undefined) {
      resolved.cluster_distlong_rms = std_msgs.msg.Float64.Resolve(msg.cluster_distlong_rms)
    }
    else {
      resolved.cluster_distlong_rms = new std_msgs.msg.Float64()
    }

    if (msg.cluster_distlat_rms !== undefined) {
      resolved.cluster_distlat_rms = std_msgs.msg.Float64.Resolve(msg.cluster_distlat_rms)
    }
    else {
      resolved.cluster_distlat_rms = new std_msgs.msg.Float64()
    }

    if (msg.cluster_vrellong_rms !== undefined) {
      resolved.cluster_vrellong_rms = std_msgs.msg.Float64.Resolve(msg.cluster_vrellong_rms)
    }
    else {
      resolved.cluster_vrellong_rms = new std_msgs.msg.Float64()
    }

    if (msg.cluster_vrellat_rms !== undefined) {
      resolved.cluster_vrellat_rms = std_msgs.msg.Float64.Resolve(msg.cluster_vrellat_rms)
    }
    else {
      resolved.cluster_vrellat_rms = new std_msgs.msg.Float64()
    }

    if (msg.cluster_pdh0 !== undefined) {
      resolved.cluster_pdh0 = std_msgs.msg.String.Resolve(msg.cluster_pdh0)
    }
    else {
      resolved.cluster_pdh0 = new std_msgs.msg.String()
    }

    if (msg.cluster_invalidstate !== undefined) {
      resolved.cluster_invalidstate = std_msgs.msg.String.Resolve(msg.cluster_invalidstate)
    }
    else {
      resolved.cluster_invalidstate = new std_msgs.msg.String()
    }

    if (msg.cluster_ambigstate !== undefined) {
      resolved.cluster_ambigstate = std_msgs.msg.String.Resolve(msg.cluster_ambigstate)
    }
    else {
      resolved.cluster_ambigstate = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = ClusterQuality;
