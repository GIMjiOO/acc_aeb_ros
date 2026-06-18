; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude ClusterGeneral.msg.html

(cl:defclass <ClusterGeneral> (roslisp-msg-protocol:ros-message)
  ((cluster_distlong
    :reader cluster_distlong
    :initarg :cluster_distlong
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (cluster_distlat
    :reader cluster_distlat
    :initarg :cluster_distlat
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (cluster_vrellong
    :reader cluster_vrellong
    :initarg :cluster_vrellong
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (cluster_vrellat
    :reader cluster_vrellat
    :initarg :cluster_vrellat
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (cluster_dynprop
    :reader cluster_dynprop
    :initarg :cluster_dynprop
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (cluster_rcs
    :reader cluster_rcs
    :initarg :cluster_rcs
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass ClusterGeneral (<ClusterGeneral>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClusterGeneral>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClusterGeneral)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<ClusterGeneral> is deprecated: use radar_conti-msg:ClusterGeneral instead.")))

(cl:ensure-generic-function 'cluster_distlong-val :lambda-list '(m))
(cl:defmethod cluster_distlong-val ((m <ClusterGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_distlong-val is deprecated.  Use radar_conti-msg:cluster_distlong instead.")
  (cluster_distlong m))

(cl:ensure-generic-function 'cluster_distlat-val :lambda-list '(m))
(cl:defmethod cluster_distlat-val ((m <ClusterGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_distlat-val is deprecated.  Use radar_conti-msg:cluster_distlat instead.")
  (cluster_distlat m))

(cl:ensure-generic-function 'cluster_vrellong-val :lambda-list '(m))
(cl:defmethod cluster_vrellong-val ((m <ClusterGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_vrellong-val is deprecated.  Use radar_conti-msg:cluster_vrellong instead.")
  (cluster_vrellong m))

(cl:ensure-generic-function 'cluster_vrellat-val :lambda-list '(m))
(cl:defmethod cluster_vrellat-val ((m <ClusterGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_vrellat-val is deprecated.  Use radar_conti-msg:cluster_vrellat instead.")
  (cluster_vrellat m))

(cl:ensure-generic-function 'cluster_dynprop-val :lambda-list '(m))
(cl:defmethod cluster_dynprop-val ((m <ClusterGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_dynprop-val is deprecated.  Use radar_conti-msg:cluster_dynprop instead.")
  (cluster_dynprop m))

(cl:ensure-generic-function 'cluster_rcs-val :lambda-list '(m))
(cl:defmethod cluster_rcs-val ((m <ClusterGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_rcs-val is deprecated.  Use radar_conti-msg:cluster_rcs instead.")
  (cluster_rcs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClusterGeneral>) ostream)
  "Serializes a message object of type '<ClusterGeneral>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_distlong) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_distlat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_vrellong) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_vrellat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_dynprop) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_rcs) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClusterGeneral>) istream)
  "Deserializes a message object of type '<ClusterGeneral>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_distlong) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_distlat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_vrellong) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_vrellat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_dynprop) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_rcs) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClusterGeneral>)))
  "Returns string type for a message object of type '<ClusterGeneral>"
  "radar_conti/ClusterGeneral")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterGeneral)))
  "Returns string type for a message object of type 'ClusterGeneral"
  "radar_conti/ClusterGeneral")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClusterGeneral>)))
  "Returns md5sum for a message object of type '<ClusterGeneral>"
  "48915065ec2595ba51250ae485075a77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClusterGeneral)))
  "Returns md5sum for a message object of type 'ClusterGeneral"
  "48915065ec2595ba51250ae485075a77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClusterGeneral>)))
  "Returns full string definition for message of type '<ClusterGeneral>"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_1_General~%#  Id:         0x701~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------------------x|   |<------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Cluster_DistLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |------------------------------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                                   +-- Cluster_DistLat~%#     t     +---+---+---+---+---+---+---+---+~%#     e   4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|<----------------------|~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Cluster_VrelLong~%#           +---+---+---+---+---+---+---+---+~%#         6 |----------x|   |   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                     |                   +-- Cluster_DynProp~%#                     +-- Cluster_VrelLat~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_RCS~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_ID~%#       +-- Cluster_DistLong~%#       +-- Cluster_DistLat~%#       +-- Cluster_VrelLong~%#       +-- Cluster_VrelLat~%#       +-- Cluster_DynProp~%#       +-- Cluster_RCS~%#~%#  ------------------------------------------------------------------------~%std_msgs/Float64 cluster_distlong~%std_msgs/Float64 cluster_distlat~%std_msgs/Float64 cluster_vrellong~%std_msgs/Float64 cluster_vrellat~%std_msgs/Int32   cluster_dynprop~%std_msgs/Float64 cluster_rcs~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClusterGeneral)))
  "Returns full string definition for message of type 'ClusterGeneral"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_1_General~%#  Id:         0x701~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------------------x|   |<------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Cluster_DistLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |------------------------------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                                   +-- Cluster_DistLat~%#     t     +---+---+---+---+---+---+---+---+~%#     e   4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|<----------------------|~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Cluster_VrelLong~%#           +---+---+---+---+---+---+---+---+~%#         6 |----------x|   |   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                     |                   +-- Cluster_DynProp~%#                     +-- Cluster_VrelLat~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_RCS~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_ID~%#       +-- Cluster_DistLong~%#       +-- Cluster_DistLat~%#       +-- Cluster_VrelLong~%#       +-- Cluster_VrelLat~%#       +-- Cluster_DynProp~%#       +-- Cluster_RCS~%#~%#  ------------------------------------------------------------------------~%std_msgs/Float64 cluster_distlong~%std_msgs/Float64 cluster_distlat~%std_msgs/Float64 cluster_vrellong~%std_msgs/Float64 cluster_vrellat~%std_msgs/Int32   cluster_dynprop~%std_msgs/Float64 cluster_rcs~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClusterGeneral>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_distlong))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_distlat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_vrellong))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_vrellat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_dynprop))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_rcs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClusterGeneral>))
  "Converts a ROS message object to a list"
  (cl:list 'ClusterGeneral
    (cl:cons ':cluster_distlong (cluster_distlong msg))
    (cl:cons ':cluster_distlat (cluster_distlat msg))
    (cl:cons ':cluster_vrellong (cluster_vrellong msg))
    (cl:cons ':cluster_vrellat (cluster_vrellat msg))
    (cl:cons ':cluster_dynprop (cluster_dynprop msg))
    (cl:cons ':cluster_rcs (cluster_rcs msg))
))
