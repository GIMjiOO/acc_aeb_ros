; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude ClusterStatus.msg.html

(cl:defclass <ClusterStatus> (roslisp-msg-protocol:ros-message)
  ((cluster_nofclustersnear
    :reader cluster_nofclustersnear
    :initarg :cluster_nofclustersnear
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (cluster_nofclustersfar
    :reader cluster_nofclustersfar
    :initarg :cluster_nofclustersfar
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (cluster_meascounter
    :reader cluster_meascounter
    :initarg :cluster_meascounter
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (cluster_interfaceversion
    :reader cluster_interfaceversion
    :initarg :cluster_interfaceversion
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass ClusterStatus (<ClusterStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClusterStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClusterStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<ClusterStatus> is deprecated: use radar_conti-msg:ClusterStatus instead.")))

(cl:ensure-generic-function 'cluster_nofclustersnear-val :lambda-list '(m))
(cl:defmethod cluster_nofclustersnear-val ((m <ClusterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_nofclustersnear-val is deprecated.  Use radar_conti-msg:cluster_nofclustersnear instead.")
  (cluster_nofclustersnear m))

(cl:ensure-generic-function 'cluster_nofclustersfar-val :lambda-list '(m))
(cl:defmethod cluster_nofclustersfar-val ((m <ClusterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_nofclustersfar-val is deprecated.  Use radar_conti-msg:cluster_nofclustersfar instead.")
  (cluster_nofclustersfar m))

(cl:ensure-generic-function 'cluster_meascounter-val :lambda-list '(m))
(cl:defmethod cluster_meascounter-val ((m <ClusterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_meascounter-val is deprecated.  Use radar_conti-msg:cluster_meascounter instead.")
  (cluster_meascounter m))

(cl:ensure-generic-function 'cluster_interfaceversion-val :lambda-list '(m))
(cl:defmethod cluster_interfaceversion-val ((m <ClusterStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_interfaceversion-val is deprecated.  Use radar_conti-msg:cluster_interfaceversion instead.")
  (cluster_interfaceversion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClusterStatus>) ostream)
  "Serializes a message object of type '<ClusterStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_nofclustersnear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_nofclustersfar) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_meascounter) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_interfaceversion) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClusterStatus>) istream)
  "Deserializes a message object of type '<ClusterStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_nofclustersnear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_nofclustersfar) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_meascounter) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_interfaceversion) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClusterStatus>)))
  "Returns string type for a message object of type '<ClusterStatus>"
  "radar_conti/ClusterStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterStatus)))
  "Returns string type for a message object of type 'ClusterStatus"
  "radar_conti/ClusterStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClusterStatus>)))
  "Returns md5sum for a message object of type '<ClusterStatus>"
  "9f2a6f691f628cc21b647de1bb56d9b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClusterStatus)))
  "Returns md5sum for a message object of type 'ClusterStatus"
  "9f2a6f691f628cc21b647de1bb56d9b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClusterStatus>)))
  "Returns full string definition for message of type '<ClusterStatus>"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_0_Status~%#  Id:         0x600~%#  Length:     5 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_NofClustersNear~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#     B                                   +-- Cluster_NofClustersFar~%#     y     +---+---+---+---+---+---+---+---+~%#     t   2 |<------------------------------|~%#     e     +---+---+---+---+---+---+---+---+~%#         3 |------------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_MeasCounter~%#           +---+---+---+---+---+---+---+---+~%#         4 |<-------------x|   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                         +-- Cluster_InterfaceVersion~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_NofClustersNear~%#       +-- Cluster_NofClustersFar~%#       +-- Cluster_MeasCounter~%#       +-- Cluster_InterfaceVersion~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Int32 cluster_nofclustersnear~%std_msgs/Int32 cluster_nofclustersfar~%std_msgs/Int32 cluster_meascounter~%std_msgs/Int32 cluster_interfaceversion~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClusterStatus)))
  "Returns full string definition for message of type 'ClusterStatus"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_0_Status~%#  Id:         0x600~%#  Length:     5 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_NofClustersNear~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#     B                                   +-- Cluster_NofClustersFar~%#     y     +---+---+---+---+---+---+---+---+~%#     t   2 |<------------------------------|~%#     e     +---+---+---+---+---+---+---+---+~%#         3 |------------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_MeasCounter~%#           +---+---+---+---+---+---+---+---+~%#         4 |<-------------x|   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                         +-- Cluster_InterfaceVersion~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_NofClustersNear~%#       +-- Cluster_NofClustersFar~%#       +-- Cluster_MeasCounter~%#       +-- Cluster_InterfaceVersion~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Int32 cluster_nofclustersnear~%std_msgs/Int32 cluster_nofclustersfar~%std_msgs/Int32 cluster_meascounter~%std_msgs/Int32 cluster_interfaceversion~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClusterStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_nofclustersnear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_nofclustersfar))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_meascounter))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_interfaceversion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClusterStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ClusterStatus
    (cl:cons ':cluster_nofclustersnear (cluster_nofclustersnear msg))
    (cl:cons ':cluster_nofclustersfar (cluster_nofclustersfar msg))
    (cl:cons ':cluster_meascounter (cluster_meascounter msg))
    (cl:cons ':cluster_interfaceversion (cluster_interfaceversion msg))
))
