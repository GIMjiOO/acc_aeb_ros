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

class RadarState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.radarstate_nvmwritestatus = null;
      this.radarstate_nvmreadstatus = null;
      this.radarstate_maxdistancecfg = null;
      this.radarstate_persistent_error = null;
      this.radarstate_interference = null;
      this.radarstate_temperature_error = null;
      this.radarstate_temporary_error = null;
      this.radarstate_voltage_error = null;
      this.radarstate_radarpowercfg = null;
      this.radarstate_sortindex = null;
      this.radarstate_sensorid = null;
      this.radarstate_motionrxstate = null;
      this.radarstate_sendextinfocfg = null;
      this.radarstate_sendqualitycfg = null;
      this.radarstate_outputtypecfg = null;
      this.radarstate_ctrlrelaycfg = null;
      this.radarstate_rcs_threshold = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('radarstate_nvmwritestatus')) {
        this.radarstate_nvmwritestatus = initObj.radarstate_nvmwritestatus
      }
      else {
        this.radarstate_nvmwritestatus = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_nvmreadstatus')) {
        this.radarstate_nvmreadstatus = initObj.radarstate_nvmreadstatus
      }
      else {
        this.radarstate_nvmreadstatus = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_maxdistancecfg')) {
        this.radarstate_maxdistancecfg = initObj.radarstate_maxdistancecfg
      }
      else {
        this.radarstate_maxdistancecfg = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_persistent_error')) {
        this.radarstate_persistent_error = initObj.radarstate_persistent_error
      }
      else {
        this.radarstate_persistent_error = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_interference')) {
        this.radarstate_interference = initObj.radarstate_interference
      }
      else {
        this.radarstate_interference = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_temperature_error')) {
        this.radarstate_temperature_error = initObj.radarstate_temperature_error
      }
      else {
        this.radarstate_temperature_error = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_temporary_error')) {
        this.radarstate_temporary_error = initObj.radarstate_temporary_error
      }
      else {
        this.radarstate_temporary_error = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_voltage_error')) {
        this.radarstate_voltage_error = initObj.radarstate_voltage_error
      }
      else {
        this.radarstate_voltage_error = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_radarpowercfg')) {
        this.radarstate_radarpowercfg = initObj.radarstate_radarpowercfg
      }
      else {
        this.radarstate_radarpowercfg = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_sortindex')) {
        this.radarstate_sortindex = initObj.radarstate_sortindex
      }
      else {
        this.radarstate_sortindex = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_sensorid')) {
        this.radarstate_sensorid = initObj.radarstate_sensorid
      }
      else {
        this.radarstate_sensorid = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_motionrxstate')) {
        this.radarstate_motionrxstate = initObj.radarstate_motionrxstate
      }
      else {
        this.radarstate_motionrxstate = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_sendextinfocfg')) {
        this.radarstate_sendextinfocfg = initObj.radarstate_sendextinfocfg
      }
      else {
        this.radarstate_sendextinfocfg = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_sendqualitycfg')) {
        this.radarstate_sendqualitycfg = initObj.radarstate_sendqualitycfg
      }
      else {
        this.radarstate_sendqualitycfg = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_outputtypecfg')) {
        this.radarstate_outputtypecfg = initObj.radarstate_outputtypecfg
      }
      else {
        this.radarstate_outputtypecfg = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_ctrlrelaycfg')) {
        this.radarstate_ctrlrelaycfg = initObj.radarstate_ctrlrelaycfg
      }
      else {
        this.radarstate_ctrlrelaycfg = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('radarstate_rcs_threshold')) {
        this.radarstate_rcs_threshold = initObj.radarstate_rcs_threshold
      }
      else {
        this.radarstate_rcs_threshold = new std_msgs.msg.UInt8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [radarstate_nvmwritestatus]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_nvmwritestatus, buffer, bufferOffset);
    // Serialize message field [radarstate_nvmreadstatus]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_nvmreadstatus, buffer, bufferOffset);
    // Serialize message field [radarstate_maxdistancecfg]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_maxdistancecfg, buffer, bufferOffset);
    // Serialize message field [radarstate_persistent_error]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_persistent_error, buffer, bufferOffset);
    // Serialize message field [radarstate_interference]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_interference, buffer, bufferOffset);
    // Serialize message field [radarstate_temperature_error]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_temperature_error, buffer, bufferOffset);
    // Serialize message field [radarstate_temporary_error]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_temporary_error, buffer, bufferOffset);
    // Serialize message field [radarstate_voltage_error]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_voltage_error, buffer, bufferOffset);
    // Serialize message field [radarstate_radarpowercfg]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_radarpowercfg, buffer, bufferOffset);
    // Serialize message field [radarstate_sortindex]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_sortindex, buffer, bufferOffset);
    // Serialize message field [radarstate_sensorid]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_sensorid, buffer, bufferOffset);
    // Serialize message field [radarstate_motionrxstate]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_motionrxstate, buffer, bufferOffset);
    // Serialize message field [radarstate_sendextinfocfg]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_sendextinfocfg, buffer, bufferOffset);
    // Serialize message field [radarstate_sendqualitycfg]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_sendqualitycfg, buffer, bufferOffset);
    // Serialize message field [radarstate_outputtypecfg]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_outputtypecfg, buffer, bufferOffset);
    // Serialize message field [radarstate_ctrlrelaycfg]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_ctrlrelaycfg, buffer, bufferOffset);
    // Serialize message field [radarstate_rcs_threshold]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.radarstate_rcs_threshold, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarState
    let len;
    let data = new RadarState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_nvmwritestatus]
    data.radarstate_nvmwritestatus = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_nvmreadstatus]
    data.radarstate_nvmreadstatus = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_maxdistancecfg]
    data.radarstate_maxdistancecfg = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_persistent_error]
    data.radarstate_persistent_error = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_interference]
    data.radarstate_interference = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_temperature_error]
    data.radarstate_temperature_error = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_temporary_error]
    data.radarstate_temporary_error = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_voltage_error]
    data.radarstate_voltage_error = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_radarpowercfg]
    data.radarstate_radarpowercfg = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_sortindex]
    data.radarstate_sortindex = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_sensorid]
    data.radarstate_sensorid = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_motionrxstate]
    data.radarstate_motionrxstate = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_sendextinfocfg]
    data.radarstate_sendextinfocfg = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_sendqualitycfg]
    data.radarstate_sendqualitycfg = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_outputtypecfg]
    data.radarstate_outputtypecfg = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_ctrlrelaycfg]
    data.radarstate_ctrlrelaycfg = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [radarstate_rcs_threshold]
    data.radarstate_rcs_threshold = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/RadarState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2a8e3e1ff2df867bbb8f3f07e04a77f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #  ------------------------------------------------------------------------
    #
    #  Name:       RadarState
    #  Id:         0x201
    #  Length:     8 bytes
    #  Cycle time: 50 ms
    #  Senders:    ARS_ISF
    #  Layout:
    #
    #                          Bit
    #
    #             7   6   5   4   3   2   1   0
    #           +---+---+---+---+---+---+---+---+
    #         0 |<-x|<-x|   |   |   |   |   |   |
    #           +---+---+---+---+---+---+---+---+
    #             |   +-- RadarState_NVMReadStatus
    #             +-- RadarState_NVMwriteStatus
    #           +---+---+---+---+---+---+---+---+
    #         1 |<------------------------------|
    #           +---+---+---+---+---+---+---+---+
    #         2 |------x|<-x|<-x|<-x|<-x|<-x|   |
    #           +---+---+---+---+---+---+---+---+
    #                 |   |   |   |   |   +-- RadarState_Voltage_Error
    #                 |   |   |   |   +-- RadarState_Temporary_Error
    #                 |   |   |   +-- RadarState_Temperature_Error
    #                 |   |   +-- RadarState_Interference
    #                 |   +-- RadarState_Persistent_Error
    #                 +-- RadarState_MaxDistanceCfg
    #           +---+---+---+---+---+---+---+---+
    #     B   3 |   |   |   |   |   |   |<------|
    #     y     +---+---+---+---+---+---+---+---+
    #     t   4 |--x|<---------x|   |<---------x|
    #     e     +---+---+---+---+---+---+---+---+
    #             |           |               +-- RadarState_SensorID
    #             |           +-- RadarState_SortIndex
    #             +-- RadarState_RadarPowerCfg
    #           +---+---+---+---+---+---+---+---+
    #         5 |<-----x|<-x|<-x|<-----x|<-x|   |
    #           +---+---+---+---+---+---+---+---+
    #                 |   |   |       |   +-- RadarState_CtrlRelayCfg
    #                 |   |   |       +-- RadarState_OutputTypeCfg
    #                 |   |   +-- RadarState_SendQualityCfg
    #                 |   +-- RadarState_SendExtInfoCfg
    #                 +-- RadarState_MotionRxState
    #           +---+---+---+---+---+---+---+---+
    #         6 |   |   |   |   |   |   |   |   |
    #           +---+---+---+---+---+---+---+---+
    #         7 |   |   |   |<---------x|   |   |
    #           +---+---+---+---+---+---+---+---+
    #                                 +-- RadarState_RCS_Threshold
    #
    #  Signal tree:
    #
    #    -- {root}
    #       +-- RadarState_NVMwriteStatus
    #       +-- RadarState_NVMReadStatus
    #       +-- RadarState_MaxDistanceCfg
    #       +-- RadarState_Persistent_Error
    #       +-- RadarState_Interference
    #       +-- RadarState_Temperature_Error
    #       +-- RadarState_Temporary_Error
    #       +-- RadarState_Voltage_Error
    #       +-- RadarState_RadarPowerCfg
    #       +-- RadarState_SortIndex
    #       +-- RadarState_SensorID
    #       +-- RadarState_MotionRxState
    #       +-- RadarState_SendExtInfoCfg
    #       +-- RadarState_SendQualityCfg
    #       +-- RadarState_OutputTypeCfg
    #       +-- RadarState_CtrlRelayCfg
    #       +-- RadarState_RCS_Threshold
    #
    #  ------------------------------------------------------------------------
    #
    std_msgs/Header header
    std_msgs/UInt8 radarstate_nvmwritestatus
    std_msgs/UInt8 radarstate_nvmreadstatus
    std_msgs/UInt8 radarstate_maxdistancecfg
    std_msgs/UInt8 radarstate_persistent_error
    std_msgs/UInt8 radarstate_interference
    std_msgs/UInt8 radarstate_temperature_error
    std_msgs/UInt8 radarstate_temporary_error
    std_msgs/UInt8 radarstate_voltage_error
    std_msgs/UInt8 radarstate_radarpowercfg
    std_msgs/UInt8 radarstate_sortindex
    std_msgs/UInt8 radarstate_sensorid
    std_msgs/UInt8 radarstate_motionrxstate
    std_msgs/UInt8 radarstate_sendextinfocfg
    std_msgs/UInt8 radarstate_sendqualitycfg
    std_msgs/UInt8 radarstate_outputtypecfg
    std_msgs/UInt8 radarstate_ctrlrelaycfg
    std_msgs/UInt8 radarstate_rcs_threshold
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
    const resolved = new RadarState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.radarstate_nvmwritestatus !== undefined) {
      resolved.radarstate_nvmwritestatus = std_msgs.msg.UInt8.Resolve(msg.radarstate_nvmwritestatus)
    }
    else {
      resolved.radarstate_nvmwritestatus = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_nvmreadstatus !== undefined) {
      resolved.radarstate_nvmreadstatus = std_msgs.msg.UInt8.Resolve(msg.radarstate_nvmreadstatus)
    }
    else {
      resolved.radarstate_nvmreadstatus = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_maxdistancecfg !== undefined) {
      resolved.radarstate_maxdistancecfg = std_msgs.msg.UInt8.Resolve(msg.radarstate_maxdistancecfg)
    }
    else {
      resolved.radarstate_maxdistancecfg = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_persistent_error !== undefined) {
      resolved.radarstate_persistent_error = std_msgs.msg.UInt8.Resolve(msg.radarstate_persistent_error)
    }
    else {
      resolved.radarstate_persistent_error = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_interference !== undefined) {
      resolved.radarstate_interference = std_msgs.msg.UInt8.Resolve(msg.radarstate_interference)
    }
    else {
      resolved.radarstate_interference = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_temperature_error !== undefined) {
      resolved.radarstate_temperature_error = std_msgs.msg.UInt8.Resolve(msg.radarstate_temperature_error)
    }
    else {
      resolved.radarstate_temperature_error = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_temporary_error !== undefined) {
      resolved.radarstate_temporary_error = std_msgs.msg.UInt8.Resolve(msg.radarstate_temporary_error)
    }
    else {
      resolved.radarstate_temporary_error = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_voltage_error !== undefined) {
      resolved.radarstate_voltage_error = std_msgs.msg.UInt8.Resolve(msg.radarstate_voltage_error)
    }
    else {
      resolved.radarstate_voltage_error = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_radarpowercfg !== undefined) {
      resolved.radarstate_radarpowercfg = std_msgs.msg.UInt8.Resolve(msg.radarstate_radarpowercfg)
    }
    else {
      resolved.radarstate_radarpowercfg = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_sortindex !== undefined) {
      resolved.radarstate_sortindex = std_msgs.msg.UInt8.Resolve(msg.radarstate_sortindex)
    }
    else {
      resolved.radarstate_sortindex = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_sensorid !== undefined) {
      resolved.radarstate_sensorid = std_msgs.msg.UInt8.Resolve(msg.radarstate_sensorid)
    }
    else {
      resolved.radarstate_sensorid = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_motionrxstate !== undefined) {
      resolved.radarstate_motionrxstate = std_msgs.msg.UInt8.Resolve(msg.radarstate_motionrxstate)
    }
    else {
      resolved.radarstate_motionrxstate = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_sendextinfocfg !== undefined) {
      resolved.radarstate_sendextinfocfg = std_msgs.msg.UInt8.Resolve(msg.radarstate_sendextinfocfg)
    }
    else {
      resolved.radarstate_sendextinfocfg = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_sendqualitycfg !== undefined) {
      resolved.radarstate_sendqualitycfg = std_msgs.msg.UInt8.Resolve(msg.radarstate_sendqualitycfg)
    }
    else {
      resolved.radarstate_sendqualitycfg = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_outputtypecfg !== undefined) {
      resolved.radarstate_outputtypecfg = std_msgs.msg.UInt8.Resolve(msg.radarstate_outputtypecfg)
    }
    else {
      resolved.radarstate_outputtypecfg = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_ctrlrelaycfg !== undefined) {
      resolved.radarstate_ctrlrelaycfg = std_msgs.msg.UInt8.Resolve(msg.radarstate_ctrlrelaycfg)
    }
    else {
      resolved.radarstate_ctrlrelaycfg = new std_msgs.msg.UInt8()
    }

    if (msg.radarstate_rcs_threshold !== undefined) {
      resolved.radarstate_rcs_threshold = std_msgs.msg.UInt8.Resolve(msg.radarstate_rcs_threshold)
    }
    else {
      resolved.radarstate_rcs_threshold = new std_msgs.msg.UInt8()
    }

    return resolved;
    }
};

module.exports = RadarState;
