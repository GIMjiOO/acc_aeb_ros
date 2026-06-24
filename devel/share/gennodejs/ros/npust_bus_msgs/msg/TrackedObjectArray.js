// Auto-generated. Do not edit!

// (in-package npust_bus_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrackedObject = require('./TrackedObject.js');

//-----------------------------------------------------------

class TrackedObjectArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackedObjectArray
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = TrackedObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackedObjectArray
    let len;
    let data = new TrackedObjectArray(null);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = TrackedObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 52 * object.objects.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'npust_bus_msgs/TrackedObjectArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7c58ff4f2d5c2b39b6f051161ab0f85e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # [TEMP SIM] TrackedObjectArray — list of all detected objects for one perception frame.
    TrackedObject[] objects
    
    ================================================================================
    MSG: npust_bus_msgs/TrackedObject
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
    const resolved = new TrackedObjectArray(null);
    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = TrackedObject.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    return resolved;
    }
};

module.exports = TrackedObjectArray;
