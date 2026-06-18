; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude CollisonObj.msg.html

(cl:defclass <CollisonObj> (roslisp-msg-protocol:ros-message)
  ((obj_id
    :reader obj_id
    :initarg :obj_id
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass CollisonObj (<CollisonObj>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CollisonObj>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CollisonObj)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<CollisonObj> is deprecated: use radar_conti-msg:CollisonObj instead.")))

(cl:ensure-generic-function 'obj_id-val :lambda-list '(m))
(cl:defmethod obj_id-val ((m <CollisonObj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_id-val is deprecated.  Use radar_conti-msg:obj_id instead.")
  (obj_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CollisonObj>) ostream)
  "Serializes a message object of type '<CollisonObj>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_id) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CollisonObj>) istream)
  "Deserializes a message object of type '<CollisonObj>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_id) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CollisonObj>)))
  "Returns string type for a message object of type '<CollisonObj>"
  "radar_conti/CollisonObj")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CollisonObj)))
  "Returns string type for a message object of type 'CollisonObj"
  "radar_conti/CollisonObj")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CollisonObj>)))
  "Returns md5sum for a message object of type '<CollisonObj>"
  "c0bbbfa30045347256b800ec4412e538")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CollisonObj)))
  "Returns md5sum for a message object of type 'CollisonObj"
  "c0bbbfa30045347256b800ec4412e538")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CollisonObj>)))
  "Returns full string definition for message of type '<CollisonObj>"
  (cl:format cl:nil "std_msgs/Int32 obj_id~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CollisonObj)))
  "Returns full string definition for message of type 'CollisonObj"
  (cl:format cl:nil "std_msgs/Int32 obj_id~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CollisonObj>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CollisonObj>))
  "Converts a ROS message object to a list"
  (cl:list 'CollisonObj
    (cl:cons ':obj_id (obj_id msg))
))
