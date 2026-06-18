;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::Object)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'Object (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::OBJECT")
  (make-package "RADAR_CONTI::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::Object
  :super ros::object
  :slots (_obj_id _object_general _object_extended _object_quality ))

(defmethod radar_conti::Object
  (:init
   (&key
    ((:obj_id __obj_id) (instance std_msgs::Int32 :init))
    ((:object_general __object_general) (instance radar_conti::ObjectGeneral :init))
    ((:object_extended __object_extended) (instance radar_conti::ObjectExtended :init))
    ((:object_quality __object_quality) (instance radar_conti::ObjectQuality :init))
    )
   (send-super :init)
   (setq _obj_id __obj_id)
   (setq _object_general __object_general)
   (setq _object_extended __object_extended)
   (setq _object_quality __object_quality)
   self)
  (:obj_id
   (&rest __obj_id)
   (if (keywordp (car __obj_id))
       (send* _obj_id __obj_id)
     (progn
       (if __obj_id (setq _obj_id (car __obj_id)))
       _obj_id)))
  (:object_general
   (&rest __object_general)
   (if (keywordp (car __object_general))
       (send* _object_general __object_general)
     (progn
       (if __object_general (setq _object_general (car __object_general)))
       _object_general)))
  (:object_extended
   (&rest __object_extended)
   (if (keywordp (car __object_extended))
       (send* _object_extended __object_extended)
     (progn
       (if __object_extended (setq _object_extended (car __object_extended)))
       _object_extended)))
  (:object_quality
   (&rest __object_quality)
   (if (keywordp (car __object_quality))
       (send* _object_quality __object_quality)
     (progn
       (if __object_quality (setq _object_quality (car __object_quality)))
       _object_quality)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _obj_id
    (send _obj_id :serialization-length)
    ;; radar_conti/ObjectGeneral _object_general
    (send _object_general :serialization-length)
    ;; radar_conti/ObjectExtended _object_extended
    (send _object_extended :serialization-length)
    ;; radar_conti/ObjectQuality _object_quality
    (send _object_quality :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _obj_id
       (send _obj_id :serialize s)
     ;; radar_conti/ObjectGeneral _object_general
       (send _object_general :serialize s)
     ;; radar_conti/ObjectExtended _object_extended
       (send _object_extended :serialize s)
     ;; radar_conti/ObjectQuality _object_quality
       (send _object_quality :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _obj_id
     (send _obj_id :deserialize buf ptr-) (incf ptr- (send _obj_id :serialization-length))
   ;; radar_conti/ObjectGeneral _object_general
     (send _object_general :deserialize buf ptr-) (incf ptr- (send _object_general :serialization-length))
   ;; radar_conti/ObjectExtended _object_extended
     (send _object_extended :deserialize buf ptr-) (incf ptr- (send _object_extended :serialization-length))
   ;; radar_conti/ObjectQuality _object_quality
     (send _object_quality :deserialize buf ptr-) (incf ptr- (send _object_quality :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::Object :md5sum-) "a7779c5b6537b3dc9690537349901eeb")
(setf (get radar_conti::Object :datatype-) "radar_conti/Object")
(setf (get radar_conti::Object :definition-)
      "std_msgs/Int32 obj_id
ObjectGeneral object_general
ObjectExtended object_extended
ObjectQuality object_quality
================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: radar_conti/ObjectGeneral
#  ------------------------------------------------------------------------
#
#  Name:       Obj_1_General
#  Id:         0x60b
#  Length:     8 bytes
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
#                                         +-- Obj_ID
#           +---+---+---+---+---+---+---+---+
#         1 |<------------------------------|
#           +---+---+---+---+---+---+---+---+
#         2 |------------------x|<----------|
#           +---+---+---+---+---+---+---+---+
#                             +-- Obj_DistLong
#           +---+---+---+---+---+---+---+---+
#         3 |------------------------------x|
#     B     +---+---+---+---+---+---+---+---+
#     y                                   +-- Obj_DistLat
#     t     +---+---+---+---+---+---+---+---+
#     e   4 |<------------------------------|
#           +---+---+---+---+---+---+---+---+
#         5 |------x|<----------------------|
#           +---+---+---+---+---+---+---+---+
#                 +-- Obj_VrelLong
#           +---+---+---+---+---+---+---+---+
#         6 |----------x|   |   |<---------x|
#           +---+---+---+---+---+---+---+---+
#                     |                   +-- Obj_DynProp
#                     +-- Obj_VrelLat
#           +---+---+---+---+---+---+---+---+
#         7 |<-----------------------------x|
#           +---+---+---+---+---+---+---+---+
#                                         +-- Obj_RCS
#
#  Signal tree:
#
#    -- {root}
#       +-- Obj_ID
#       +-- Obj_DistLong
#       +-- Obj_DistLat
#       +-- Obj_VrelLong
#       +-- Obj_VrelLat
#       +-- Obj_DynProp
#       +-- Obj_RCS
#
#  ------------------------------------------------------------------------
#
std_msgs/Float64 obj_distlong
std_msgs/Float64 obj_distlat
std_msgs/Float64 obj_vrellong
std_msgs/Float64 obj_vrellat
std_msgs/String obj_dynprop
std_msgs/Float64 obj_rcs
================================================================================
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: radar_conti/ObjectExtended
#  ------------------------------------------------------------------------
#
#  Name:       Obj_3_Extended
#  Id:         0x60d
#  Length:     8 bytes
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
#                                         +-- Obj_ID
#           +---+---+---+---+---+---+---+---+
#         1 |<------------------------------|
#           +---+---+---+---+---+---+---+---+
#         2 |----------x|<------------------|
#           +---+---+---+---+---+---+---+---+
#                     +-- Obj_ArelLong
#           +---+---+---+---+---+---+---+---+
#         3 |--------------x|   |<---------x|
#     B     +---+---+---+---+---+---+---+---+
#     y                   |               +-- Obj_Class
#     t                   +-- Obj_ArelLat
#     e     +---+---+---+---+---+---+---+---+
#         4 |<------------------------------|
#           +---+---+---+---+---+---+---+---+
#         5 |------x|   |   |   |   |   |   |
#           +---+---+---+---+---+---+---+---+
#                 +-- Obj_OrientationAngle
#           +---+---+---+---+---+---+---+---+
#         6 |<-----------------------------x|
#           +---+---+---+---+---+---+---+---+
#                                         +-- Obj_Length
#           +---+---+---+---+---+---+---+---+
#         7 |<-----------------------------x|
#           +---+---+---+---+---+---+---+---+
#                                         +-- Obj_Width
#
#  Signal tree:
#
#    -- {root}
#       +-- Obj_ID
#       +-- Obj_ArelLong
#       +-- Obj_ArelLat
#       +-- Obj_Class
#       +-- Obj_OrientationAngle
#       +-- Obj_Length
#       +-- Obj_Width
#
#  ------------------------------------------------------------------------
#
std_msgs/Float64 obj_arellong
std_msgs/Float64 obj_arellat
std_msgs/Int32 obj_class
std_msgs/Float64 obj_orientationangle
std_msgs/Float64 obj_length
std_msgs/Float64 obj_width
================================================================================
MSG: radar_conti/ObjectQuality
#  ------------------------------------------------------------------------
#
#  Name:       Obj_2_Quality
#  Id:         0x60c
#  Length:     7 bytes
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
#                                         +-- Obj_ID
#           +---+---+---+---+---+---+---+---+
#         1 |<-----------------x|<----------|
#           +---+---+---+---+---+---+---+---+
#                             +-- Obj_DistLong_rms
#           +---+---+---+---+---+---+---+---+
#         2 |------x|<-----------------x|<--|
#           +---+---+---+---+---+---+---+---+
#                 |                   +-- Obj_VrelLong_rms
#                 +-- Obj_DistLat_rms
#     B     +---+---+---+---+---+---+---+---+
#     y   3 |--------------x|<--------------|
#     t     +---+---+---+---+---+---+---+---+
#     e                   +-- Obj_VrelLat_rms
#           +---+---+---+---+---+---+---+---+
#         4 |--x|<-----------------x|<------|
#           +---+---+---+---+---+---+---+---+
#             |                   +-- Obj_ArelLat_rms
#             +-- Obj_ArelLong_rms
#           +---+---+---+---+---+---+---+---+
#         5 |----------x|   |   |   |   |   |
#           +---+---+---+---+---+---+---+---+
#                     +-- Obj_Orientation_rms
#           +---+---+---+---+---+---+---+---+
#         6 |<---------x|<---------x|   |   |
#           +---+---+---+---+---+---+---+---+
#                     |           +-- Obj_MeasState
#                     +-- Obj_ProbOfExist
#
#  Signal tree:
#
#    -- {root}
#       +-- Obj_ID
#       +-- Obj_DistLong_rms
#       +-- Obj_DistLat_rms
#       +-- Obj_VrelLong_rms
#       +-- Obj_VrelLat_rms
#       +-- Obj_ArelLong_rms
#       +-- Obj_ArelLat_rms
#       +-- Obj_Orientation_rms
#       +-- Obj_ProbOfExist
#       +-- Obj_MeasState
#
#  ------------------------------------------------------------------------
std_msgs/Float64 obj_distlong_rms
std_msgs/Float64 obj_distlat_rms
std_msgs/Float64 obj_vrellong_rms
std_msgs/Float64 obj_vrellat_rms
std_msgs/Float64 obj_arellong_rms
std_msgs/Float64 obj_arellat_rms
std_msgs/Float64 obj_orientation_rms
std_msgs/Float64 obj_probofexist
std_msgs/String  obj_measstate
")



(provide :radar_conti/Object "a7779c5b6537b3dc9690537349901eeb")


