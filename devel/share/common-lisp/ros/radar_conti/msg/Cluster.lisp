; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude Cluster.msg.html

(cl:defclass <Cluster> (roslisp-msg-protocol:ros-message)
  ((cluster_id
    :reader cluster_id
    :initarg :cluster_id
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (cluster_general
    :reader cluster_general
    :initarg :cluster_general
    :type radar_conti-msg:ClusterGeneral
    :initform (cl:make-instance 'radar_conti-msg:ClusterGeneral))
   (cluster_quality
    :reader cluster_quality
    :initarg :cluster_quality
    :type radar_conti-msg:ClusterQuality
    :initform (cl:make-instance 'radar_conti-msg:ClusterQuality)))
)

(cl:defclass Cluster (<Cluster>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cluster>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cluster)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<Cluster> is deprecated: use radar_conti-msg:Cluster instead.")))

(cl:ensure-generic-function 'cluster_id-val :lambda-list '(m))
(cl:defmethod cluster_id-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_id-val is deprecated.  Use radar_conti-msg:cluster_id instead.")
  (cluster_id m))

(cl:ensure-generic-function 'cluster_general-val :lambda-list '(m))
(cl:defmethod cluster_general-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_general-val is deprecated.  Use radar_conti-msg:cluster_general instead.")
  (cluster_general m))

(cl:ensure-generic-function 'cluster_quality-val :lambda-list '(m))
(cl:defmethod cluster_quality-val ((m <Cluster>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_quality-val is deprecated.  Use radar_conti-msg:cluster_quality instead.")
  (cluster_quality m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cluster>) ostream)
  "Serializes a message object of type '<Cluster>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_general) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_quality) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cluster>) istream)
  "Deserializes a message object of type '<Cluster>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_general) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_quality) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cluster>)))
  "Returns string type for a message object of type '<Cluster>"
  "radar_conti/Cluster")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cluster)))
  "Returns string type for a message object of type 'Cluster"
  "radar_conti/Cluster")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cluster>)))
  "Returns md5sum for a message object of type '<Cluster>"
  "2811095d8cefca700603904d21f118c9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cluster)))
  "Returns md5sum for a message object of type 'Cluster"
  "2811095d8cefca700603904d21f118c9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cluster>)))
  "Returns full string definition for message of type '<Cluster>"
  (cl:format cl:nil "std_msgs/Int32 cluster_id~%ClusterGeneral cluster_general~%ClusterQuality cluster_quality~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: radar_conti/ClusterGeneral~%#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_1_General~%#  Id:         0x701~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------------------x|   |<------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Cluster_DistLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |------------------------------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                                   +-- Cluster_DistLat~%#     t     +---+---+---+---+---+---+---+---+~%#     e   4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|<----------------------|~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Cluster_VrelLong~%#           +---+---+---+---+---+---+---+---+~%#         6 |----------x|   |   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                     |                   +-- Cluster_DynProp~%#                     +-- Cluster_VrelLat~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_RCS~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_ID~%#       +-- Cluster_DistLong~%#       +-- Cluster_DistLat~%#       +-- Cluster_VrelLong~%#       +-- Cluster_VrelLat~%#       +-- Cluster_DynProp~%#       +-- Cluster_RCS~%#~%#  ------------------------------------------------------------------------~%std_msgs/Float64 cluster_distlong~%std_msgs/Float64 cluster_distlat~%std_msgs/Float64 cluster_vrellong~%std_msgs/Float64 cluster_vrellat~%std_msgs/Int32   cluster_dynprop~%std_msgs/Float64 cluster_rcs~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: radar_conti/ClusterQuality~%#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_2_Quality~%#  Id:         0x702~%#  Length:     5 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Cluster_DistLong_rms~%#           +---+---+---+---+---+---+---+---+~%#     B   2 |------x|<-----------------x|<--|~%#     y     +---+---+---+---+---+---+---+---+~%#     t           |                   +-- Cluster_VrelLong_rms~%#     e           +-- Cluster_DistLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         3 |--------------x|   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                         |               +-- Cluster_PdH0~%#                         +-- Cluster_VrelLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         4 |<-----------------x|<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                             |           +-- Cluster_AmbigState~%#                             +-- Cluster_InvalidState~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_ID~%#       +-- Cluster_DistLong_rms~%#       +-- Cluster_DistLat_rms~%#       +-- Cluster_VrelLong_rms~%#       +-- Cluster_VrelLat_rms~%#       +-- Cluster_PdH0~%#       +-- Cluster_InvalidState~%#       +-- Cluster_AmbigState~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 cluster_distlong_rms~%std_msgs/Float64 cluster_distlat_rms~%std_msgs/Float64 cluster_vrellong_rms~%std_msgs/Float64 cluster_vrellat_rms~%std_msgs/String cluster_pdh0~%std_msgs/String cluster_invalidstate~%std_msgs/String cluster_ambigstate~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cluster)))
  "Returns full string definition for message of type 'Cluster"
  (cl:format cl:nil "std_msgs/Int32 cluster_id~%ClusterGeneral cluster_general~%ClusterQuality cluster_quality~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: radar_conti/ClusterGeneral~%#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_1_General~%#  Id:         0x701~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------------------x|   |<------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Cluster_DistLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |------------------------------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                                   +-- Cluster_DistLat~%#     t     +---+---+---+---+---+---+---+---+~%#     e   4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|<----------------------|~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Cluster_VrelLong~%#           +---+---+---+---+---+---+---+---+~%#         6 |----------x|   |   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                     |                   +-- Cluster_DynProp~%#                     +-- Cluster_VrelLat~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_RCS~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_ID~%#       +-- Cluster_DistLong~%#       +-- Cluster_DistLat~%#       +-- Cluster_VrelLong~%#       +-- Cluster_VrelLat~%#       +-- Cluster_DynProp~%#       +-- Cluster_RCS~%#~%#  ------------------------------------------------------------------------~%std_msgs/Float64 cluster_distlong~%std_msgs/Float64 cluster_distlat~%std_msgs/Float64 cluster_vrellong~%std_msgs/Float64 cluster_vrellat~%std_msgs/Int32   cluster_dynprop~%std_msgs/Float64 cluster_rcs~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: radar_conti/ClusterQuality~%#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_2_Quality~%#  Id:         0x702~%#  Length:     5 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Cluster_DistLong_rms~%#           +---+---+---+---+---+---+---+---+~%#     B   2 |------x|<-----------------x|<--|~%#     y     +---+---+---+---+---+---+---+---+~%#     t           |                   +-- Cluster_VrelLong_rms~%#     e           +-- Cluster_DistLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         3 |--------------x|   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                         |               +-- Cluster_PdH0~%#                         +-- Cluster_VrelLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         4 |<-----------------x|<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                             |           +-- Cluster_AmbigState~%#                             +-- Cluster_InvalidState~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_ID~%#       +-- Cluster_DistLong_rms~%#       +-- Cluster_DistLat_rms~%#       +-- Cluster_VrelLong_rms~%#       +-- Cluster_VrelLat_rms~%#       +-- Cluster_PdH0~%#       +-- Cluster_InvalidState~%#       +-- Cluster_AmbigState~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 cluster_distlong_rms~%std_msgs/Float64 cluster_distlat_rms~%std_msgs/Float64 cluster_vrellong_rms~%std_msgs/Float64 cluster_vrellat_rms~%std_msgs/String cluster_pdh0~%std_msgs/String cluster_invalidstate~%std_msgs/String cluster_ambigstate~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cluster>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_general))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_quality))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cluster>))
  "Converts a ROS message object to a list"
  (cl:list 'Cluster
    (cl:cons ':cluster_id (cluster_id msg))
    (cl:cons ':cluster_general (cluster_general msg))
    (cl:cons ':cluster_quality (cluster_quality msg))
))
