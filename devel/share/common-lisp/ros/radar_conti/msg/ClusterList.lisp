; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude ClusterList.msg.html

(cl:defclass <ClusterList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cluster_count
    :reader cluster_count
    :initarg :cluster_count
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (clusters
    :reader clusters
    :initarg :clusters
    :type (cl:vector radar_conti-msg:Cluster)
   :initform (cl:make-array 0 :element-type 'radar_conti-msg:Cluster :initial-element (cl:make-instance 'radar_conti-msg:Cluster))))
)

(cl:defclass ClusterList (<ClusterList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClusterList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClusterList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<ClusterList> is deprecated: use radar_conti-msg:ClusterList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ClusterList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:header-val is deprecated.  Use radar_conti-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cluster_count-val :lambda-list '(m))
(cl:defmethod cluster_count-val ((m <ClusterList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_count-val is deprecated.  Use radar_conti-msg:cluster_count instead.")
  (cluster_count m))

(cl:ensure-generic-function 'clusters-val :lambda-list '(m))
(cl:defmethod clusters-val ((m <ClusterList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:clusters-val is deprecated.  Use radar_conti-msg:clusters instead.")
  (clusters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClusterList>) ostream)
  "Serializes a message object of type '<ClusterList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_count) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'clusters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'clusters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClusterList>) istream)
  "Deserializes a message object of type '<ClusterList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_count) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'clusters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'clusters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'radar_conti-msg:Cluster))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClusterList>)))
  "Returns string type for a message object of type '<ClusterList>"
  "radar_conti/ClusterList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterList)))
  "Returns string type for a message object of type 'ClusterList"
  "radar_conti/ClusterList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClusterList>)))
  "Returns md5sum for a message object of type '<ClusterList>"
  "f224f52f8435f121b949e6b05d35dc26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClusterList)))
  "Returns md5sum for a message object of type 'ClusterList"
  "f224f52f8435f121b949e6b05d35dc26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClusterList>)))
  "Returns full string definition for message of type '<ClusterList>"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Int32 cluster_count~%Cluster[] clusters~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: radar_conti/Cluster~%std_msgs/Int32 cluster_id~%ClusterGeneral cluster_general~%ClusterQuality cluster_quality~%================================================================================~%MSG: radar_conti/ClusterGeneral~%#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_1_General~%#  Id:         0x701~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------------------x|   |<------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Cluster_DistLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |------------------------------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                                   +-- Cluster_DistLat~%#     t     +---+---+---+---+---+---+---+---+~%#     e   4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|<----------------------|~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Cluster_VrelLong~%#           +---+---+---+---+---+---+---+---+~%#         6 |----------x|   |   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                     |                   +-- Cluster_DynProp~%#                     +-- Cluster_VrelLat~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_RCS~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_ID~%#       +-- Cluster_DistLong~%#       +-- Cluster_DistLat~%#       +-- Cluster_VrelLong~%#       +-- Cluster_VrelLat~%#       +-- Cluster_DynProp~%#       +-- Cluster_RCS~%#~%#  ------------------------------------------------------------------------~%std_msgs/Float64 cluster_distlong~%std_msgs/Float64 cluster_distlat~%std_msgs/Float64 cluster_vrellong~%std_msgs/Float64 cluster_vrellat~%std_msgs/Int32   cluster_dynprop~%std_msgs/Float64 cluster_rcs~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: radar_conti/ClusterQuality~%#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_2_Quality~%#  Id:         0x702~%#  Length:     5 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Cluster_DistLong_rms~%#           +---+---+---+---+---+---+---+---+~%#     B   2 |------x|<-----------------x|<--|~%#     y     +---+---+---+---+---+---+---+---+~%#     t           |                   +-- Cluster_VrelLong_rms~%#     e           +-- Cluster_DistLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         3 |--------------x|   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                         |               +-- Cluster_PdH0~%#                         +-- Cluster_VrelLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         4 |<-----------------x|<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                             |           +-- Cluster_AmbigState~%#                             +-- Cluster_InvalidState~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_ID~%#       +-- Cluster_DistLong_rms~%#       +-- Cluster_DistLat_rms~%#       +-- Cluster_VrelLong_rms~%#       +-- Cluster_VrelLat_rms~%#       +-- Cluster_PdH0~%#       +-- Cluster_InvalidState~%#       +-- Cluster_AmbigState~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 cluster_distlong_rms~%std_msgs/Float64 cluster_distlat_rms~%std_msgs/Float64 cluster_vrellong_rms~%std_msgs/Float64 cluster_vrellat_rms~%std_msgs/String cluster_pdh0~%std_msgs/String cluster_invalidstate~%std_msgs/String cluster_ambigstate~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClusterList)))
  "Returns full string definition for message of type 'ClusterList"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Int32 cluster_count~%Cluster[] clusters~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: radar_conti/Cluster~%std_msgs/Int32 cluster_id~%ClusterGeneral cluster_general~%ClusterQuality cluster_quality~%================================================================================~%MSG: radar_conti/ClusterGeneral~%#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_1_General~%#  Id:         0x701~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------------------x|   |<------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Cluster_DistLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |------------------------------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                                   +-- Cluster_DistLat~%#     t     +---+---+---+---+---+---+---+---+~%#     e   4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|<----------------------|~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Cluster_VrelLong~%#           +---+---+---+---+---+---+---+---+~%#         6 |----------x|   |   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                     |                   +-- Cluster_DynProp~%#                     +-- Cluster_VrelLat~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_RCS~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_ID~%#       +-- Cluster_DistLong~%#       +-- Cluster_DistLat~%#       +-- Cluster_VrelLong~%#       +-- Cluster_VrelLat~%#       +-- Cluster_DynProp~%#       +-- Cluster_RCS~%#~%#  ------------------------------------------------------------------------~%std_msgs/Float64 cluster_distlong~%std_msgs/Float64 cluster_distlat~%std_msgs/Float64 cluster_vrellong~%std_msgs/Float64 cluster_vrellat~%std_msgs/Int32   cluster_dynprop~%std_msgs/Float64 cluster_rcs~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: radar_conti/ClusterQuality~%#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_2_Quality~%#  Id:         0x702~%#  Length:     5 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Cluster_DistLong_rms~%#           +---+---+---+---+---+---+---+---+~%#     B   2 |------x|<-----------------x|<--|~%#     y     +---+---+---+---+---+---+---+---+~%#     t           |                   +-- Cluster_VrelLong_rms~%#     e           +-- Cluster_DistLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         3 |--------------x|   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                         |               +-- Cluster_PdH0~%#                         +-- Cluster_VrelLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         4 |<-----------------x|<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                             |           +-- Cluster_AmbigState~%#                             +-- Cluster_InvalidState~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_ID~%#       +-- Cluster_DistLong_rms~%#       +-- Cluster_DistLat_rms~%#       +-- Cluster_VrelLong_rms~%#       +-- Cluster_VrelLat_rms~%#       +-- Cluster_PdH0~%#       +-- Cluster_InvalidState~%#       +-- Cluster_AmbigState~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 cluster_distlong_rms~%std_msgs/Float64 cluster_distlat_rms~%std_msgs/Float64 cluster_vrellong_rms~%std_msgs/Float64 cluster_vrellat_rms~%std_msgs/String cluster_pdh0~%std_msgs/String cluster_invalidstate~%std_msgs/String cluster_ambigstate~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClusterList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_count))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'clusters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClusterList>))
  "Converts a ROS message object to a list"
  (cl:list 'ClusterList
    (cl:cons ':header (header msg))
    (cl:cons ':cluster_count (cluster_count msg))
    (cl:cons ':clusters (clusters msg))
))
