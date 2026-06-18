; Auto-generated. Do not edit!


(cl:in-package npust_bus_msgs-msg)


;//! \htmlinclude LanePolynomial.msg.html

(cl:defclass <LanePolynomial> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:float
    :initform 0.0)
   (b
    :reader b
    :initarg :b
    :type cl:float
    :initform 0.0)
   (c
    :reader c
    :initarg :c
    :type cl:float
    :initform 0.0)
   (is_valid
    :reader is_valid
    :initarg :is_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LanePolynomial (<LanePolynomial>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LanePolynomial>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LanePolynomial)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name npust_bus_msgs-msg:<LanePolynomial> is deprecated: use npust_bus_msgs-msg:LanePolynomial instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <LanePolynomial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader npust_bus_msgs-msg:a-val is deprecated.  Use npust_bus_msgs-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <LanePolynomial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader npust_bus_msgs-msg:b-val is deprecated.  Use npust_bus_msgs-msg:b instead.")
  (b m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <LanePolynomial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader npust_bus_msgs-msg:c-val is deprecated.  Use npust_bus_msgs-msg:c instead.")
  (c m))

(cl:ensure-generic-function 'is_valid-val :lambda-list '(m))
(cl:defmethod is_valid-val ((m <LanePolynomial>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader npust_bus_msgs-msg:is_valid-val is deprecated.  Use npust_bus_msgs-msg:is_valid instead.")
  (is_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LanePolynomial>) ostream)
  "Serializes a message object of type '<LanePolynomial>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LanePolynomial>) istream)
  "Deserializes a message object of type '<LanePolynomial>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'a) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'b) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'c) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LanePolynomial>)))
  "Returns string type for a message object of type '<LanePolynomial>"
  "npust_bus_msgs/LanePolynomial")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LanePolynomial)))
  "Returns string type for a message object of type 'LanePolynomial"
  "npust_bus_msgs/LanePolynomial")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LanePolynomial>)))
  "Returns md5sum for a message object of type '<LanePolynomial>"
  "d23cdde470f87162ea53865c3a120f7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LanePolynomial)))
  "Returns md5sum for a message object of type 'LanePolynomial"
  "d23cdde470f87162ea53865c3a120f7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LanePolynomial>)))
  "Returns full string definition for message of type '<LanePolynomial>"
  (cl:format cl:nil "# [TEMP SIM] LanePolynomial — second-order lateral lane boundary:~%#   y(x) = a*x^2 + b*x + c~%# Validity gates (from kinematics.cpp / isLaneValid):~%#   is_valid must be true~%#   |a| <= max_lane_curve_a   (default 0.02)~%#   |b| <= max_lane_heading_b (default 0.35)~%float64 a~%float64 b~%float64 c~%bool    is_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LanePolynomial)))
  "Returns full string definition for message of type 'LanePolynomial"
  (cl:format cl:nil "# [TEMP SIM] LanePolynomial — second-order lateral lane boundary:~%#   y(x) = a*x^2 + b*x + c~%# Validity gates (from kinematics.cpp / isLaneValid):~%#   is_valid must be true~%#   |a| <= max_lane_curve_a   (default 0.02)~%#   |b| <= max_lane_heading_b (default 0.35)~%float64 a~%float64 b~%float64 c~%bool    is_valid~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LanePolynomial>))
  (cl:+ 0
     8
     8
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LanePolynomial>))
  "Converts a ROS message object to a list"
  (cl:list 'LanePolynomial
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
    (cl:cons ':c (c msg))
    (cl:cons ':is_valid (is_valid msg))
))
