;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::ObjectQuality)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'ObjectQuality (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::OBJECTQUALITY")
  (make-package "RADAR_CONTI::OBJECTQUALITY"))

(in-package "ROS")
;;//! \htmlinclude ObjectQuality.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::ObjectQuality
  :super ros::object
  :slots (_obj_distlong_rms _obj_distlat_rms _obj_vrellong_rms _obj_vrellat_rms _obj_arellong_rms _obj_arellat_rms _obj_orientation_rms _obj_probofexist _obj_measstate ))

(defmethod radar_conti::ObjectQuality
  (:init
   (&key
    ((:obj_distlong_rms __obj_distlong_rms) (instance std_msgs::Float64 :init))
    ((:obj_distlat_rms __obj_distlat_rms) (instance std_msgs::Float64 :init))
    ((:obj_vrellong_rms __obj_vrellong_rms) (instance std_msgs::Float64 :init))
    ((:obj_vrellat_rms __obj_vrellat_rms) (instance std_msgs::Float64 :init))
    ((:obj_arellong_rms __obj_arellong_rms) (instance std_msgs::Float64 :init))
    ((:obj_arellat_rms __obj_arellat_rms) (instance std_msgs::Float64 :init))
    ((:obj_orientation_rms __obj_orientation_rms) (instance std_msgs::Float64 :init))
    ((:obj_probofexist __obj_probofexist) (instance std_msgs::Float64 :init))
    ((:obj_measstate __obj_measstate) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _obj_distlong_rms __obj_distlong_rms)
   (setq _obj_distlat_rms __obj_distlat_rms)
   (setq _obj_vrellong_rms __obj_vrellong_rms)
   (setq _obj_vrellat_rms __obj_vrellat_rms)
   (setq _obj_arellong_rms __obj_arellong_rms)
   (setq _obj_arellat_rms __obj_arellat_rms)
   (setq _obj_orientation_rms __obj_orientation_rms)
   (setq _obj_probofexist __obj_probofexist)
   (setq _obj_measstate __obj_measstate)
   self)
  (:obj_distlong_rms
   (&rest __obj_distlong_rms)
   (if (keywordp (car __obj_distlong_rms))
       (send* _obj_distlong_rms __obj_distlong_rms)
     (progn
       (if __obj_distlong_rms (setq _obj_distlong_rms (car __obj_distlong_rms)))
       _obj_distlong_rms)))
  (:obj_distlat_rms
   (&rest __obj_distlat_rms)
   (if (keywordp (car __obj_distlat_rms))
       (send* _obj_distlat_rms __obj_distlat_rms)
     (progn
       (if __obj_distlat_rms (setq _obj_distlat_rms (car __obj_distlat_rms)))
       _obj_distlat_rms)))
  (:obj_vrellong_rms
   (&rest __obj_vrellong_rms)
   (if (keywordp (car __obj_vrellong_rms))
       (send* _obj_vrellong_rms __obj_vrellong_rms)
     (progn
       (if __obj_vrellong_rms (setq _obj_vrellong_rms (car __obj_vrellong_rms)))
       _obj_vrellong_rms)))
  (:obj_vrellat_rms
   (&rest __obj_vrellat_rms)
   (if (keywordp (car __obj_vrellat_rms))
       (send* _obj_vrellat_rms __obj_vrellat_rms)
     (progn
       (if __obj_vrellat_rms (setq _obj_vrellat_rms (car __obj_vrellat_rms)))
       _obj_vrellat_rms)))
  (:obj_arellong_rms
   (&rest __obj_arellong_rms)
   (if (keywordp (car __obj_arellong_rms))
       (send* _obj_arellong_rms __obj_arellong_rms)
     (progn
       (if __obj_arellong_rms (setq _obj_arellong_rms (car __obj_arellong_rms)))
       _obj_arellong_rms)))
  (:obj_arellat_rms
   (&rest __obj_arellat_rms)
   (if (keywordp (car __obj_arellat_rms))
       (send* _obj_arellat_rms __obj_arellat_rms)
     (progn
       (if __obj_arellat_rms (setq _obj_arellat_rms (car __obj_arellat_rms)))
       _obj_arellat_rms)))
  (:obj_orientation_rms
   (&rest __obj_orientation_rms)
   (if (keywordp (car __obj_orientation_rms))
       (send* _obj_orientation_rms __obj_orientation_rms)
     (progn
       (if __obj_orientation_rms (setq _obj_orientation_rms (car __obj_orientation_rms)))
       _obj_orientation_rms)))
  (:obj_probofexist
   (&rest __obj_probofexist)
   (if (keywordp (car __obj_probofexist))
       (send* _obj_probofexist __obj_probofexist)
     (progn
       (if __obj_probofexist (setq _obj_probofexist (car __obj_probofexist)))
       _obj_probofexist)))
  (:obj_measstate
   (&rest __obj_measstate)
   (if (keywordp (car __obj_measstate))
       (send* _obj_measstate __obj_measstate)
     (progn
       (if __obj_measstate (setq _obj_measstate (car __obj_measstate)))
       _obj_measstate)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _obj_distlong_rms
    (send _obj_distlong_rms :serialization-length)
    ;; std_msgs/Float64 _obj_distlat_rms
    (send _obj_distlat_rms :serialization-length)
    ;; std_msgs/Float64 _obj_vrellong_rms
    (send _obj_vrellong_rms :serialization-length)
    ;; std_msgs/Float64 _obj_vrellat_rms
    (send _obj_vrellat_rms :serialization-length)
    ;; std_msgs/Float64 _obj_arellong_rms
    (send _obj_arellong_rms :serialization-length)
    ;; std_msgs/Float64 _obj_arellat_rms
    (send _obj_arellat_rms :serialization-length)
    ;; std_msgs/Float64 _obj_orientation_rms
    (send _obj_orientation_rms :serialization-length)
    ;; std_msgs/Float64 _obj_probofexist
    (send _obj_probofexist :serialization-length)
    ;; std_msgs/String _obj_measstate
    (send _obj_measstate :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _obj_distlong_rms
       (send _obj_distlong_rms :serialize s)
     ;; std_msgs/Float64 _obj_distlat_rms
       (send _obj_distlat_rms :serialize s)
     ;; std_msgs/Float64 _obj_vrellong_rms
       (send _obj_vrellong_rms :serialize s)
     ;; std_msgs/Float64 _obj_vrellat_rms
       (send _obj_vrellat_rms :serialize s)
     ;; std_msgs/Float64 _obj_arellong_rms
       (send _obj_arellong_rms :serialize s)
     ;; std_msgs/Float64 _obj_arellat_rms
       (send _obj_arellat_rms :serialize s)
     ;; std_msgs/Float64 _obj_orientation_rms
       (send _obj_orientation_rms :serialize s)
     ;; std_msgs/Float64 _obj_probofexist
       (send _obj_probofexist :serialize s)
     ;; std_msgs/String _obj_measstate
       (send _obj_measstate :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _obj_distlong_rms
     (send _obj_distlong_rms :deserialize buf ptr-) (incf ptr- (send _obj_distlong_rms :serialization-length))
   ;; std_msgs/Float64 _obj_distlat_rms
     (send _obj_distlat_rms :deserialize buf ptr-) (incf ptr- (send _obj_distlat_rms :serialization-length))
   ;; std_msgs/Float64 _obj_vrellong_rms
     (send _obj_vrellong_rms :deserialize buf ptr-) (incf ptr- (send _obj_vrellong_rms :serialization-length))
   ;; std_msgs/Float64 _obj_vrellat_rms
     (send _obj_vrellat_rms :deserialize buf ptr-) (incf ptr- (send _obj_vrellat_rms :serialization-length))
   ;; std_msgs/Float64 _obj_arellong_rms
     (send _obj_arellong_rms :deserialize buf ptr-) (incf ptr- (send _obj_arellong_rms :serialization-length))
   ;; std_msgs/Float64 _obj_arellat_rms
     (send _obj_arellat_rms :deserialize buf ptr-) (incf ptr- (send _obj_arellat_rms :serialization-length))
   ;; std_msgs/Float64 _obj_orientation_rms
     (send _obj_orientation_rms :deserialize buf ptr-) (incf ptr- (send _obj_orientation_rms :serialization-length))
   ;; std_msgs/Float64 _obj_probofexist
     (send _obj_probofexist :deserialize buf ptr-) (incf ptr- (send _obj_probofexist :serialization-length))
   ;; std_msgs/String _obj_measstate
     (send _obj_measstate :deserialize buf ptr-) (incf ptr- (send _obj_measstate :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::ObjectQuality :md5sum-) "5d06c6b873d996c1cd9ff22fc03970e4")
(setf (get radar_conti::ObjectQuality :datatype-) "radar_conti/ObjectQuality")
(setf (get radar_conti::ObjectQuality :definition-)
      "#  ------------------------------------------------------------------------
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
================================================================================
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: std_msgs/String
string data

")



(provide :radar_conti/ObjectQuality "5d06c6b873d996c1cd9ff22fc03970e4")


