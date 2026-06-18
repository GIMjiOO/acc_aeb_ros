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

class RadarConfiguration {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radarcfg_storeinnvm_valid = null;
      this.radarcfg_sortindex_valid = null;
      this.radarcfg_sendextinfo_valid = null;
      this.radarcfg_sendquality_valid = null;
      this.radarcfg_outputtype_valid = null;
      this.radarcfg_radarpower_valid = null;
      this.radarcfg_sensorid_valid = null;
      this.radarcfg_maxdistance_valid = null;
      this.radarcfg_maxdistance = null;
      this.radarcfg_radarpower = null;
      this.radarcfg_outputtype = null;
      this.radarcfg_sensorid = null;
      this.radarcfg_storeinnvm = null;
      this.radarcfg_sortindex = null;
      this.radarcfg_sendextinfo = null;
      this.radarcfg_sendquality = null;
      this.radarcfg_ctrlrelay = null;
      this.radarcfg_ctrlrelay_valid = null;
      this.radarcfg_rcs_threshold = null;
      this.radarcfg_rcs_threshold_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('radarcfg_storeinnvm_valid')) {
        this.radarcfg_storeinnvm_valid = initObj.radarcfg_storeinnvm_valid
      }
      else {
        this.radarcfg_storeinnvm_valid = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_sortindex_valid')) {
        this.radarcfg_sortindex_valid = initObj.radarcfg_sortindex_valid
      }
      else {
        this.radarcfg_sortindex_valid = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_sendextinfo_valid')) {
        this.radarcfg_sendextinfo_valid = initObj.radarcfg_sendextinfo_valid
      }
      else {
        this.radarcfg_sendextinfo_valid = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_sendquality_valid')) {
        this.radarcfg_sendquality_valid = initObj.radarcfg_sendquality_valid
      }
      else {
        this.radarcfg_sendquality_valid = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_outputtype_valid')) {
        this.radarcfg_outputtype_valid = initObj.radarcfg_outputtype_valid
      }
      else {
        this.radarcfg_outputtype_valid = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_radarpower_valid')) {
        this.radarcfg_radarpower_valid = initObj.radarcfg_radarpower_valid
      }
      else {
        this.radarcfg_radarpower_valid = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_sensorid_valid')) {
        this.radarcfg_sensorid_valid = initObj.radarcfg_sensorid_valid
      }
      else {
        this.radarcfg_sensorid_valid = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_maxdistance_valid')) {
        this.radarcfg_maxdistance_valid = initObj.radarcfg_maxdistance_valid
      }
      else {
        this.radarcfg_maxdistance_valid = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_maxdistance')) {
        this.radarcfg_maxdistance = initObj.radarcfg_maxdistance
      }
      else {
        this.radarcfg_maxdistance = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_radarpower')) {
        this.radarcfg_radarpower = initObj.radarcfg_radarpower
      }
      else {
        this.radarcfg_radarpower = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_outputtype')) {
        this.radarcfg_outputtype = initObj.radarcfg_outputtype
      }
      else {
        this.radarcfg_outputtype = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_sensorid')) {
        this.radarcfg_sensorid = initObj.radarcfg_sensorid
      }
      else {
        this.radarcfg_sensorid = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_storeinnvm')) {
        this.radarcfg_storeinnvm = initObj.radarcfg_storeinnvm
      }
      else {
        this.radarcfg_storeinnvm = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_sortindex')) {
        this.radarcfg_sortindex = initObj.radarcfg_sortindex
      }
      else {
        this.radarcfg_sortindex = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_sendextinfo')) {
        this.radarcfg_sendextinfo = initObj.radarcfg_sendextinfo
      }
      else {
        this.radarcfg_sendextinfo = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_sendquality')) {
        this.radarcfg_sendquality = initObj.radarcfg_sendquality
      }
      else {
        this.radarcfg_sendquality = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_ctrlrelay')) {
        this.radarcfg_ctrlrelay = initObj.radarcfg_ctrlrelay
      }
      else {
        this.radarcfg_ctrlrelay = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_ctrlrelay_valid')) {
        this.radarcfg_ctrlrelay_valid = initObj.radarcfg_ctrlrelay_valid
      }
      else {
        this.radarcfg_ctrlrelay_valid = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_rcs_threshold')) {
        this.radarcfg_rcs_threshold = initObj.radarcfg_rcs_threshold
      }
      else {
        this.radarcfg_rcs_threshold = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarcfg_rcs_threshold_valid')) {
        this.radarcfg_rcs_threshold_valid = initObj.radarcfg_rcs_threshold_valid
      }
      else {
        this.radarcfg_rcs_threshold_valid = new std_msgs.msg.UInt8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarConfiguration
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radarcfg_storeinnvm_valid]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_storeinnvm_valid, buffer, bufferOffset);
    // Serialize message field [radarcfg_sortindex_valid]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_sortindex_valid, buffer, bufferOffset);
    // Serialize message field [radarcfg_sendextinfo_valid]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_sendextinfo_valid, buffer, bufferOffset);
    // Serialize message field [radarcfg_sendquality_valid]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_sendquality_valid, buffer, bufferOffset);
    // Serialize message field [radarcfg_outputtype_valid]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_outputtype_valid, buffer, bufferOffset);
    // Serialize message field [radarcfg_radarpower_valid]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_radarpower_valid, buffer, bufferOffset);
    // Serialize message field [radarcfg_sensorid_valid]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_sensorid_valid, buffer, bufferOffset);
    // Serialize message field [radarcfg_maxdistance_valid]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_maxdistance_valid, buffer, bufferOffset);
    // Serialize message field [radarcfg_maxdistance]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_maxdistance, buffer, bufferOffset);
    // Serialize message field [radarcfg_radarpower]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_radarpower, buffer, bufferOffset);
    // Serialize message field [radarcfg_outputtype]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_outputtype, buffer, bufferOffset);
    // Serialize message field [radarcfg_sensorid]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_sensorid, buffer, bufferOffset);
    // Serialize message field [radarcfg_storeinnvm]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_storeinnvm, buffer, bufferOffset);
    // Serialize message field [radarcfg_sortindex]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_sortindex, buffer, bufferOffset);
    // Serialize message field [radarcfg_sendextinfo]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_sendextinfo, buffer, bufferOffset);
    // Serialize message field [radarcfg_sendquality]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_sendquality, buffer, bufferOffset);
    // Serialize message field [radarcfg_ctrlrelay]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_ctrlrelay, buffer, bufferOffset);
    // Serialize message field [radarcfg_ctrlrelay_valid]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_ctrlrelay_valid, buffer, bufferOffset);
    // Serialize message field [radarcfg_rcs_threshold]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_rcs_threshold, buffer, bufferOffset);
    // Serialize message field [radarcfg_rcs_threshold_valid]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarcfg_rcs_threshold_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarConfiguration
    let len;
    let data = new RadarConfiguration(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_storeinnvm_valid]
    data.radarcfg_storeinnvm_valid = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_sortindex_valid]
    data.radarcfg_sortindex_valid = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_sendextinfo_valid]
    data.radarcfg_sendextinfo_valid = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_sendquality_valid]
    data.radarcfg_sendquality_valid = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_outputtype_valid]
    data.radarcfg_outputtype_valid = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_radarpower_valid]
    data.radarcfg_radarpower_valid = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_sensorid_valid]
    data.radarcfg_sensorid_valid = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_maxdistance_valid]
    data.radarcfg_maxdistance_valid = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_maxdistance]
    data.radarcfg_maxdistance = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_radarpower]
    data.radarcfg_radarpower = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_outputtype]
    data.radarcfg_outputtype = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_sensorid]
    data.radarcfg_sensorid = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_storeinnvm]
    data.radarcfg_storeinnvm = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_sortindex]
    data.radarcfg_sortindex = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_sendextinfo]
    data.radarcfg_sendextinfo = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_sendquality]
    data.radarcfg_sendquality = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_ctrlrelay]
    data.radarcfg_ctrlrelay = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_ctrlrelay_valid]
    data.radarcfg_ctrlrelay_valid = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_rcs_threshold]
    data.radarcfg_rcs_threshold = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarcfg_rcs_threshold_valid]
    data.radarcfg_rcs_threshold_valid = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/RadarConfiguration';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab23258a6bff274c2b84163d46a17846';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #  ------------------------------------------------------------------------
    #
    #  Name:       RadarConfiguration
    #  Id:         0x200
    #  Length:     8 bytes
    #  Cycle time: 0 ms
    #  Senders:    ExternalUnit
    #  Layout:
    #
    #                          Bit
    #
    #             7   6   5   4   3   2   1   0
    #           +---+---+---+---+---+---+---+---+
    #         0 |<-x|<-x|<-x|<-x|<-x|<-x|<-x|<-x|
    #           +---+---+---+---+---+---+---+---+
    #             |   |   |   |   |   |   |   +-- RadarCfg_MaxDistance_valid
    #             |   |   |   |   |   |   +-- RadarCfg_SensorID_valid
    #             |   |   |   |   |   +-- RadarCfg_RadarPower_valid
    #             |   |   |   |   +-- RadarCfg_OutputType_valid
    #             |   |   |   +-- RadarCfg_SendQuality_valid
    #             |   |   +-- RadarCfg_SendExtInfo_valid
    #             |   +-- RadarCfg_SortIndex_valid
    #             +-- RadarCfg_StoreInNVM_valid
    #           +---+---+---+---+---+---+---+---+
    #         1 |<------------------------------|
    #           +---+---+---+---+---+---+---+---+
    #         2 |------x|   |   |   |   |   |   |
    #           +---+---+---+---+---+---+---+---+
    #                 +-- RadarCfg_MaxDistance
    #           +---+---+---+---+---+---+---+---+
    #         3 |   |   |   |   |   |   |   |   |
    #     B     +---+---+---+---+---+---+---+---+
    #     y   4 |<---------x|<-----x|<---------x|
    #     t     +---+---+---+---+---+---+---+---+
    #     e               |       |           +-- RadarCfg_SensorID
    #                     |       +-- RadarCfg_OutputType
    #                     +-- RadarCfg_RadarPower
    #           +---+---+---+---+---+---+---+---+
    #         5 |<-x|<---------x|<-x|<-x|<-x|<-x|
    #           +---+---+---+---+---+---+---+---+
    #             |           |   |   |   |   +-- RadarCfg_CtrlRelay_valid
    #             |           |   |   |   +-- RadarCfg_CtrlRelay
    #             |           |   |   +-- RadarCfg_SendQuality
    #             |           |   +-- RadarCfg_SendExtInfo
    #             |           +-- RadarCfg_SortIndex
    #             +-- RadarCfg_StoreInNVM
    #           +---+---+---+---+---+---+---+---+
    #         6 |   |   |   |   |<---------x|<-x|
    #           +---+---+---+---+---+---+---+---+
    #                                     |   +-- RadarCfg_RCS_Threshold_valid
    #                                     +-- RadarCfg_RCS_Threshold
    #           +---+---+---+---+---+---+---+---+
    #         7 |   |   |   |   |   |   |   |   |
    #           +---+---+---+---+---+---+---+---+
    #
    #  Signal tree:
    #
    #    -- {root}
    #       +-- RadarCfg_StoreInNVM_valid
    #       +-- RadarCfg_SortIndex_valid
    #       +-- RadarCfg_SendExtInfo_valid
    #       +-- RadarCfg_SendQuality_valid
    #       +-- RadarCfg_OutputType_valid
    #       +-- RadarCfg_RadarPower_valid
    #       +-- RadarCfg_SensorID_valid
    #       +-- RadarCfg_MaxDistance_valid
    #       +-- RadarCfg_MaxDistance
    #       +-- RadarCfg_RadarPower
    #       +-- RadarCfg_OutputType
    #       +-- RadarCfg_SensorID
    #       +-- RadarCfg_StoreInNVM
    #       +-- RadarCfg_SortIndex
    #       +-- RadarCfg_SendExtInfo
    #       +-- RadarCfg_SendQuality
    #       +-- RadarCfg_CtrlRelay
    #       +-- RadarCfg_CtrlRelay_valid
    #       +-- RadarCfg_RCS_Threshold
    #       +-- RadarCfg_RCS_Threshold_valid
    #
    #  ------------------------------------------------------------------------
    #
    
    std_msgs/Header header
    std_msgs/UInt8 radarcfg_storeinnvm_valid
    std_msgs/UInt8 radarcfg_sortindex_valid
    std_msgs/UInt8 radarcfg_sendextinfo_valid
    std_msgs/UInt8 radarcfg_sendquality_valid
    std_msgs/UInt8 radarcfg_outputtype_valid
    std_msgs/UInt8 radarcfg_radarpower_valid
    std_msgs/UInt8 radarcfg_sensorid_valid
    std_msgs/UInt8 radarcfg_maxdistance_valid
    std_msgs/UInt8 radarcfg_maxdistance
    std_msgs/UInt8 radarcfg_radarpower
    std_msgs/UInt8 radarcfg_outputtype
    std_msgs/UInt8 radarcfg_sensorid
    std_msgs/UInt8 radarcfg_storeinnvm
    std_msgs/UInt8 radarcfg_sortindex
    std_msgs/UInt8 radarcfg_sendextinfo
    std_msgs/UInt8 radarcfg_sendquality
    std_msgs/UInt8 radarcfg_ctrlrelay
    std_msgs/UInt8 radarcfg_ctrlrelay_valid
    std_msgs/UInt8 radarcfg_rcs_threshold
    std_msgs/UInt8 radarcfg_rcs_threshold_valid
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
    MSG: std_msgs/UInt8
    uint8 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarConfiguration(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.radarcfg_storeinnvm_valid !== undefined) {
      resolved.radarcfg_storeinnvm_valid = std_msgs.msg.UInt8.Resolve(msg.radarcfg_storeinnvm_valid)
    }
    else {
      resolved.radarcfg_storeinnvm_valid = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_sortindex_valid !== undefined) {
      resolved.radarcfg_sortindex_valid = std_msgs.msg.UInt8.Resolve(msg.radarcfg_sortindex_valid)
    }
    else {
      resolved.radarcfg_sortindex_valid = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_sendextinfo_valid !== undefined) {
      resolved.radarcfg_sendextinfo_valid = std_msgs.msg.UInt8.Resolve(msg.radarcfg_sendextinfo_valid)
    }
    else {
      resolved.radarcfg_sendextinfo_valid = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_sendquality_valid !== undefined) {
      resolved.radarcfg_sendquality_valid = std_msgs.msg.UInt8.Resolve(msg.radarcfg_sendquality_valid)
    }
    else {
      resolved.radarcfg_sendquality_valid = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_outputtype_valid !== undefined) {
      resolved.radarcfg_outputtype_valid = std_msgs.msg.UInt8.Resolve(msg.radarcfg_outputtype_valid)
    }
    else {
      resolved.radarcfg_outputtype_valid = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_radarpower_valid !== undefined) {
      resolved.radarcfg_radarpower_valid = std_msgs.msg.UInt8.Resolve(msg.radarcfg_radarpower_valid)
    }
    else {
      resolved.radarcfg_radarpower_valid = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_sensorid_valid !== undefined) {
      resolved.radarcfg_sensorid_valid = std_msgs.msg.UInt8.Resolve(msg.radarcfg_sensorid_valid)
    }
    else {
      resolved.radarcfg_sensorid_valid = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_maxdistance_valid !== undefined) {
      resolved.radarcfg_maxdistance_valid = std_msgs.msg.UInt8.Resolve(msg.radarcfg_maxdistance_valid)
    }
    else {
      resolved.radarcfg_maxdistance_valid = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_maxdistance !== undefined) {
      resolved.radarcfg_maxdistance = std_msgs.msg.UInt8.Resolve(msg.radarcfg_maxdistance)
    }
    else {
      resolved.radarcfg_maxdistance = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_radarpower !== undefined) {
      resolved.radarcfg_radarpower = std_msgs.msg.UInt8.Resolve(msg.radarcfg_radarpower)
    }
    else {
      resolved.radarcfg_radarpower = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_outputtype !== undefined) {
      resolved.radarcfg_outputtype = std_msgs.msg.UInt8.Resolve(msg.radarcfg_outputtype)
    }
    else {
      resolved.radarcfg_outputtype = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_sensorid !== undefined) {
      resolved.radarcfg_sensorid = std_msgs.msg.UInt8.Resolve(msg.radarcfg_sensorid)
    }
    else {
      resolved.radarcfg_sensorid = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_storeinnvm !== undefined) {
      resolved.radarcfg_storeinnvm = std_msgs.msg.UInt8.Resolve(msg.radarcfg_storeinnvm)
    }
    else {
      resolved.radarcfg_storeinnvm = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_sortindex !== undefined) {
      resolved.radarcfg_sortindex = std_msgs.msg.UInt8.Resolve(msg.radarcfg_sortindex)
    }
    else {
      resolved.radarcfg_sortindex = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_sendextinfo !== undefined) {
      resolved.radarcfg_sendextinfo = std_msgs.msg.UInt8.Resolve(msg.radarcfg_sendextinfo)
    }
    else {
      resolved.radarcfg_sendextinfo = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_sendquality !== undefined) {
      resolved.radarcfg_sendquality = std_msgs.msg.UInt8.Resolve(msg.radarcfg_sendquality)
    }
    else {
      resolved.radarcfg_sendquality = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_ctrlrelay !== undefined) {
      resolved.radarcfg_ctrlrelay = std_msgs.msg.UInt8.Resolve(msg.radarcfg_ctrlrelay)
    }
    else {
      resolved.radarcfg_ctrlrelay = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_ctrlrelay_valid !== undefined) {
      resolved.radarcfg_ctrlrelay_valid = std_msgs.msg.UInt8.Resolve(msg.radarcfg_ctrlrelay_valid)
    }
    else {
      resolved.radarcfg_ctrlrelay_valid = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_rcs_threshold !== undefined) {
      resolved.radarcfg_rcs_threshold = std_msgs.msg.UInt8.Resolve(msg.radarcfg_rcs_threshold)
    }
    else {
      resolved.radarcfg_rcs_threshold = new std_msgs.msg.UInt8()
    }

    if (msg.radarcfg_rcs_threshold_valid !== undefined) {
      resolved.radarcfg_rcs_threshold_valid = std_msgs.msg.UInt8.Resolve(msg.radarcfg_rcs_threshold_valid)
    }
    else {
      resolved.radarcfg_rcs_threshold_valid = new std_msgs.msg.UInt8()
    }

    return resolved;
    }
};

module.exports = RadarConfiguration;
