; Auto-generated. Do not edit!


(cl:in-package npust_bus_msgs-msg)


;//! \htmlinclude TrackedObjectArray.msg.html

(cl:defclass <TrackedObjectArray> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type (cl:vector npust_bus_msgs-msg:TrackedObject)
   :initform (cl:make-array 0 :element-type 'npust_bus_msgs-msg:TrackedObject :initial-element (cl:make-instance 'npust_bus_msgs-msg:TrackedObject))))
)

(cl:defclass TrackedObjectArray (<TrackedObjectArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackedObjectArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackedObjectArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name npust_bus_msgs-msg:<TrackedObjectArray> is deprecated: use npust_bus_msgs-msg:TrackedObjectArray instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <TrackedObjectArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader npust_bus_msgs-msg:objects-val is deprecated.  Use npust_bus_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackedObjectArray>) ostream)
  "Serializes a message object of type '<TrackedObjectArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackedObjectArray>) istream)
  "Deserializes a message object of type '<TrackedObjectArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'npust_bus_msgs-msg:TrackedObject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackedObjectArray>)))
  "Returns string type for a message object of type '<TrackedObjectArray>"
  "npust_bus_msgs/TrackedObjectArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackedObjectArray)))
  "Returns string type for a message object of type 'TrackedObjectArray"
  "npust_bus_msgs/TrackedObjectArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackedObjectArray>)))
  "Returns md5sum for a message object of type '<TrackedObjectArray>"
  "5d218fbb61fe62df928b50149766925f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackedObjectArray)))
  "Returns md5sum for a message object of type 'TrackedObjectArray"
  "5d218fbb61fe62df928b50149766925f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackedObjectArray>)))
  "Returns full string definition for message of type '<TrackedObjectArray>"
  (cl:format cl:nil "# [TEMP SIM] TrackedObjectArray — list of all detected objects for one perception frame.~%TrackedObject[] objects~%~%================================================================================~%MSG: npust_bus_msgs/TrackedObject~%# [TEMP SIM] TrackedObject — single detected object from the perception stack.~%# Fields used by acc_aeb kinematics.cpp:~%#   x   — longitudinal range ahead (m), must be > min_valid_x_m (0.5 m)~%#   y   — lateral offset (m); positive = left~%#   vx  — world-frame absolute velocity when vx_is_relative=false (m/s)~%#          relative-to-ego velocity when vx_is_relative=true (m/s)~%#   id  — stable tracking ID; consistent across frames for the ABG filter~%float64 x~%float64 y~%float64 vx~%int32   id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackedObjectArray)))
  "Returns full string definition for message of type 'TrackedObjectArray"
  (cl:format cl:nil "# [TEMP SIM] TrackedObjectArray — list of all detected objects for one perception frame.~%TrackedObject[] objects~%~%================================================================================~%MSG: npust_bus_msgs/TrackedObject~%# [TEMP SIM] TrackedObject — single detected object from the perception stack.~%# Fields used by acc_aeb kinematics.cpp:~%#   x   — longitudinal range ahead (m), must be > min_valid_x_m (0.5 m)~%#   y   — lateral offset (m); positive = left~%#   vx  — world-frame absolute velocity when vx_is_relative=false (m/s)~%#          relative-to-ego velocity when vx_is_relative=true (m/s)~%#   id  — stable tracking ID; consistent across frames for the ABG filter~%float64 x~%float64 y~%float64 vx~%int32   id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackedObjectArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackedObjectArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackedObjectArray
    (cl:cons ':objects (objects msg))
))
