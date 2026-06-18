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

class VersionID {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.version_majorrelease = null;
      this.version_minorrelease = null;
      this.version_patchlevel = null;
      this.version_extendedrange = null;
      this.version_countrycode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('version_majorrelease')) {
        this.version_majorrelease = initObj.version_majorrelease
      }
      else {
        this.version_majorrelease = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('version_minorrelease')) {
        this.version_minorrelease = initObj.version_minorrelease
      }
      else {
        this.version_minorrelease = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('version_patchlevel')) {
        this.version_patchlevel = initObj.version_patchlevel
      }
      else {
        this.version_patchlevel = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('version_extendedrange')) {
        this.version_extendedrange = initObj.version_extendedrange
      }
      else {
        this.version_extendedrange = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('version_countrycode')) {
        this.version_countrycode = initObj.version_countrycode
      }
      else {
        this.version_countrycode = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VersionID
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [version_majorrelease]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.version_majorrelease, buffer, bufferOffset);
    // Serialize message field [version_minorrelease]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.version_minorrelease, buffer, bufferOffset);
    // Serialize message field [version_patchlevel]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.version_patchlevel, buffer, bufferOffset);
    // Serialize message field [version_extendedrange]
    bufferOffset = std_msgs.msg.String.serialize(obj.version_extendedrange, buffer, bufferOffset);
    // Serialize message field [version_countrycode]
    bufferOffset = std_msgs.msg.String.serialize(obj.version_countrycode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VersionID
    let len;
    let data = new VersionID(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [version_majorrelease]
    data.version_majorrelease = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [version_minorrelease]
    data.version_minorrelease = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [version_patchlevel]
    data.version_patchlevel = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [version_extendedrange]
    data.version_extendedrange = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [version_countrycode]
    data.version_countrycode = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += std_msgs.msg.String.getMessageSize(object.version_extendedrange);
    length += std_msgs.msg.String.getMessageSize(object.version_countrycode);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/VersionID';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea1b12f3e20711755dbdd58cbc0c1b78';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #  ------------------------------------------------------------------------
    #
    #  Name:       VersionID
    #  Id:         0x700
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
    #                                         +-- Version_MajorRelease
    #           +---+---+---+---+---+---+---+---+
    #         1 |<-----------------------------x|
    #     B     +---+---+---+---+---+---+---+---+
    #     y                                   +-- Version_MinorRelease
    #     t     +---+---+---+---+---+---+---+---+
    #     e   2 |<-----------------------------x|
    #           +---+---+---+---+---+---+---+---+
    #                                         +-- Version_PatchLevel
    #           +---+---+---+---+---+---+---+---+
    #         3 |   |   |   |   |   |   |<-x|<-x|
    #           +---+---+---+---+---+---+---+---+
    #                                     |   +-- Version_CountryCode
    #                                     +-- Version_ExtendedRange
    #
    #  Signal tree:
    #
    #    -- {root}
    #       +-- Version_MajorRelease
    #       +-- Version_MinorRelease
    #       +-- Version_PatchLevel
    #       +-- Version_ExtendedRange
    #       +-- Version_CountryCode
    #
    #  ------------------------------------------------------------------------
    std_msgs/Header header
    std_msgs/Int32 version_majorrelease
    std_msgs/Int32 version_minorrelease
    std_msgs/Int32 version_patchlevel
    std_msgs/String version_extendedrange
    std_msgs/String version_countrycode
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
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VersionID(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.version_majorrelease !== undefined) {
      resolved.version_majorrelease = std_msgs.msg.Int32.Resolve(msg.version_majorrelease)
    }
    else {
      resolved.version_majorrelease = new std_msgs.msg.Int32()
    }

    if (msg.version_minorrelease !== undefined) {
      resolved.version_minorrelease = std_msgs.msg.Int32.Resolve(msg.version_minorrelease)
    }
    else {
      resolved.version_minorrelease = new std_msgs.msg.Int32()
    }

    if (msg.version_patchlevel !== undefined) {
      resolved.version_patchlevel = std_msgs.msg.Int32.Resolve(msg.version_patchlevel)
    }
    else {
      resolved.version_patchlevel = new std_msgs.msg.Int32()
    }

    if (msg.version_extendedrange !== undefined) {
      resolved.version_extendedrange = std_msgs.msg.String.Resolve(msg.version_extendedrange)
    }
    else {
      resolved.version_extendedrange = new std_msgs.msg.String()
    }

    if (msg.version_countrycode !== undefined) {
      resolved.version_countrycode = std_msgs.msg.String.Resolve(msg.version_countrycode)
    }
    else {
      resolved.version_countrycode = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = VersionID;
