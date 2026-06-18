// Auto-generated. Do not edit!

// (in-package ouster_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Telemetry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.countdown_thermal_shutdown = null;
      this.countdown_shot_limiting = null;
      this.thermal_shutdown = null;
      this.shot_limiting = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('countdown_thermal_shutdown')) {
        this.countdown_thermal_shutdown = initObj.countdown_thermal_shutdown
      }
      else {
        this.countdown_thermal_shutdown = 0;
      }
      if (initObj.hasOwnProperty('countdown_shot_limiting')) {
        this.countdown_shot_limiting = initObj.countdown_shot_limiting
      }
      else {
        this.countdown_shot_limiting = 0;
      }
      if (initObj.hasOwnProperty('thermal_shutdown')) {
        this.thermal_shutdown = initObj.thermal_shutdown
      }
      else {
        this.thermal_shutdown = 0;
      }
      if (initObj.hasOwnProperty('shot_limiting')) {
        this.shot_limiting = initObj.shot_limiting
      }
      else {
        this.shot_limiting = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Telemetry
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [countdown_thermal_shutdown]
    bufferOffset = _serializer.uint16(obj.countdown_thermal_shutdown, buffer, bufferOffset);
    // Serialize message field [countdown_shot_limiting]
    bufferOffset = _serializer.uint16(obj.countdown_shot_limiting, buffer, bufferOffset);
    // Serialize message field [thermal_shutdown]
    bufferOffset = _serializer.uint8(obj.thermal_shutdown, buffer, bufferOffset);
    // Serialize message field [shot_limiting]
    bufferOffset = _serializer.uint8(obj.shot_limiting, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Telemetry
    let len;
    let data = new Telemetry(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [countdown_thermal_shutdown]
    data.countdown_thermal_shutdown = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [countdown_shot_limiting]
    data.countdown_shot_limiting = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [thermal_shutdown]
    data.thermal_shutdown = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [shot_limiting]
    data.shot_limiting = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ouster_ros/Telemetry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41824d1195ebb9ac184e7c24e9f33bfa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message defines the telemetry data for Ouster sensors.
    
    # ThermalShutdownStatus thermal_shutdown
    uint8 THERMAL_SHUTDOWN_NORMAL=0    # Normal operation
    uint8 THERMAL_SHUTDOWN_IMMINENT=1  # Thermal Shutdown imminent
    
    # ShotLimitingStatus shot_limiting
    uint8 SHOT_LIMITING_NORMAL=0          # Normal operation
    uint8 SHOT_LIMITING_IMMINENT=1        # Shot limiting imminent
    uint8 SHOT_LIMITING_REDUCTION_0_10=2  # Shot limiting reduction by 0 to 10%
    uint8 SHOT_LIMITING_REDUCTION_10_20=3 # Shot limiting reduction by 10 to 20%
    uint8 SHOT_LIMITING_REDUCTION_20_30=4 # Shot limiting reduction by 20 to 30%
    uint8 SHOT_LIMITING_REDUCTION_30_40=5 # Shot limiting reduction by 30 to 40%
    uint8 SHOT_LIMITING_REDUCTION_40_50=6 # Shot limiting reduction by 40 to 50%
    uint8 SHOT_LIMITING_REDUCTION_50_60=7 # Shot limiting reduction by 50 to 60%
    uint8 SHOT_LIMITING_REDUCTION_60_70=8 # Shot limiting reduction by 60 to 70%
    uint8 SHOT_LIMITING_REDUCTION_70_75=9 # Shot limiting reduction by 70 to 80%
    
    # Message header
    std_msgs/Header header
    # Telemetry fields for more information on these fields and their meaning, please review:
    # https://static.ouster.dev/sensor-docs/image_route1/image_route2/thermal_int_guide/therm_int_guide.html
    uint16 countdown_thermal_shutdown # the thermal shutdown countdown.
    uint16 countdown_shot_limiting    # the shot limiting countdown.
    uint8 thermal_shutdown            # the thermal shutdown status. 0 = NORMAL, 1 = SHUTDOWN IMMINENT.
    uint8 shot_limiting               # the shot limiting status. 0 = NORMAL OPERATION.
    
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
    const resolved = new Telemetry(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.countdown_thermal_shutdown !== undefined) {
      resolved.countdown_thermal_shutdown = msg.countdown_thermal_shutdown;
    }
    else {
      resolved.countdown_thermal_shutdown = 0
    }

    if (msg.countdown_shot_limiting !== undefined) {
      resolved.countdown_shot_limiting = msg.countdown_shot_limiting;
    }
    else {
      resolved.countdown_shot_limiting = 0
    }

    if (msg.thermal_shutdown !== undefined) {
      resolved.thermal_shutdown = msg.thermal_shutdown;
    }
    else {
      resolved.thermal_shutdown = 0
    }

    if (msg.shot_limiting !== undefined) {
      resolved.shot_limiting = msg.shot_limiting;
    }
    else {
      resolved.shot_limiting = 0
    }

    return resolved;
    }
};

// Constants for message
Telemetry.Constants = {
  THERMAL_SHUTDOWN_NORMAL: 0,
  THERMAL_SHUTDOWN_IMMINENT: 1,
  SHOT_LIMITING_NORMAL: 0,
  SHOT_LIMITING_IMMINENT: 1,
  SHOT_LIMITING_REDUCTION_0_10: 2,
  SHOT_LIMITING_REDUCTION_10_20: 3,
  SHOT_LIMITING_REDUCTION_20_30: 4,
  SHOT_LIMITING_REDUCTION_30_40: 5,
  SHOT_LIMITING_REDUCTION_40_50: 6,
  SHOT_LIMITING_REDUCTION_50_60: 7,
  SHOT_LIMITING_REDUCTION_60_70: 8,
  SHOT_LIMITING_REDUCTION_70_75: 9,
}

module.exports = Telemetry;
