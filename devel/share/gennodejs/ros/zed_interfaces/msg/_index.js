
"use strict";

let ObjectsStamped = require('./ObjectsStamped.js');
let Skeleton3D = require('./Skeleton3D.js');
let RGBDSensors = require('./RGBDSensors.js');
let Keypoint2Df = require('./Keypoint2Df.js');
let PlaneStamped = require('./PlaneStamped.js');
let BoundingBox3D = require('./BoundingBox3D.js');
let BoundingBox2Df = require('./BoundingBox2Df.js');
let Skeleton2D = require('./Skeleton2D.js');
let PosTrackStatus = require('./PosTrackStatus.js');
let BoundingBox2Di = require('./BoundingBox2Di.js');
let Object = require('./Object.js');
let Keypoint3D = require('./Keypoint3D.js');
let Keypoint2Di = require('./Keypoint2Di.js');

module.exports = {
  ObjectsStamped: ObjectsStamped,
  Skeleton3D: Skeleton3D,
  RGBDSensors: RGBDSensors,
  Keypoint2Df: Keypoint2Df,
  PlaneStamped: PlaneStamped,
  BoundingBox3D: BoundingBox3D,
  BoundingBox2Df: BoundingBox2Df,
  Skeleton2D: Skeleton2D,
  PosTrackStatus: PosTrackStatus,
  BoundingBox2Di: BoundingBox2Di,
  Object: Object,
  Keypoint3D: Keypoint3D,
  Keypoint2Di: Keypoint2Di,
};
