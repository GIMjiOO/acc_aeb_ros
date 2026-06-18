; Auto-generated. Do not edit!


(cl:in-package pro_can-msg)


;//! \htmlinclude control_data.msg.html

(cl:defclass <control_data> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (acc_command_value
    :reader acc_command_value
    :initarg :acc_command_value
    :type cl:float
    :initform 0.0)
   (brake_command_value
    :reader brake_command_value
    :initarg :brake_command_value
    :type cl:float
    :initform 0.0)
   (steering_wheel_command_value
    :reader steering_wheel_command_value
    :initarg :steering_wheel_command_value
    :type cl:float
    :initform 0.0))
)

(cl:defclass control_data (<control_data>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <control_data>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'control_data)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pro_can-msg:<control_data> is deprecated: use pro_can-msg:control_data instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <control_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pro_can-msg:header-val is deprecated.  Use pro_can-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'acc_command_value-val :lambda-list '(m))
(cl:defmethod acc_command_value-val ((m <control_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pro_can-msg:acc_command_value-val is deprecated.  Use pro_can-msg:acc_command_value instead.")
  (acc_command_value m))

(cl:ensure-generic-function 'brake_command_value-val :lambda-list '(m))
(cl:defmethod brake_command_value-val ((m <control_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pro_can-msg:brake_command_value-val is deprecated.  Use pro_can-msg:brake_command_value instead.")
  (brake_command_value m))

(cl:ensure-generic-function 'steering_wheel_command_value-val :lambda-list '(m))
(cl:defmethod steering_wheel_command_value-val ((m <control_data>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pro_can-msg:steering_wheel_command_value-val is deprecated.  Use pro_can-msg:steering_wheel_command_value instead.")
  (steering_wheel_command_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <control_data>) ostream)
  "Serializes a message object of type '<control_data>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acc_command_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brake_command_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering_wheel_command_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <control_data>) istream)
  "Deserializes a message object of type '<control_data>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acc_command_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_command_value) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_wheel_command_value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<control_data>)))
  "Returns string type for a message object of type '<control_data>"
  "pro_can/control_data")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'control_data)))
  "Returns string type for a message object of type 'control_data"
  "pro_can/control_data")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<control_data>)))
  "Returns md5sum for a message object of type '<control_data>"
  "d09a1efa4e00097fb79b2c455901250c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'control_data)))
  "Returns md5sum for a message object of type 'control_data"
  "d09a1efa4e00097fb79b2c455901250c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<control_data>)))
  "Returns full string definition for message of type '<control_data>"
  (cl:format cl:nil "# [TEMP SIM] control_data — longitudinal actuator command (mirrors real pro_can/control_data).~%# Fields used by acc_aeb_node:~%#   header.stamp              — publish timestamp~%#   acc_command_value         — motor torque (Nm); positive = drive~%#   brake_command_value       — braking demand in G (0–0.6)~%#   steering_wheel_command_value — always 0.0 from the ACC/AEB node~%std_msgs/Header header~%float64 acc_command_value~%float64 brake_command_value~%float64 steering_wheel_command_value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'control_data)))
  "Returns full string definition for message of type 'control_data"
  (cl:format cl:nil "# [TEMP SIM] control_data — longitudinal actuator command (mirrors real pro_can/control_data).~%# Fields used by acc_aeb_node:~%#   header.stamp              — publish timestamp~%#   acc_command_value         — motor torque (Nm); positive = drive~%#   brake_command_value       — braking demand in G (0–0.6)~%#   steering_wheel_command_value — always 0.0 from the ACC/AEB node~%std_msgs/Header header~%float64 acc_command_value~%float64 brake_command_value~%float64 steering_wheel_command_value~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <control_data>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <control_data>))
  "Converts a ROS message object to a list"
  (cl:list 'control_data
    (cl:cons ':header (header msg))
    (cl:cons ':acc_command_value (acc_command_value msg))
    (cl:cons ':brake_command_value (brake_command_value msg))
    (cl:cons ':steering_wheel_command_value (steering_wheel_command_value msg))
))
