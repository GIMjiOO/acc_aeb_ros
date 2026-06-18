;; Auto-generated. Do not edit!


(when (boundp 'ouster_ros::Telemetry)
  (if (not (find-package "OUSTER_ROS"))
    (make-package "OUSTER_ROS"))
  (shadow 'Telemetry (find-package "OUSTER_ROS")))
(unless (find-package "OUSTER_ROS::TELEMETRY")
  (make-package "OUSTER_ROS::TELEMETRY"))

(in-package "ROS")
;;//! \htmlinclude Telemetry.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*THERMAL_SHUTDOWN_NORMAL*" (find-package "OUSTER_ROS::TELEMETRY"))
(shadow '*THERMAL_SHUTDOWN_NORMAL* (find-package "OUSTER_ROS::TELEMETRY"))
(defconstant ouster_ros::Telemetry::*THERMAL_SHUTDOWN_NORMAL* 0)
(intern "*THERMAL_SHUTDOWN_IMMINENT*" (find-package "OUSTER_ROS::TELEMETRY"))
(shadow '*THERMAL_SHUTDOWN_IMMINENT* (find-package "OUSTER_ROS::TELEMETRY"))
(defconstant ouster_ros::Telemetry::*THERMAL_SHUTDOWN_IMMINENT* 1)
(intern "*SHOT_LIMITING_NORMAL*" (find-package "OUSTER_ROS::TELEMETRY"))
(shadow '*SHOT_LIMITING_NORMAL* (find-package "OUSTER_ROS::TELEMETRY"))
(defconstant ouster_ros::Telemetry::*SHOT_LIMITING_NORMAL* 0)
(intern "*SHOT_LIMITING_IMMINENT*" (find-package "OUSTER_ROS::TELEMETRY"))
(shadow '*SHOT_LIMITING_IMMINENT* (find-package "OUSTER_ROS::TELEMETRY"))
(defconstant ouster_ros::Telemetry::*SHOT_LIMITING_IMMINENT* 1)
(intern "*SHOT_LIMITING_REDUCTION_0_10*" (find-package "OUSTER_ROS::TELEMETRY"))
(shadow '*SHOT_LIMITING_REDUCTION_0_10* (find-package "OUSTER_ROS::TELEMETRY"))
(defconstant ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_0_10* 2)
(intern "*SHOT_LIMITING_REDUCTION_10_20*" (find-package "OUSTER_ROS::TELEMETRY"))
(shadow '*SHOT_LIMITING_REDUCTION_10_20* (find-package "OUSTER_ROS::TELEMETRY"))
(defconstant ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_10_20* 3)
(intern "*SHOT_LIMITING_REDUCTION_20_30*" (find-package "OUSTER_ROS::TELEMETRY"))
(shadow '*SHOT_LIMITING_REDUCTION_20_30* (find-package "OUSTER_ROS::TELEMETRY"))
(defconstant ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_20_30* 4)
(intern "*SHOT_LIMITING_REDUCTION_30_40*" (find-package "OUSTER_ROS::TELEMETRY"))
(shadow '*SHOT_LIMITING_REDUCTION_30_40* (find-package "OUSTER_ROS::TELEMETRY"))
(defconstant ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_30_40* 5)
(intern "*SHOT_LIMITING_REDUCTION_40_50*" (find-package "OUSTER_ROS::TELEMETRY"))
(shadow '*SHOT_LIMITING_REDUCTION_40_50* (find-package "OUSTER_ROS::TELEMETRY"))
(defconstant ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_40_50* 6)
(intern "*SHOT_LIMITING_REDUCTION_50_60*" (find-package "OUSTER_ROS::TELEMETRY"))
(shadow '*SHOT_LIMITING_REDUCTION_50_60* (find-package "OUSTER_ROS::TELEMETRY"))
(defconstant ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_50_60* 7)
(intern "*SHOT_LIMITING_REDUCTION_60_70*" (find-package "OUSTER_ROS::TELEMETRY"))
(shadow '*SHOT_LIMITING_REDUCTION_60_70* (find-package "OUSTER_ROS::TELEMETRY"))
(defconstant ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_60_70* 8)
(intern "*SHOT_LIMITING_REDUCTION_70_75*" (find-package "OUSTER_ROS::TELEMETRY"))
(shadow '*SHOT_LIMITING_REDUCTION_70_75* (find-package "OUSTER_ROS::TELEMETRY"))
(defconstant ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_70_75* 9)

(defun ouster_ros::Telemetry-to-symbol (const)
  (cond
        ((= const 0) 'ouster_ros::Telemetry::*THERMAL_SHUTDOWN_NORMAL*)
        ((= const 1) 'ouster_ros::Telemetry::*THERMAL_SHUTDOWN_IMMINENT*)
        ((= const 0) 'ouster_ros::Telemetry::*SHOT_LIMITING_NORMAL*)
        ((= const 1) 'ouster_ros::Telemetry::*SHOT_LIMITING_IMMINENT*)
        ((= const 2) 'ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_0_10*)
        ((= const 3) 'ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_10_20*)
        ((= const 4) 'ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_20_30*)
        ((= const 5) 'ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_30_40*)
        ((= const 6) 'ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_40_50*)
        ((= const 7) 'ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_50_60*)
        ((= const 8) 'ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_60_70*)
        ((= const 9) 'ouster_ros::Telemetry::*SHOT_LIMITING_REDUCTION_70_75*)
        (t nil)))

(defclass ouster_ros::Telemetry
  :super ros::object
  :slots (_header _countdown_thermal_shutdown _countdown_shot_limiting _thermal_shutdown _shot_limiting ))

(defmethod ouster_ros::Telemetry
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:countdown_thermal_shutdown __countdown_thermal_shutdown) 0)
    ((:countdown_shot_limiting __countdown_shot_limiting) 0)
    ((:thermal_shutdown __thermal_shutdown) 0)
    ((:shot_limiting __shot_limiting) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _countdown_thermal_shutdown (round __countdown_thermal_shutdown))
   (setq _countdown_shot_limiting (round __countdown_shot_limiting))
   (setq _thermal_shutdown (round __thermal_shutdown))
   (setq _shot_limiting (round __shot_limiting))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:countdown_thermal_shutdown
   (&optional __countdown_thermal_shutdown)
   (if __countdown_thermal_shutdown (setq _countdown_thermal_shutdown __countdown_thermal_shutdown)) _countdown_thermal_shutdown)
  (:countdown_shot_limiting
   (&optional __countdown_shot_limiting)
   (if __countdown_shot_limiting (setq _countdown_shot_limiting __countdown_shot_limiting)) _countdown_shot_limiting)
  (:thermal_shutdown
   (&optional __thermal_shutdown)
   (if __thermal_shutdown (setq _thermal_shutdown __thermal_shutdown)) _thermal_shutdown)
  (:shot_limiting
   (&optional __shot_limiting)
   (if __shot_limiting (setq _shot_limiting __shot_limiting)) _shot_limiting)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint16 _countdown_thermal_shutdown
    2
    ;; uint16 _countdown_shot_limiting
    2
    ;; uint8 _thermal_shutdown
    1
    ;; uint8 _shot_limiting
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint16 _countdown_thermal_shutdown
       (write-word _countdown_thermal_shutdown s)
     ;; uint16 _countdown_shot_limiting
       (write-word _countdown_shot_limiting s)
     ;; uint8 _thermal_shutdown
       (write-byte _thermal_shutdown s)
     ;; uint8 _shot_limiting
       (write-byte _shot_limiting s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint16 _countdown_thermal_shutdown
     (setq _countdown_thermal_shutdown (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _countdown_shot_limiting
     (setq _countdown_shot_limiting (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _thermal_shutdown
     (setq _thermal_shutdown (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _shot_limiting
     (setq _shot_limiting (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ouster_ros::Telemetry :md5sum-) "41824d1195ebb9ac184e7c24e9f33bfa")
(setf (get ouster_ros::Telemetry :datatype-) "ouster_ros/Telemetry")
(setf (get ouster_ros::Telemetry :definition-)
      "# This message defines the telemetry data for Ouster sensors.

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

")



(provide :ouster_ros/Telemetry "41824d1195ebb9ac184e7c24e9f33bfa")


