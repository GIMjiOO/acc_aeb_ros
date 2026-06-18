; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude ClusterQuality.msg.html

(cl:defclass <ClusterQuality> (roslisp-msg-protocol:ros-message)
  ((cluster_distlong_rms
    :reader cluster_distlong_rms
    :initarg :cluster_distlong_rms
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (cluster_distlat_rms
    :reader cluster_distlat_rms
    :initarg :cluster_distlat_rms
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (cluster_vrellong_rms
    :reader cluster_vrellong_rms
    :initarg :cluster_vrellong_rms
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (cluster_vrellat_rms
    :reader cluster_vrellat_rms
    :initarg :cluster_vrellat_rms
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (cluster_pdh0
    :reader cluster_pdh0
    :initarg :cluster_pdh0
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (cluster_invalidstate
    :reader cluster_invalidstate
    :initarg :cluster_invalidstate
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (cluster_ambigstate
    :reader cluster_ambigstate
    :initarg :cluster_ambigstate
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ClusterQuality (<ClusterQuality>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClusterQuality>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClusterQuality)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<ClusterQuality> is deprecated: use radar_conti-msg:ClusterQuality instead.")))

(cl:ensure-generic-function 'cluster_distlong_rms-val :lambda-list '(m))
(cl:defmethod cluster_distlong_rms-val ((m <ClusterQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_distlong_rms-val is deprecated.  Use radar_conti-msg:cluster_distlong_rms instead.")
  (cluster_distlong_rms m))

(cl:ensure-generic-function 'cluster_distlat_rms-val :lambda-list '(m))
(cl:defmethod cluster_distlat_rms-val ((m <ClusterQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_distlat_rms-val is deprecated.  Use radar_conti-msg:cluster_distlat_rms instead.")
  (cluster_distlat_rms m))

(cl:ensure-generic-function 'cluster_vrellong_rms-val :lambda-list '(m))
(cl:defmethod cluster_vrellong_rms-val ((m <ClusterQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_vrellong_rms-val is deprecated.  Use radar_conti-msg:cluster_vrellong_rms instead.")
  (cluster_vrellong_rms m))

(cl:ensure-generic-function 'cluster_vrellat_rms-val :lambda-list '(m))
(cl:defmethod cluster_vrellat_rms-val ((m <ClusterQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_vrellat_rms-val is deprecated.  Use radar_conti-msg:cluster_vrellat_rms instead.")
  (cluster_vrellat_rms m))

(cl:ensure-generic-function 'cluster_pdh0-val :lambda-list '(m))
(cl:defmethod cluster_pdh0-val ((m <ClusterQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_pdh0-val is deprecated.  Use radar_conti-msg:cluster_pdh0 instead.")
  (cluster_pdh0 m))

(cl:ensure-generic-function 'cluster_invalidstate-val :lambda-list '(m))
(cl:defmethod cluster_invalidstate-val ((m <ClusterQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_invalidstate-val is deprecated.  Use radar_conti-msg:cluster_invalidstate instead.")
  (cluster_invalidstate m))

(cl:ensure-generic-function 'cluster_ambigstate-val :lambda-list '(m))
(cl:defmethod cluster_ambigstate-val ((m <ClusterQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:cluster_ambigstate-val is deprecated.  Use radar_conti-msg:cluster_ambigstate instead.")
  (cluster_ambigstate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClusterQuality>) ostream)
  "Serializes a message object of type '<ClusterQuality>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_distlong_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_distlat_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_vrellong_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_vrellat_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_pdh0) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_invalidstate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cluster_ambigstate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClusterQuality>) istream)
  "Deserializes a message object of type '<ClusterQuality>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_distlong_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_distlat_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_vrellong_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_vrellat_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_pdh0) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_invalidstate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cluster_ambigstate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClusterQuality>)))
  "Returns string type for a message object of type '<ClusterQuality>"
  "radar_conti/ClusterQuality")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClusterQuality)))
  "Returns string type for a message object of type 'ClusterQuality"
  "radar_conti/ClusterQuality")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClusterQuality>)))
  "Returns md5sum for a message object of type '<ClusterQuality>"
  "e02012645da0efa0adaf8bcdc5630918")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClusterQuality)))
  "Returns md5sum for a message object of type 'ClusterQuality"
  "e02012645da0efa0adaf8bcdc5630918")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClusterQuality>)))
  "Returns full string definition for message of type '<ClusterQuality>"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_2_Quality~%#  Id:         0x702~%#  Length:     5 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Cluster_DistLong_rms~%#           +---+---+---+---+---+---+---+---+~%#     B   2 |------x|<-----------------x|<--|~%#     y     +---+---+---+---+---+---+---+---+~%#     t           |                   +-- Cluster_VrelLong_rms~%#     e           +-- Cluster_DistLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         3 |--------------x|   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                         |               +-- Cluster_PdH0~%#                         +-- Cluster_VrelLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         4 |<-----------------x|<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                             |           +-- Cluster_AmbigState~%#                             +-- Cluster_InvalidState~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_ID~%#       +-- Cluster_DistLong_rms~%#       +-- Cluster_DistLat_rms~%#       +-- Cluster_VrelLong_rms~%#       +-- Cluster_VrelLat_rms~%#       +-- Cluster_PdH0~%#       +-- Cluster_InvalidState~%#       +-- Cluster_AmbigState~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 cluster_distlong_rms~%std_msgs/Float64 cluster_distlat_rms~%std_msgs/Float64 cluster_vrellong_rms~%std_msgs/Float64 cluster_vrellat_rms~%std_msgs/String cluster_pdh0~%std_msgs/String cluster_invalidstate~%std_msgs/String cluster_ambigstate~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClusterQuality)))
  "Returns full string definition for message of type 'ClusterQuality"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Cluster_2_Quality~%#  Id:         0x702~%#  Length:     5 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Cluster_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Cluster_DistLong_rms~%#           +---+---+---+---+---+---+---+---+~%#     B   2 |------x|<-----------------x|<--|~%#     y     +---+---+---+---+---+---+---+---+~%#     t           |                   +-- Cluster_VrelLong_rms~%#     e           +-- Cluster_DistLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         3 |--------------x|   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                         |               +-- Cluster_PdH0~%#                         +-- Cluster_VrelLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         4 |<-----------------x|<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                             |           +-- Cluster_AmbigState~%#                             +-- Cluster_InvalidState~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Cluster_ID~%#       +-- Cluster_DistLong_rms~%#       +-- Cluster_DistLat_rms~%#       +-- Cluster_VrelLong_rms~%#       +-- Cluster_VrelLat_rms~%#       +-- Cluster_PdH0~%#       +-- Cluster_InvalidState~%#       +-- Cluster_AmbigState~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 cluster_distlong_rms~%std_msgs/Float64 cluster_distlat_rms~%std_msgs/Float64 cluster_vrellong_rms~%std_msgs/Float64 cluster_vrellat_rms~%std_msgs/String cluster_pdh0~%std_msgs/String cluster_invalidstate~%std_msgs/String cluster_ambigstate~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClusterQuality>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_distlong_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_distlat_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_vrellong_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_vrellat_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_pdh0))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_invalidstate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cluster_ambigstate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClusterQuality>))
  "Converts a ROS message object to a list"
  (cl:list 'ClusterQuality
    (cl:cons ':cluster_distlong_rms (cluster_distlong_rms msg))
    (cl:cons ':cluster_distlat_rms (cluster_distlat_rms msg))
    (cl:cons ':cluster_vrellong_rms (cluster_vrellong_rms msg))
    (cl:cons ':cluster_vrellat_rms (cluster_vrellat_rms msg))
    (cl:cons ':cluster_pdh0 (cluster_pdh0 msg))
    (cl:cons ':cluster_invalidstate (cluster_invalidstate msg))
    (cl:cons ':cluster_ambigstate (cluster_ambigstate msg))
))
