; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude CollisonList.msg.html

(cl:defclass <CollisonList> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type (cl:vector radar_conti-msg:CollisonObj)
   :initform (cl:make-array 0 :element-type 'radar_conti-msg:CollisonObj :initial-element (cl:make-instance 'radar_conti-msg:CollisonObj))))
)

(cl:defclass CollisonList (<CollisonList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisonList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisonList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<CollisonList> is deprecated: use radar_conti-msg:CollisonList instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <CollisonList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:objects-val is deprecated.  Use radar_conti-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisonList>) ostream)
  "Serializes a message object of type '<CollisonList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisonList>) istream)
  "Deserializes a message object of type '<CollisonList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_conti-msg:CollisonObj))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisonList>)))
  "Returns string type for a message object of type '<CollisonList>"
  "radar_conti/CollisonList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisonList)))
  "Returns string type for a message object of type 'CollisonList"
  "radar_conti/CollisonList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisonList>)))
  "Returns md5sum for a message object of type '<CollisonList>"
  "1a623832a153d5fa4295538827da3d97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisonList)))
  "Returns md5sum for a message object of type 'CollisonList"
  "1a623832a153d5fa4295538827da3d97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisonList>)))
  "Returns full string definition for message of type '<CollisonList>"
  (cl:format cl:nil "CollisonObj[] objects~%================================================================================~%MSG: radar_conti/CollisonObj~%std_msgs/Int32 obj_id~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisonList)))
  "Returns full string definition for message of type 'CollisonList"
  (cl:format cl:nil "CollisonObj[] objects~%================================================================================~%MSG: radar_conti/CollisonObj~%std_msgs/Int32 obj_id~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisonList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisonList>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisonList
    (cl:cons ':objects (objects msg))
))
