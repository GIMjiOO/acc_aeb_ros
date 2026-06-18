;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::ObjectGeneral)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'ObjectGeneral (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::OBJECTGENERAL")
  (make-package "RADAR_CONTI::OBJECTGENERAL"))

(in-package "ROS")
;;//! \htmlinclude ObjectGeneral.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::ObjectGeneral
  :super ros::object
  :slots (_obj_distlong _obj_distlat _obj_vrellong _obj_vrellat _obj_dynprop _obj_rcs ))

(defmethod radar_conti::ObjectGeneral
  (:init
   (&key
    ((:obj_distlong __obj_distlong) (instance std_msgs::Float64 :init))
    ((:obj_distlat __obj_distlat) (instance std_msgs::Float64 :init))
    ((:obj_vrellong __obj_vrellong) (instance std_msgs::Float64 :init))
    ((:obj_vrellat __obj_vrellat) (instance std_msgs::Float64 :init))
    ((:obj_dynprop __obj_dynprop) (instance std_msgs::String :init))
    ((:obj_rcs __obj_rcs) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _obj_distlong __obj_distlong)
   (setq _obj_distlat __obj_distlat)
   (setq _obj_vrellong __obj_vrellong)
   (setq _obj_vrellat __obj_vrellat)
   (setq _obj_dynprop __obj_dynprop)
   (setq _obj_rcs __obj_rcs)
   self)
  (:obj_distlong
   (&rest __obj_distlong)
   (if (keywordp (car __obj_distlong))
       (send* _obj_distlong __obj_distlong)
     (progn
       (if __obj_distlong (setq _obj_distlong (car __obj_distlong)))
       _obj_distlong)))
  (:obj_distlat
   (&rest __obj_distlat)
   (if (keywordp (car __obj_distlat))
       (send* _obj_distlat __obj_distlat)
     (progn
       (if __obj_distlat (setq _obj_distlat (car __obj_distlat)))
       _obj_distlat)))
  (:obj_vrellong
   (&rest __obj_vrellong)
   (if (keywordp (car __obj_vrellong))
       (send* _obj_vrellong __obj_vrellong)
     (progn
       (if __obj_vrellong (setq _obj_vrellong (car __obj_vrellong)))
       _obj_vrellong)))
  (:obj_vrellat
   (&rest __obj_vrellat)
   (if (keywordp (car __obj_vrellat))
       (send* _obj_vrellat __obj_vrellat)
     (progn
       (if __obj_vrellat (setq _obj_vrellat (car __obj_vrellat)))
       _obj_vrellat)))
  (:obj_dynprop
   (&rest __obj_dynprop)
   (if (keywordp (car __obj_dynprop))
       (send* _obj_dynprop __obj_dynprop)
     (progn
       (if __obj_dynprop (setq _obj_dynprop (car __obj_dynprop)))
       _obj_dynprop)))
  (:obj_rcs
   (&rest __obj_rcs)
   (if (keywordp (car __obj_rcs))
       (send* _obj_rcs __obj_rcs)
     (progn
       (if __obj_rcs (setq _obj_rcs (car __obj_rcs)))
       _obj_rcs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _obj_distlong
    (send _obj_distlong :serialization-length)
    ;; std_msgs/Float64 _obj_distlat
    (send _obj_distlat :serialization-length)
    ;; std_msgs/Float64 _obj_vrellong
    (send _obj_vrellong :serialization-length)
    ;; std_msgs/Float64 _obj_vrellat
    (send _obj_vrellat :serialization-length)
    ;; std_msgs/String _obj_dynprop
    (send _obj_dynprop :serialization-length)
    ;; std_msgs/Float64 _obj_rcs
    (send _obj_rcs :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _obj_distlong
       (send _obj_distlong :serialize s)
     ;; std_msgs/Float64 _obj_distlat
       (send _obj_distlat :serialize s)
     ;; std_msgs/Float64 _obj_vrellong
       (send _obj_vrellong :serialize s)
     ;; std_msgs/Float64 _obj_vrellat
       (send _obj_vrellat :serialize s)
     ;; std_msgs/String _obj_dynprop
       (send _obj_dynprop :serialize s)
     ;; std_msgs/Float64 _obj_rcs
       (send _obj_rcs :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _obj_distlong
     (send _obj_distlong :deserialize buf ptr-) (incf ptr- (send _obj_distlong :serialization-length))
   ;; std_msgs/Float64 _obj_distlat
     (send _obj_distlat :deserialize buf ptr-) (incf ptr- (send _obj_distlat :serialization-length))
   ;; std_msgs/Float64 _obj_vrellong
     (send _obj_vrellong :deserialize buf ptr-) (incf ptr- (send _obj_vrellong :serialization-length))
   ;; std_msgs/Float64 _obj_vrellat
     (send _obj_vrellat :deserialize buf ptr-) (incf ptr- (send _obj_vrellat :serialization-length))
   ;; std_msgs/String _obj_dynprop
     (send _obj_dynprop :deserialize buf ptr-) (incf ptr- (send _obj_dynprop :serialization-length))
   ;; std_msgs/Float64 _obj_rcs
     (send _obj_rcs :deserialize buf ptr-) (incf ptr- (send _obj_rcs :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::ObjectGeneral :md5sum-) "7c5a688592b37e839ffa103089e32ef1")
(setf (get radar_conti::ObjectGeneral :datatype-) "radar_conti/ObjectGeneral")
(setf (get radar_conti::ObjectGeneral :definition-)
      "#  ------------------------------------------------------------------------
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

")



(provide :radar_conti/ObjectGeneral "7c5a688592b37e839ffa103089e32ef1")


