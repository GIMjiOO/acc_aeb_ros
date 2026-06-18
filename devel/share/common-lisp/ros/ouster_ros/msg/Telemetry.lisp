; Auto-generated. Do not edit!


(cl:in-package ouster_ros-msg)


;//! \htmlinclude Telemetry.msg.html

(cl:defclass <Telemetry> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (countdown_thermal_shutdown
    :reader countdown_thermal_shutdown
    :initarg :countdown_thermal_shutdown
    :type cl:fixnum
    :initform 0)
   (countdown_shot_limiting
    :reader countdown_shot_limiting
    :initarg :countdown_shot_limiting
    :type cl:fixnum
    :initform 0)
   (thermal_shutdown
    :reader thermal_shutdown
    :initarg :thermal_shutdown
    :type cl:fixnum
    :initform 0)
   (shot_limiting
    :reader shot_limiting
    :initarg :shot_limiting
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Telemetry (<Telemetry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Telemetry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Telemetry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ouster_ros-msg:<Telemetry> is deprecated: use ouster_ros-msg:Telemetry instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ouster_ros-msg:header-val is deprecated.  Use ouster_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'countdown_thermal_shutdown-val :lambda-list '(m))
(cl:defmethod countdown_thermal_shutdown-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ouster_ros-msg:countdown_thermal_shutdown-val is deprecated.  Use ouster_ros-msg:countdown_thermal_shutdown instead.")
  (countdown_thermal_shutdown m))

(cl:ensure-generic-function 'countdown_shot_limiting-val :lambda-list '(m))
(cl:defmethod countdown_shot_limiting-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ouster_ros-msg:countdown_shot_limiting-val is deprecated.  Use ouster_ros-msg:countdown_shot_limiting instead.")
  (countdown_shot_limiting m))

(cl:ensure-generic-function 'thermal_shutdown-val :lambda-list '(m))
(cl:defmethod thermal_shutdown-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ouster_ros-msg:thermal_shutdown-val is deprecated.  Use ouster_ros-msg:thermal_shutdown instead.")
  (thermal_shutdown m))

(cl:ensure-generic-function 'shot_limiting-val :lambda-list '(m))
(cl:defmethod shot_limiting-val ((m <Telemetry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ouster_ros-msg:shot_limiting-val is deprecated.  Use ouster_ros-msg:shot_limiting instead.")
  (shot_limiting m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Telemetry>)))
    "Constants for message type '<Telemetry>"
  '((:THERMAL_SHUTDOWN_NORMAL . 0)
    (:THERMAL_SHUTDOWN_IMMINENT . 1)
    (:SHOT_LIMITING_NORMAL . 0)
    (:SHOT_LIMITING_IMMINENT . 1)
    (:SHOT_LIMITING_REDUCTION_0_10 . 2)
    (:SHOT_LIMITING_REDUCTION_10_20 . 3)
    (:SHOT_LIMITING_REDUCTION_20_30 . 4)
    (:SHOT_LIMITING_REDUCTION_30_40 . 5)
    (:SHOT_LIMITING_REDUCTION_40_50 . 6)
    (:SHOT_LIMITING_REDUCTION_50_60 . 7)
    (:SHOT_LIMITING_REDUCTION_60_70 . 8)
    (:SHOT_LIMITING_REDUCTION_70_75 . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Telemetry)))
    "Constants for message type 'Telemetry"
  '((:THERMAL_SHUTDOWN_NORMAL . 0)
    (:THERMAL_SHUTDOWN_IMMINENT . 1)
    (:SHOT_LIMITING_NORMAL . 0)
    (:SHOT_LIMITING_IMMINENT . 1)
    (:SHOT_LIMITING_REDUCTION_0_10 . 2)
    (:SHOT_LIMITING_REDUCTION_10_20 . 3)
    (:SHOT_LIMITING_REDUCTION_20_30 . 4)
    (:SHOT_LIMITING_REDUCTION_30_40 . 5)
    (:SHOT_LIMITING_REDUCTION_40_50 . 6)
    (:SHOT_LIMITING_REDUCTION_50_60 . 7)
    (:SHOT_LIMITING_REDUCTION_60_70 . 8)
    (:SHOT_LIMITING_REDUCTION_70_75 . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Telemetry>) ostream)
  "Serializes a message object of type '<Telemetry>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'countdown_thermal_shutdown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'countdown_thermal_shutdown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'countdown_shot_limiting)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'countdown_shot_limiting)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'thermal_shutdown)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shot_limiting)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Telemetry>) istream)
  "Deserializes a message object of type '<Telemetry>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'countdown_thermal_shutdown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'countdown_thermal_shutdown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'countdown_shot_limiting)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'countdown_shot_limiting)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'thermal_shutdown)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shot_limiting)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Telemetry>)))
  "Returns string type for a message object of type '<Telemetry>"
  "ouster_ros/Telemetry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Telemetry)))
  "Returns string type for a message object of type 'Telemetry"
  "ouster_ros/Telemetry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Telemetry>)))
  "Returns md5sum for a message object of type '<Telemetry>"
  "41824d1195ebb9ac184e7c24e9f33bfa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Telemetry)))
  "Returns md5sum for a message object of type 'Telemetry"
  "41824d1195ebb9ac184e7c24e9f33bfa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Telemetry>)))
  "Returns full string definition for message of type '<Telemetry>"
  (cl:format cl:nil "# This message defines the telemetry data for Ouster sensors.~%~%# ThermalShutdownStatus thermal_shutdown~%uint8 THERMAL_SHUTDOWN_NORMAL=0    # Normal operation~%uint8 THERMAL_SHUTDOWN_IMMINENT=1  # Thermal Shutdown imminent~%~%# ShotLimitingStatus shot_limiting~%uint8 SHOT_LIMITING_NORMAL=0          # Normal operation~%uint8 SHOT_LIMITING_IMMINENT=1        # Shot limiting imminent~%uint8 SHOT_LIMITING_REDUCTION_0_10=2  # Shot limiting reduction by 0 to 10%~%uint8 SHOT_LIMITING_REDUCTION_10_20=3 # Shot limiting reduction by 10 to 20%~%uint8 SHOT_LIMITING_REDUCTION_20_30=4 # Shot limiting reduction by 20 to 30%~%uint8 SHOT_LIMITING_REDUCTION_30_40=5 # Shot limiting reduction by 30 to 40%~%uint8 SHOT_LIMITING_REDUCTION_40_50=6 # Shot limiting reduction by 40 to 50%~%uint8 SHOT_LIMITING_REDUCTION_50_60=7 # Shot limiting reduction by 50 to 60%~%uint8 SHOT_LIMITING_REDUCTION_60_70=8 # Shot limiting reduction by 60 to 70%~%uint8 SHOT_LIMITING_REDUCTION_70_75=9 # Shot limiting reduction by 70 to 80%~%~%# Message header~%std_msgs/Header header~%# Telemetry fields for more information on these fields and their meaning, please review:~%# https://static.ouster.dev/sensor-docs/image_route1/image_route2/thermal_int_guide/therm_int_guide.html~%uint16 countdown_thermal_shutdown # the thermal shutdown countdown.~%uint16 countdown_shot_limiting    # the shot limiting countdown.~%uint8 thermal_shutdown            # the thermal shutdown status. 0 = NORMAL, 1 = SHUTDOWN IMMINENT.~%uint8 shot_limiting               # the shot limiting status. 0 = NORMAL OPERATION.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Telemetry)))
  "Returns full string definition for message of type 'Telemetry"
  (cl:format cl:nil "# This message defines the telemetry data for Ouster sensors.~%~%# ThermalShutdownStatus thermal_shutdown~%uint8 THERMAL_SHUTDOWN_NORMAL=0    # Normal operation~%uint8 THERMAL_SHUTDOWN_IMMINENT=1  # Thermal Shutdown imminent~%~%# ShotLimitingStatus shot_limiting~%uint8 SHOT_LIMITING_NORMAL=0          # Normal operation~%uint8 SHOT_LIMITING_IMMINENT=1        # Shot limiting imminent~%uint8 SHOT_LIMITING_REDUCTION_0_10=2  # Shot limiting reduction by 0 to 10%~%uint8 SHOT_LIMITING_REDUCTION_10_20=3 # Shot limiting reduction by 10 to 20%~%uint8 SHOT_LIMITING_REDUCTION_20_30=4 # Shot limiting reduction by 20 to 30%~%uint8 SHOT_LIMITING_REDUCTION_30_40=5 # Shot limiting reduction by 30 to 40%~%uint8 SHOT_LIMITING_REDUCTION_40_50=6 # Shot limiting reduction by 40 to 50%~%uint8 SHOT_LIMITING_REDUCTION_50_60=7 # Shot limiting reduction by 50 to 60%~%uint8 SHOT_LIMITING_REDUCTION_60_70=8 # Shot limiting reduction by 60 to 70%~%uint8 SHOT_LIMITING_REDUCTION_70_75=9 # Shot limiting reduction by 70 to 80%~%~%# Message header~%std_msgs/Header header~%# Telemetry fields for more information on these fields and their meaning, please review:~%# https://static.ouster.dev/sensor-docs/image_route1/image_route2/thermal_int_guide/therm_int_guide.html~%uint16 countdown_thermal_shutdown # the thermal shutdown countdown.~%uint16 countdown_shot_limiting    # the shot limiting countdown.~%uint8 thermal_shutdown            # the thermal shutdown status. 0 = NORMAL, 1 = SHUTDOWN IMMINENT.~%uint8 shot_limiting               # the shot limiting status. 0 = NORMAL OPERATION.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Telemetry>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Telemetry>))
  "Converts a ROS message object to a list"
  (cl:list 'Telemetry
    (cl:cons ':header (header msg))
    (cl:cons ':countdown_thermal_shutdown (countdown_thermal_shutdown msg))
    (cl:cons ':countdown_shot_limiting (countdown_shot_limiting msg))
    (cl:cons ':thermal_shutdown (thermal_shutdown msg))
    (cl:cons ':shot_limiting (shot_limiting msg))
))
