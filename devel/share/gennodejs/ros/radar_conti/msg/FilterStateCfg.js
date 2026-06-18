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

class FilterStateCfg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.filtercfg_valid = null;
      this.filtercfg_active = null;
      this.filtercfg_index = null;
      this.filtercfg_type = null;
      this.filtercfg_min_nofobj = null;
      this.filtercfg_min_distance = null;
      this.filtercfg_min_azimuth = null;
      this.filtercfg_min_vreloncome = null;
      this.filtercfg_min_vreldepart = null;
      this.filtercfg_min_rcs = null;
      this.filtercfg_min_lifetime = null;
      this.filtercfg_min_size = null;
      this.filtercfg_min_probexists = null;
      this.filtercfg_min_y = null;
      this.filtercfg_min_x = null;
      this.filtercfg_min_vyrightleft = null;
      this.filtercfg_min_vxoncome = null;
      this.filtercfg_min_vyleftright = null;
      this.filtercfg_min_vxdepart = null;
      this.filtercfg_min_object_class = null;
      this.filtercfg_max_nofobj = null;
      this.filtercfg_max_distance = null;
      this.filtercfg_max_azimuth = null;
      this.filtercfg_max_vreloncome = null;
      this.filtercfg_max_vreldepart = null;
      this.filtercfg_max_rcs = null;
      this.filtercfg_max_lifetime = null;
      this.filtercfg_max_size = null;
      this.filtercfg_max_probexists = null;
      this.filtercfg_max_y = null;
      this.filtercfg_max_x = null;
      this.filtercfg_max_vyrightleft = null;
      this.filtercfg_max_vxoncome = null;
      this.filtercfg_max_vyleftright = null;
      this.filtercfg_max_vxdepart = null;
      this.filtercfg_max_object_class = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('filtercfg_valid')) {
        this.filtercfg_valid = initObj.filtercfg_valid
      }
      else {
        this.filtercfg_valid = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_active')) {
        this.filtercfg_active = initObj.filtercfg_active
      }
      else {
        this.filtercfg_active = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_index')) {
        this.filtercfg_index = initObj.filtercfg_index
      }
      else {
        this.filtercfg_index = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_type')) {
        this.filtercfg_type = initObj.filtercfg_type
      }
      else {
        this.filtercfg_type = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_nofobj')) {
        this.filtercfg_min_nofobj = initObj.filtercfg_min_nofobj
      }
      else {
        this.filtercfg_min_nofobj = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_distance')) {
        this.filtercfg_min_distance = initObj.filtercfg_min_distance
      }
      else {
        this.filtercfg_min_distance = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_azimuth')) {
        this.filtercfg_min_azimuth = initObj.filtercfg_min_azimuth
      }
      else {
        this.filtercfg_min_azimuth = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_vreloncome')) {
        this.filtercfg_min_vreloncome = initObj.filtercfg_min_vreloncome
      }
      else {
        this.filtercfg_min_vreloncome = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_vreldepart')) {
        this.filtercfg_min_vreldepart = initObj.filtercfg_min_vreldepart
      }
      else {
        this.filtercfg_min_vreldepart = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_rcs')) {
        this.filtercfg_min_rcs = initObj.filtercfg_min_rcs
      }
      else {
        this.filtercfg_min_rcs = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_lifetime')) {
        this.filtercfg_min_lifetime = initObj.filtercfg_min_lifetime
      }
      else {
        this.filtercfg_min_lifetime = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_size')) {
        this.filtercfg_min_size = initObj.filtercfg_min_size
      }
      else {
        this.filtercfg_min_size = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_probexists')) {
        this.filtercfg_min_probexists = initObj.filtercfg_min_probexists
      }
      else {
        this.filtercfg_min_probexists = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_y')) {
        this.filtercfg_min_y = initObj.filtercfg_min_y
      }
      else {
        this.filtercfg_min_y = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_x')) {
        this.filtercfg_min_x = initObj.filtercfg_min_x
      }
      else {
        this.filtercfg_min_x = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_vyrightleft')) {
        this.filtercfg_min_vyrightleft = initObj.filtercfg_min_vyrightleft
      }
      else {
        this.filtercfg_min_vyrightleft = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_vxoncome')) {
        this.filtercfg_min_vxoncome = initObj.filtercfg_min_vxoncome
      }
      else {
        this.filtercfg_min_vxoncome = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_vyleftright')) {
        this.filtercfg_min_vyleftright = initObj.filtercfg_min_vyleftright
      }
      else {
        this.filtercfg_min_vyleftright = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_vxdepart')) {
        this.filtercfg_min_vxdepart = initObj.filtercfg_min_vxdepart
      }
      else {
        this.filtercfg_min_vxdepart = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_min_object_class')) {
        this.filtercfg_min_object_class = initObj.filtercfg_min_object_class
      }
      else {
        this.filtercfg_min_object_class = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_nofobj')) {
        this.filtercfg_max_nofobj = initObj.filtercfg_max_nofobj
      }
      else {
        this.filtercfg_max_nofobj = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_distance')) {
        this.filtercfg_max_distance = initObj.filtercfg_max_distance
      }
      else {
        this.filtercfg_max_distance = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_azimuth')) {
        this.filtercfg_max_azimuth = initObj.filtercfg_max_azimuth
      }
      else {
        this.filtercfg_max_azimuth = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_vreloncome')) {
        this.filtercfg_max_vreloncome = initObj.filtercfg_max_vreloncome
      }
      else {
        this.filtercfg_max_vreloncome = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_vreldepart')) {
        this.filtercfg_max_vreldepart = initObj.filtercfg_max_vreldepart
      }
      else {
        this.filtercfg_max_vreldepart = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_rcs')) {
        this.filtercfg_max_rcs = initObj.filtercfg_max_rcs
      }
      else {
        this.filtercfg_max_rcs = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_lifetime')) {
        this.filtercfg_max_lifetime = initObj.filtercfg_max_lifetime
      }
      else {
        this.filtercfg_max_lifetime = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_size')) {
        this.filtercfg_max_size = initObj.filtercfg_max_size
      }
      else {
        this.filtercfg_max_size = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_probexists')) {
        this.filtercfg_max_probexists = initObj.filtercfg_max_probexists
      }
      else {
        this.filtercfg_max_probexists = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_y')) {
        this.filtercfg_max_y = initObj.filtercfg_max_y
      }
      else {
        this.filtercfg_max_y = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_x')) {
        this.filtercfg_max_x = initObj.filtercfg_max_x
      }
      else {
        this.filtercfg_max_x = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_vyrightleft')) {
        this.filtercfg_max_vyrightleft = initObj.filtercfg_max_vyrightleft
      }
      else {
        this.filtercfg_max_vyrightleft = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_vxoncome')) {
        this.filtercfg_max_vxoncome = initObj.filtercfg_max_vxoncome
      }
      else {
        this.filtercfg_max_vxoncome = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_vyleftright')) {
        this.filtercfg_max_vyleftright = initObj.filtercfg_max_vyleftright
      }
      else {
        this.filtercfg_max_vyleftright = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_vxdepart')) {
        this.filtercfg_max_vxdepart = initObj.filtercfg_max_vxdepart
      }
      else {
        this.filtercfg_max_vxdepart = new std_msgs.msg.UInt8();
      }
      if (initObj.hasOwnProperty('filtercfg_max_object_class')) {
        this.filtercfg_max_object_class = initObj.filtercfg_max_object_class
      }
      else {
        this.filtercfg_max_object_class = new std_msgs.msg.UInt8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FilterStateCfg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [filtercfg_valid]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_valid, buffer, bufferOffset);
    // Serialize message field [filtercfg_active]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_active, buffer, bufferOffset);
    // Serialize message field [filtercfg_index]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_index, buffer, bufferOffset);
    // Serialize message field [filtercfg_type]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_type, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_nofobj]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_nofobj, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_distance]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_distance, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_azimuth]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_azimuth, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_vreloncome]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_vreloncome, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_vreldepart]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_vreldepart, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_rcs]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_rcs, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_lifetime]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_lifetime, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_size]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_size, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_probexists]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_probexists, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_y]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_y, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_x]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_x, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_vyrightleft]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_vyrightleft, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_vxoncome]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_vxoncome, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_vyleftright]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_vyleftright, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_vxdepart]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_vxdepart, buffer, bufferOffset);
    // Serialize message field [filtercfg_min_object_class]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_min_object_class, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_nofobj]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_nofobj, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_distance]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_distance, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_azimuth]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_azimuth, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_vreloncome]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_vreloncome, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_vreldepart]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_vreldepart, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_rcs]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_rcs, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_lifetime]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_lifetime, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_size]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_size, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_probexists]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_probexists, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_y]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_y, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_x]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_x, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_vyrightleft]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_vyrightleft, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_vxoncome]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_vxoncome, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_vyleftright]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_vyleftright, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_vxdepart]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_vxdepart, buffer, bufferOffset);
    // Serialize message field [filtercfg_max_object_class]
    bufferOffset = std_msgs.msg.UInt8.serialize(obj.filtercfg_max_object_class, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FilterStateCfg
    let len;
    let data = new FilterStateCfg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_valid]
    data.filtercfg_valid = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_active]
    data.filtercfg_active = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_index]
    data.filtercfg_index = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_type]
    data.filtercfg_type = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_nofobj]
    data.filtercfg_min_nofobj = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_distance]
    data.filtercfg_min_distance = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_azimuth]
    data.filtercfg_min_azimuth = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_vreloncome]
    data.filtercfg_min_vreloncome = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_vreldepart]
    data.filtercfg_min_vreldepart = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_rcs]
    data.filtercfg_min_rcs = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_lifetime]
    data.filtercfg_min_lifetime = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_size]
    data.filtercfg_min_size = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_probexists]
    data.filtercfg_min_probexists = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_y]
    data.filtercfg_min_y = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_x]
    data.filtercfg_min_x = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_vyrightleft]
    data.filtercfg_min_vyrightleft = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_vxoncome]
    data.filtercfg_min_vxoncome = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_vyleftright]
    data.filtercfg_min_vyleftright = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_vxdepart]
    data.filtercfg_min_vxdepart = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_min_object_class]
    data.filtercfg_min_object_class = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_nofobj]
    data.filtercfg_max_nofobj = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_distance]
    data.filtercfg_max_distance = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_azimuth]
    data.filtercfg_max_azimuth = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_vreloncome]
    data.filtercfg_max_vreloncome = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_vreldepart]
    data.filtercfg_max_vreldepart = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_rcs]
    data.filtercfg_max_rcs = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_lifetime]
    data.filtercfg_max_lifetime = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_size]
    data.filtercfg_max_size = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_probexists]
    data.filtercfg_max_probexists = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_y]
    data.filtercfg_max_y = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_x]
    data.filtercfg_max_x = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_vyrightleft]
    data.filtercfg_max_vyrightleft = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_vxoncome]
    data.filtercfg_max_vxoncome = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_vyleftright]
    data.filtercfg_max_vyleftright = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_vxdepart]
    data.filtercfg_max_vxdepart = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtercfg_max_object_class]
    data.filtercfg_max_object_class = std_msgs.msg.UInt8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'radar_conti/FilterStateCfg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9f531568fe5dff4e54bf69af7e17849';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    std_msgs/UInt8 filtercfg_valid
    std_msgs/UInt8 filtercfg_active
    std_msgs/UInt8 filtercfg_index
    std_msgs/UInt8 filtercfg_type
    std_msgs/UInt8 filtercfg_min_nofobj
    std_msgs/UInt8 filtercfg_min_distance
    std_msgs/UInt8 filtercfg_min_azimuth
    std_msgs/UInt8 filtercfg_min_vreloncome
    std_msgs/UInt8 filtercfg_min_vreldepart
    std_msgs/UInt8 filtercfg_min_rcs
    std_msgs/UInt8 filtercfg_min_lifetime
    std_msgs/UInt8 filtercfg_min_size
    std_msgs/UInt8 filtercfg_min_probexists
    std_msgs/UInt8 filtercfg_min_y
    std_msgs/UInt8 filtercfg_min_x
    std_msgs/UInt8 filtercfg_min_vyrightleft
    std_msgs/UInt8 filtercfg_min_vxoncome
    std_msgs/UInt8 filtercfg_min_vyleftright
    std_msgs/UInt8 filtercfg_min_vxdepart
    std_msgs/UInt8 filtercfg_min_object_class
    std_msgs/UInt8 filtercfg_max_nofobj
    std_msgs/UInt8 filtercfg_max_distance
    std_msgs/UInt8 filtercfg_max_azimuth
    std_msgs/UInt8 filtercfg_max_vreloncome
    std_msgs/UInt8 filtercfg_max_vreldepart
    std_msgs/UInt8 filtercfg_max_rcs
    std_msgs/UInt8 filtercfg_max_lifetime
    std_msgs/UInt8 filtercfg_max_size
    std_msgs/UInt8 filtercfg_max_probexists
    std_msgs/UInt8 filtercfg_max_y
    std_msgs/UInt8 filtercfg_max_x
    std_msgs/UInt8 filtercfg_max_vyrightleft
    std_msgs/UInt8 filtercfg_max_vxoncome
    std_msgs/UInt8 filtercfg_max_vyleftright
    std_msgs/UInt8 filtercfg_max_vxdepart
    std_msgs/UInt8 filtercfg_max_object_class
    
    
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
    const resolved = new FilterStateCfg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.filtercfg_valid !== undefined) {
      resolved.filtercfg_valid = std_msgs.msg.UInt8.Resolve(msg.filtercfg_valid)
    }
    else {
      resolved.filtercfg_valid = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_active !== undefined) {
      resolved.filtercfg_active = std_msgs.msg.UInt8.Resolve(msg.filtercfg_active)
    }
    else {
      resolved.filtercfg_active = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_index !== undefined) {
      resolved.filtercfg_index = std_msgs.msg.UInt8.Resolve(msg.filtercfg_index)
    }
    else {
      resolved.filtercfg_index = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_type !== undefined) {
      resolved.filtercfg_type = std_msgs.msg.UInt8.Resolve(msg.filtercfg_type)
    }
    else {
      resolved.filtercfg_type = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_nofobj !== undefined) {
      resolved.filtercfg_min_nofobj = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_nofobj)
    }
    else {
      resolved.filtercfg_min_nofobj = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_distance !== undefined) {
      resolved.filtercfg_min_distance = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_distance)
    }
    else {
      resolved.filtercfg_min_distance = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_azimuth !== undefined) {
      resolved.filtercfg_min_azimuth = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_azimuth)
    }
    else {
      resolved.filtercfg_min_azimuth = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_vreloncome !== undefined) {
      resolved.filtercfg_min_vreloncome = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_vreloncome)
    }
    else {
      resolved.filtercfg_min_vreloncome = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_vreldepart !== undefined) {
      resolved.filtercfg_min_vreldepart = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_vreldepart)
    }
    else {
      resolved.filtercfg_min_vreldepart = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_rcs !== undefined) {
      resolved.filtercfg_min_rcs = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_rcs)
    }
    else {
      resolved.filtercfg_min_rcs = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_lifetime !== undefined) {
      resolved.filtercfg_min_lifetime = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_lifetime)
    }
    else {
      resolved.filtercfg_min_lifetime = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_size !== undefined) {
      resolved.filtercfg_min_size = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_size)
    }
    else {
      resolved.filtercfg_min_size = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_probexists !== undefined) {
      resolved.filtercfg_min_probexists = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_probexists)
    }
    else {
      resolved.filtercfg_min_probexists = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_y !== undefined) {
      resolved.filtercfg_min_y = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_y)
    }
    else {
      resolved.filtercfg_min_y = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_x !== undefined) {
      resolved.filtercfg_min_x = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_x)
    }
    else {
      resolved.filtercfg_min_x = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_vyrightleft !== undefined) {
      resolved.filtercfg_min_vyrightleft = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_vyrightleft)
    }
    else {
      resolved.filtercfg_min_vyrightleft = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_vxoncome !== undefined) {
      resolved.filtercfg_min_vxoncome = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_vxoncome)
    }
    else {
      resolved.filtercfg_min_vxoncome = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_vyleftright !== undefined) {
      resolved.filtercfg_min_vyleftright = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_vyleftright)
    }
    else {
      resolved.filtercfg_min_vyleftright = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_vxdepart !== undefined) {
      resolved.filtercfg_min_vxdepart = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_vxdepart)
    }
    else {
      resolved.filtercfg_min_vxdepart = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_min_object_class !== undefined) {
      resolved.filtercfg_min_object_class = std_msgs.msg.UInt8.Resolve(msg.filtercfg_min_object_class)
    }
    else {
      resolved.filtercfg_min_object_class = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_nofobj !== undefined) {
      resolved.filtercfg_max_nofobj = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_nofobj)
    }
    else {
      resolved.filtercfg_max_nofobj = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_distance !== undefined) {
      resolved.filtercfg_max_distance = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_distance)
    }
    else {
      resolved.filtercfg_max_distance = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_azimuth !== undefined) {
      resolved.filtercfg_max_azimuth = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_azimuth)
    }
    else {
      resolved.filtercfg_max_azimuth = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_vreloncome !== undefined) {
      resolved.filtercfg_max_vreloncome = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_vreloncome)
    }
    else {
      resolved.filtercfg_max_vreloncome = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_vreldepart !== undefined) {
      resolved.filtercfg_max_vreldepart = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_vreldepart)
    }
    else {
      resolved.filtercfg_max_vreldepart = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_rcs !== undefined) {
      resolved.filtercfg_max_rcs = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_rcs)
    }
    else {
      resolved.filtercfg_max_rcs = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_lifetime !== undefined) {
      resolved.filtercfg_max_lifetime = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_lifetime)
    }
    else {
      resolved.filtercfg_max_lifetime = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_size !== undefined) {
      resolved.filtercfg_max_size = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_size)
    }
    else {
      resolved.filtercfg_max_size = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_probexists !== undefined) {
      resolved.filtercfg_max_probexists = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_probexists)
    }
    else {
      resolved.filtercfg_max_probexists = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_y !== undefined) {
      resolved.filtercfg_max_y = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_y)
    }
    else {
      resolved.filtercfg_max_y = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_x !== undefined) {
      resolved.filtercfg_max_x = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_x)
    }
    else {
      resolved.filtercfg_max_x = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_vyrightleft !== undefined) {
      resolved.filtercfg_max_vyrightleft = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_vyrightleft)
    }
    else {
      resolved.filtercfg_max_vyrightleft = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_vxoncome !== undefined) {
      resolved.filtercfg_max_vxoncome = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_vxoncome)
    }
    else {
      resolved.filtercfg_max_vxoncome = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_vyleftright !== undefined) {
      resolved.filtercfg_max_vyleftright = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_vyleftright)
    }
    else {
      resolved.filtercfg_max_vyleftright = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_vxdepart !== undefined) {
      resolved.filtercfg_max_vxdepart = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_vxdepart)
    }
    else {
      resolved.filtercfg_max_vxdepart = new std_msgs.msg.UInt8()
    }

    if (msg.filtercfg_max_object_class !== undefined) {
      resolved.filtercfg_max_object_class = std_msgs.msg.UInt8.Resolve(msg.filtercfg_max_object_class)
    }
    else {
      resolved.filtercfg_max_object_class = new std_msgs.msg.UInt8()
    }

    return resolved;
    }
};

module.exports = FilterStateCfg;
