// Auto-generated. Do not edit!

// (in-package pro_can.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class control_data {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.acc_command_value = null;
      this.brake_command_value = null;
      this.steering_wheel_command_value = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('acc_command_value')) {
        this.acc_command_value = initObj.acc_command_value
      }
      else {
        this.acc_command_value = 0.0;
      }
      if (initObj.hasOwnProperty('brake_command_value')) {
        this.brake_command_value = initObj.brake_command_value
      }
      else {
        this.brake_command_value = 0.0;
      }
      if (initObj.hasOwnProperty('steering_wheel_command_value')) {
        this.steering_wheel_command_value = initObj.steering_wheel_command_value
      }
      else {
        this.steering_wheel_command_value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type control_data
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [acc_command_value]
    bufferOffset = _serializer.float64(obj.acc_command_value, buffer, bufferOffset);
    // Serialize message field [brake_command_value]
    bufferOffset = _serializer.float64(obj.brake_command_value, buffer, bufferOffset);
    // Serialize message field [steering_wheel_command_value]
    bufferOffset = _serializer.float64(obj.steering_wheel_command_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type control_data
    let len;
    let data = new control_data(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc_command_value]
    data.acc_command_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [brake_command_value]
    data.brake_command_value = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [steering_wheel_command_value]
    data.steering_wheel_command_value = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pro_can/control_data';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd09a1efa4e00097fb79b2c455901250c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # [TEMP SIM] control_data — longitudinal actuator command (mirrors real pro_can/control_data).
    # Fields used by acc_aeb_node:
    #   header.stamp              — publish timestamp
    #   acc_command_value         — motor torque (Nm); positive = drive
    #   brake_command_value       — braking demand in G (0–0.6)
    #   steering_wheel_command_value — always 0.0 from the ACC/AEB node
    std_msgs/Header header
    float64 acc_command_value
    float64 brake_command_value
    float64 steering_wheel_command_value
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new control_data(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.acc_command_value !== undefined) {
      resolved.acc_command_value = msg.acc_command_value;
    }
    else {
      resolved.acc_command_value = 0.0
    }

    if (msg.brake_command_value !== undefined) {
      resolved.brake_command_value = msg.brake_command_value;
    }
    else {
      resolved.brake_command_value = 0.0
    }

    if (msg.steering_wheel_command_value !== undefined) {
      resolved.steering_wheel_command_value = msg.steering_wheel_command_value;
    }
    else {
      resolved.steering_wheel_command_value = 0.0
    }

    return resolved;
    }
};

module.exports = control_data;
