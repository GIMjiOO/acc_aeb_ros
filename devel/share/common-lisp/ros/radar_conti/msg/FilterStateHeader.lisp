; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude FilterStateHeader.msg.html

(cl:defclass <FilterStateHeader> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (filterstate_nofclusterfiltercfg
    :reader filterstate_nofclusterfiltercfg
    :initarg :filterstate_nofclusterfiltercfg
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filterstate_nofobjectfiltercfg
    :reader filterstate_nofobjectfiltercfg
    :initarg :filterstate_nofobjectfiltercfg
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass FilterStateHeader (<FilterStateHeader>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilterStateHeader>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilterStateHeader)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<FilterStateHeader> is deprecated: use radar_conti-msg:FilterStateHeader instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FilterStateHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:header-val is deprecated.  Use radar_conti-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'filterstate_nofclusterfiltercfg-val :lambda-list '(m))
(cl:defmethod filterstate_nofclusterfiltercfg-val ((m <FilterStateHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filterstate_nofclusterfiltercfg-val is deprecated.  Use radar_conti-msg:filterstate_nofclusterfiltercfg instead.")
  (filterstate_nofclusterfiltercfg m))

(cl:ensure-generic-function 'filterstate_nofobjectfiltercfg-val :lambda-list '(m))
(cl:defmethod filterstate_nofobjectfiltercfg-val ((m <FilterStateHeader>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filterstate_nofobjectfiltercfg-val is deprecated.  Use radar_conti-msg:filterstate_nofobjectfiltercfg instead.")
  (filterstate_nofobjectfiltercfg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilterStateHeader>) ostream)
  "Serializes a message object of type '<FilterStateHeader>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filterstate_nofclusterfiltercfg) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filterstate_nofobjectfiltercfg) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilterStateHeader>) istream)
  "Deserializes a message object of type '<FilterStateHeader>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filterstate_nofclusterfiltercfg) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filterstate_nofobjectfiltercfg) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilterStateHeader>)))
  "Returns string type for a message object of type '<FilterStateHeader>"
  "radar_conti/FilterStateHeader")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilterStateHeader)))
  "Returns string type for a message object of type 'FilterStateHeader"
  "radar_conti/FilterStateHeader")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilterStateHeader>)))
  "Returns md5sum for a message object of type '<FilterStateHeader>"
  "9ae5e3ef34336e8c833a830f9ae125c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilterStateHeader)))
  "Returns md5sum for a message object of type 'FilterStateHeader"
  "9ae5e3ef34336e8c833a830f9ae125c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilterStateHeader>)))
  "Returns full string definition for message of type '<FilterStateHeader>"
  (cl:format cl:nil "std_msgs/Header header~%~%# Number of filter status messages for configured cluster filter~%#~%# possible values 0-6~%# 0: no cluster filter is set~%# 1-6: cluster filters~%~%std_msgs/UInt8 filterstate_nofclusterfiltercfg~%~%# Number of filter status messages for configured object filter~%#~%# possible values 0-16~%# 0: no object filter is set~%# 1-16: object filters~%~%std_msgs/UInt8 filterstate_nofobjectfiltercfg~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilterStateHeader)))
  "Returns full string definition for message of type 'FilterStateHeader"
  (cl:format cl:nil "std_msgs/Header header~%~%# Number of filter status messages for configured cluster filter~%#~%# possible values 0-6~%# 0: no cluster filter is set~%# 1-6: cluster filters~%~%std_msgs/UInt8 filterstate_nofclusterfiltercfg~%~%# Number of filter status messages for configured object filter~%#~%# possible values 0-16~%# 0: no object filter is set~%# 1-16: object filters~%~%std_msgs/UInt8 filterstate_nofobjectfiltercfg~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilterStateHeader>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filterstate_nofclusterfiltercfg))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filterstate_nofobjectfiltercfg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilterStateHeader>))
  "Converts a ROS message object to a list"
  (cl:list 'FilterStateHeader
    (cl:cons ':header (header msg))
    (cl:cons ':filterstate_nofclusterfiltercfg (filterstate_nofclusterfiltercfg msg))
    (cl:cons ':filterstate_nofobjectfiltercfg (filterstate_nofobjectfiltercfg msg))
))
