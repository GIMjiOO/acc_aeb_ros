; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude ObjectGeneral.msg.html

(cl:defclass <ObjectGeneral> (roslisp-msg-protocol:ros-message)
  ((obj_distlong
    :reader obj_distlong
    :initarg :obj_distlong
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_distlat
    :reader obj_distlat
    :initarg :obj_distlat
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_vrellong
    :reader obj_vrellong
    :initarg :obj_vrellong
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_vrellat
    :reader obj_vrellat
    :initarg :obj_vrellat
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_dynprop
    :reader obj_dynprop
    :initarg :obj_dynprop
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (obj_rcs
    :reader obj_rcs
    :initarg :obj_rcs
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass ObjectGeneral (<ObjectGeneral>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectGeneral>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectGeneral)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<ObjectGeneral> is deprecated: use radar_conti-msg:ObjectGeneral instead.")))

(cl:ensure-generic-function 'obj_distlong-val :lambda-list '(m))
(cl:defmethod obj_distlong-val ((m <ObjectGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_distlong-val is deprecated.  Use radar_conti-msg:obj_distlong instead.")
  (obj_distlong m))

(cl:ensure-generic-function 'obj_distlat-val :lambda-list '(m))
(cl:defmethod obj_distlat-val ((m <ObjectGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_distlat-val is deprecated.  Use radar_conti-msg:obj_distlat instead.")
  (obj_distlat m))

(cl:ensure-generic-function 'obj_vrellong-val :lambda-list '(m))
(cl:defmethod obj_vrellong-val ((m <ObjectGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_vrellong-val is deprecated.  Use radar_conti-msg:obj_vrellong instead.")
  (obj_vrellong m))

(cl:ensure-generic-function 'obj_vrellat-val :lambda-list '(m))
(cl:defmethod obj_vrellat-val ((m <ObjectGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_vrellat-val is deprecated.  Use radar_conti-msg:obj_vrellat instead.")
  (obj_vrellat m))

(cl:ensure-generic-function 'obj_dynprop-val :lambda-list '(m))
(cl:defmethod obj_dynprop-val ((m <ObjectGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_dynprop-val is deprecated.  Use radar_conti-msg:obj_dynprop instead.")
  (obj_dynprop m))

(cl:ensure-generic-function 'obj_rcs-val :lambda-list '(m))
(cl:defmethod obj_rcs-val ((m <ObjectGeneral>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_rcs-val is deprecated.  Use radar_conti-msg:obj_rcs instead.")
  (obj_rcs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectGeneral>) ostream)
  "Serializes a message object of type '<ObjectGeneral>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_distlong) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_distlat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_vrellong) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_vrellat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_dynprop) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_rcs) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectGeneral>) istream)
  "Deserializes a message object of type '<ObjectGeneral>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_distlong) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_distlat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_vrellong) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_vrellat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_dynprop) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_rcs) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectGeneral>)))
  "Returns string type for a message object of type '<ObjectGeneral>"
  "radar_conti/ObjectGeneral")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectGeneral)))
  "Returns string type for a message object of type 'ObjectGeneral"
  "radar_conti/ObjectGeneral")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectGeneral>)))
  "Returns md5sum for a message object of type '<ObjectGeneral>"
  "7c5a688592b37e839ffa103089e32ef1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectGeneral)))
  "Returns md5sum for a message object of type 'ObjectGeneral"
  "7c5a688592b37e839ffa103089e32ef1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectGeneral>)))
  "Returns full string definition for message of type '<ObjectGeneral>"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_1_General~%#  Id:         0x60b~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Obj_DistLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |------------------------------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                                   +-- Obj_DistLat~%#     t     +---+---+---+---+---+---+---+---+~%#     e   4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|<----------------------|~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Obj_VrelLong~%#           +---+---+---+---+---+---+---+---+~%#         6 |----------x|   |   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                     |                   +-- Obj_DynProp~%#                     +-- Obj_VrelLat~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_RCS~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_ID~%#       +-- Obj_DistLong~%#       +-- Obj_DistLat~%#       +-- Obj_VrelLong~%#       +-- Obj_VrelLat~%#       +-- Obj_DynProp~%#       +-- Obj_RCS~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 obj_distlong~%std_msgs/Float64 obj_distlat~%std_msgs/Float64 obj_vrellong~%std_msgs/Float64 obj_vrellat~%std_msgs/String obj_dynprop~%std_msgs/Float64 obj_rcs~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectGeneral)))
  "Returns full string definition for message of type 'ObjectGeneral"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_1_General~%#  Id:         0x60b~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Obj_DistLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |------------------------------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                                   +-- Obj_DistLat~%#     t     +---+---+---+---+---+---+---+---+~%#     e   4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|<----------------------|~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Obj_VrelLong~%#           +---+---+---+---+---+---+---+---+~%#         6 |----------x|   |   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                     |                   +-- Obj_DynProp~%#                     +-- Obj_VrelLat~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_RCS~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_ID~%#       +-- Obj_DistLong~%#       +-- Obj_DistLat~%#       +-- Obj_VrelLong~%#       +-- Obj_VrelLat~%#       +-- Obj_DynProp~%#       +-- Obj_RCS~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 obj_distlong~%std_msgs/Float64 obj_distlat~%std_msgs/Float64 obj_vrellong~%std_msgs/Float64 obj_vrellat~%std_msgs/String obj_dynprop~%std_msgs/Float64 obj_rcs~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectGeneral>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_distlong))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_distlat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_vrellong))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_vrellat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_dynprop))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_rcs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectGeneral>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectGeneral
    (cl:cons ':obj_distlong (obj_distlong msg))
    (cl:cons ':obj_distlat (obj_distlat msg))
    (cl:cons ':obj_vrellong (obj_vrellong msg))
    (cl:cons ':obj_vrellat (obj_vrellat msg))
    (cl:cons ':obj_dynprop (obj_dynprop msg))
    (cl:cons ':obj_rcs (obj_rcs msg))
))
