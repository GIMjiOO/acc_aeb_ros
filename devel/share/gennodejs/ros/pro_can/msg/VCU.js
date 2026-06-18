// Auto-generated. Do not edit!

// (in-package pro_can.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VCU {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.MotorVelocity = null;
    }
    else {
      if (initObj.hasOwnProperty('MotorVelocity')) {
        this.MotorVelocity = initObj.MotorVelocity
      }
      else {
        this.MotorVelocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VCU
    // Serialize message field [MotorVelocity]
    bufferOffset = _serializer.float32(obj.MotorVelocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VCU
    let len;
    let data = new VCU(null);
    // Deserialize message field [MotorVelocity]
    data.MotorVelocity = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pro_can/VCU';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bad68293825d700d1b4f59a02856c41b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # [TEMP SIM] VCU — ego-speed message stub (mirrors real pro_can/VCU).
    # Field used by acc_aeb_node: MotorVelocity (km/h), cast to double.
    float32 MotorVelocity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VCU(null);
    if (msg.MotorVelocity !== undefined) {
      resolved.MotorVelocity = msg.MotorVelocity;
    }
    else {
      resolved.MotorVelocity = 0.0
    }

    return resolved;
    }
};

module.exports = VCU;
