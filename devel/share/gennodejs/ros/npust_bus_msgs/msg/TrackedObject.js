// Auto-generated. Do not edit!

// (in-package npust_bus_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TrackedObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.vx = null;
      this.id = null;
      this.x_var = null;
      this.y_var = null;
      this.vx_var = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('x_var')) {
        this.x_var = initObj.x_var
      }
      else {
        this.x_var = 0.0;
      }
      if (initObj.hasOwnProperty('y_var')) {
        this.y_var = initObj.y_var
      }
      else {
        this.y_var = 0.0;
      }
      if (initObj.hasOwnProperty('vx_var')) {
        this.vx_var = initObj.vx_var
      }
      else {
        this.vx_var = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackedObject
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [vx]
    bufferOffset = _serializer.float64(obj.vx, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [x_var]
    bufferOffset = _serializer.float64(obj.x_var, buffer, bufferOffset);
    // Serialize message field [y_var]
    bufferOffset = _serializer.float64(obj.y_var, buffer, bufferOffset);
    // Serialize message field [vx_var]
    bufferOffset = _serializer.float64(obj.vx_var, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackedObject
    let len;
    let data = new TrackedObject(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vx]
    data.vx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x_var]
    data.x_var = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_var]
    data.y_var = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [vx_var]
    data.vx_var = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'npust_bus_msgs/TrackedObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '331682f7f129bb4bca16e4da62c26662';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # TrackedObject — single detected object from the perception stack.
    # Fields used by acc_aeb kinematics.cpp:
    #   x      — longitudinal range ahead (m), must be > min_valid_x_m (0.5 m)
    #   y      — lateral offset (m); positive = left
    #   vx     — world-frame absolute velocity when vx_is_relative=false (m/s)
    #             relative-to-ego velocity when vx_is_relative=true (m/s)
    #   id     — stable tracking ID; consistent across frames for the Kalman filter
    #   x_var  — variance of x measurement (m²)
    #   y_var  — variance of y measurement (m²)
    #   vx_var — variance of vx measurement (m²/s²)
    float64 x
    float64 y
    float64 vx
    int32   id
    float64 x_var
    float64 y_var
    float64 vx_var
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TrackedObject(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.x_var !== undefined) {
      resolved.x_var = msg.x_var;
    }
    else {
      resolved.x_var = 0.0
    }

    if (msg.y_var !== undefined) {
      resolved.y_var = msg.y_var;
    }
    else {
      resolved.y_var = 0.0
    }

    if (msg.vx_var !== undefined) {
      resolved.vx_var = msg.vx_var;
    }
    else {
      resolved.vx_var = 0.0
    }

    return resolved;
    }
};

module.exports = TrackedObject;
