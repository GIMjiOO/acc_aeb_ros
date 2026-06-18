;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::ObjectExtended)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'ObjectExtended (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::OBJECTEXTENDED")
  (make-package "RADAR_CONTI::OBJECTEXTENDED"))

(in-package "ROS")
;;//! \htmlinclude ObjectExtended.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::ObjectExtended
  :super ros::object
  :slots (_obj_arellong _obj_arellat _obj_class _obj_orientationangle _obj_length _obj_width ))

(defmethod radar_conti::ObjectExtended
  (:init
   (&key
    ((:obj_arellong __obj_arellong) (instance std_msgs::Float64 :init))
    ((:obj_arellat __obj_arellat) (instance std_msgs::Float64 :init))
    ((:obj_class __obj_class) (instance std_msgs::Int32 :init))
    ((:obj_orientationangle __obj_orientationangle) (instance std_msgs::Float64 :init))
    ((:obj_length __obj_length) (instance std_msgs::Float64 :init))
    ((:obj_width __obj_width) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _obj_arellong __obj_arellong)
   (setq _obj_arellat __obj_arellat)
   (setq _obj_class __obj_class)
   (setq _obj_orientationangle __obj_orientationangle)
   (setq _obj_length __obj_length)
   (setq _obj_width __obj_width)
   self)
  (:obj_arellong
   (&rest __obj_arellong)
   (if (keywordp (car __obj_arellong))
       (send* _obj_arellong __obj_arellong)
     (progn
       (if __obj_arellong (setq _obj_arellong (car __obj_arellong)))
       _obj_arellong)))
  (:obj_arellat
   (&rest __obj_arellat)
   (if (keywordp (car __obj_arellat))
       (send* _obj_arellat __obj_arellat)
     (progn
       (if __obj_arellat (setq _obj_arellat (car __obj_arellat)))
       _obj_arellat)))
  (:obj_class
   (&rest __obj_class)
   (if (keywordp (car __obj_class))
       (send* _obj_class __obj_class)
     (progn
       (if __obj_class (setq _obj_class (car __obj_class)))
       _obj_class)))
  (:obj_orientationangle
   (&rest __obj_orientationangle)
   (if (keywordp (car __obj_orientationangle))
       (send* _obj_orientationangle __obj_orientationangle)
     (progn
       (if __obj_orientationangle (setq _obj_orientationangle (car __obj_orientationangle)))
       _obj_orientationangle)))
  (:obj_length
   (&rest __obj_length)
   (if (keywordp (car __obj_length))
       (send* _obj_length __obj_length)
     (progn
       (if __obj_length (setq _obj_length (car __obj_length)))
       _obj_length)))
  (:obj_width
   (&rest __obj_width)
   (if (keywordp (car __obj_width))
       (send* _obj_width __obj_width)
     (progn
       (if __obj_width (setq _obj_width (car __obj_width)))
       _obj_width)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _obj_arellong
    (send _obj_arellong :serialization-length)
    ;; std_msgs/Float64 _obj_arellat
    (send _obj_arellat :serialization-length)
    ;; std_msgs/Int32 _obj_class
    (send _obj_class :serialization-length)
    ;; std_msgs/Float64 _obj_orientationangle
    (send _obj_orientationangle :serialization-length)
    ;; std_msgs/Float64 _obj_length
    (send _obj_length :serialization-length)
    ;; std_msgs/Float64 _obj_width
    (send _obj_width :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _obj_arellong
       (send _obj_arellong :serialize s)
     ;; std_msgs/Float64 _obj_arellat
       (send _obj_arellat :serialize s)
     ;; std_msgs/Int32 _obj_class
       (send _obj_class :serialize s)
     ;; std_msgs/Float64 _obj_orientationangle
       (send _obj_orientationangle :serialize s)
     ;; std_msgs/Float64 _obj_length
       (send _obj_length :serialize s)
     ;; std_msgs/Float64 _obj_width
       (send _obj_width :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _obj_arellong
     (send _obj_arellong :deserialize buf ptr-) (incf ptr- (send _obj_arellong :serialization-length))
   ;; std_msgs/Float64 _obj_arellat
     (send _obj_arellat :deserialize buf ptr-) (incf ptr- (send _obj_arellat :serialization-length))
   ;; std_msgs/Int32 _obj_class
     (send _obj_class :deserialize buf ptr-) (incf ptr- (send _obj_class :serialization-length))
   ;; std_msgs/Float64 _obj_orientationangle
     (send _obj_orientationangle :deserialize buf ptr-) (incf ptr- (send _obj_orientationangle :serialization-length))
   ;; std_msgs/Float64 _obj_length
     (send _obj_length :deserialize buf ptr-) (incf ptr- (send _obj_length :serialization-length))
   ;; std_msgs/Float64 _obj_width
     (send _obj_width :deserialize buf ptr-) (incf ptr- (send _obj_width :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::ObjectExtended :md5sum-) "96824e97e44bcd21a96fe4ebd1753186")
(setf (get radar_conti::ObjectExtended :datatype-) "radar_conti/ObjectExtended")
(setf (get radar_conti::ObjectExtended :definition-)
      "#  ------------------------------------------------------------------------
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
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :radar_conti/ObjectExtended "96824e97e44bcd21a96fe4ebd1753186")


