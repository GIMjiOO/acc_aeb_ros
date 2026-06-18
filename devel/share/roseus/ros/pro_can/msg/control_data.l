;; Auto-generated. Do not edit!


(when (boundp 'pro_can::control_data)
  (if (not (find-package "PRO_CAN"))
    (make-package "PRO_CAN"))
  (shadow 'control_data (find-package "PRO_CAN")))
(unless (find-package "PRO_CAN::CONTROL_DATA")
  (make-package "PRO_CAN::CONTROL_DATA"))

(in-package "ROS")
;;//! \htmlinclude control_data.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pro_can::control_data
  :super ros::object
  :slots (_header _acc_command_value _brake_command_value _steering_wheel_command_value ))

(defmethod pro_can::control_data
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:acc_command_value __acc_command_value) 0.0)
    ((:brake_command_value __brake_command_value) 0.0)
    ((:steering_wheel_command_value __steering_wheel_command_value) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _acc_command_value (float __acc_command_value))
   (setq _brake_command_value (float __brake_command_value))
   (setq _steering_wheel_command_value (float __steering_wheel_command_value))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:acc_command_value
   (&optional __acc_command_value)
   (if __acc_command_value (setq _acc_command_value __acc_command_value)) _acc_command_value)
  (:brake_command_value
   (&optional __brake_command_value)
   (if __brake_command_value (setq _brake_command_value __brake_command_value)) _brake_command_value)
  (:steering_wheel_command_value
   (&optional __steering_wheel_command_value)
   (if __steering_wheel_command_value (setq _steering_wheel_command_value __steering_wheel_command_value)) _steering_wheel_command_value)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _acc_command_value
    8
    ;; float64 _brake_command_value
    8
    ;; float64 _steering_wheel_command_value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _acc_command_value
       (sys::poke _acc_command_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brake_command_value
       (sys::poke _brake_command_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_wheel_command_value
       (sys::poke _steering_wheel_command_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _acc_command_value
     (setq _acc_command_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brake_command_value
     (setq _brake_command_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_wheel_command_value
     (setq _steering_wheel_command_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pro_can::control_data :md5sum-) "d09a1efa4e00097fb79b2c455901250c")
(setf (get pro_can::control_data :datatype-) "pro_can/control_data")
(setf (get pro_can::control_data :definition-)
      "# [TEMP SIM] control_data — longitudinal actuator command (mirrors real pro_can/control_data).
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

")



(provide :pro_can/control_data "d09a1efa4e00097fb79b2c455901250c")


