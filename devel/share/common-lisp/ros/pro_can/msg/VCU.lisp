; Auto-generated. Do not edit!


(cl:in-package pro_can-msg)


;//! \htmlinclude VCU.msg.html

(cl:defclass <VCU> (roslisp-msg-protocol:ros-message)
  ((MotorVelocity
    :reader MotorVelocity
    :initarg :MotorVelocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass VCU (<VCU>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VCU>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VCU)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pro_can-msg:<VCU> is deprecated: use pro_can-msg:VCU instead.")))

(cl:ensure-generic-function 'MotorVelocity-val :lambda-list '(m))
(cl:defmethod MotorVelocity-val ((m <VCU>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pro_can-msg:MotorVelocity-val is deprecated.  Use pro_can-msg:MotorVelocity instead.")
  (MotorVelocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VCU>) ostream)
  "Serializes a message object of type '<VCU>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'MotorVelocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VCU>) istream)
  "Deserializes a message object of type '<VCU>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'MotorVelocity) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VCU>)))
  "Returns string type for a message object of type '<VCU>"
  "pro_can/VCU")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VCU)))
  "Returns string type for a message object of type 'VCU"
  "pro_can/VCU")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VCU>)))
  "Returns md5sum for a message object of type '<VCU>"
  "bad68293825d700d1b4f59a02856c41b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VCU)))
  "Returns md5sum for a message object of type 'VCU"
  "bad68293825d700d1b4f59a02856c41b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VCU>)))
  "Returns full string definition for message of type '<VCU>"
  (cl:format cl:nil "# [TEMP SIM] VCU — ego-speed message stub (mirrors real pro_can/VCU).~%# Field used by acc_aeb_node: MotorVelocity (km/h), cast to double.~%float32 MotorVelocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VCU)))
  "Returns full string definition for message of type 'VCU"
  (cl:format cl:nil "# [TEMP SIM] VCU — ego-speed message stub (mirrors real pro_can/VCU).~%# Field used by acc_aeb_node: MotorVelocity (km/h), cast to double.~%float32 MotorVelocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VCU>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VCU>))
  "Converts a ROS message object to a list"
  (cl:list 'VCU
    (cl:cons ':MotorVelocity (MotorVelocity msg))
))
