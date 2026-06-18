;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::ObjectList)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'ObjectList (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::OBJECTLIST")
  (make-package "RADAR_CONTI::OBJECTLIST"))

(in-package "ROS")
;;//! \htmlinclude ObjectList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::ObjectList
  :super ros::object
  :slots (_header _object_count _objects ))

(defmethod radar_conti::ObjectList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:object_count __object_count) (instance std_msgs::Int32 :init))
    ((:objects __objects) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _object_count __object_count)
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:object_count
   (&rest __object_count)
   (if (keywordp (car __object_count))
       (send* _object_count __object_count)
     (progn
       (if __object_count (setq _object_count (car __object_count)))
       _object_count)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Int32 _object_count
    (send _object_count :serialization-length)
    ;; radar_conti/Object[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Int32 _object_count
       (send _object_count :serialize s)
     ;; radar_conti/Object[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Int32 _object_count
     (send _object_count :deserialize buf ptr-) (incf ptr- (send _object_count :serialization-length))
   ;; radar_conti/Object[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance radar_conti::Object :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get radar_conti::ObjectList :md5sum-) "c7dbccc0809b5bdaa59e6da1bf9289de")
(setf (get radar_conti::ObjectList :datatype-) "radar_conti/ObjectList")
(setf (get radar_conti::ObjectList :definition-)
      "std_msgs/Header header
std_msgs/Int32 object_count
Object[] objects
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
MSG: radar_conti/Object
std_msgs/Int32 obj_id
ObjectGeneral object_general
ObjectExtended object_extended
ObjectQuality object_quality
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



(provide :radar_conti/ObjectList "c7dbccc0809b5bdaa59e6da1bf9289de")


