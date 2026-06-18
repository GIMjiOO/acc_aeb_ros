; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude ObjectStatus.msg.html

(cl:defclass <ObjectStatus> (roslisp-msg-protocol:ros-message)
  ((obj_nofobjects
    :reader obj_nofobjects
    :initarg :obj_nofobjects
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (obj_meascounter
    :reader obj_meascounter
    :initarg :obj_meascounter
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (obj_interfaceversion
    :reader obj_interfaceversion
    :initarg :obj_interfaceversion
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass ObjectStatus (<ObjectStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<ObjectStatus> is deprecated: use radar_conti-msg:ObjectStatus instead.")))

(cl:ensure-generic-function 'obj_nofobjects-val :lambda-list '(m))
(cl:defmethod obj_nofobjects-val ((m <ObjectStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_nofobjects-val is deprecated.  Use radar_conti-msg:obj_nofobjects instead.")
  (obj_nofobjects m))

(cl:ensure-generic-function 'obj_meascounter-val :lambda-list '(m))
(cl:defmethod obj_meascounter-val ((m <ObjectStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_meascounter-val is deprecated.  Use radar_conti-msg:obj_meascounter instead.")
  (obj_meascounter m))

(cl:ensure-generic-function 'obj_interfaceversion-val :lambda-list '(m))
(cl:defmethod obj_interfaceversion-val ((m <ObjectStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_interfaceversion-val is deprecated.  Use radar_conti-msg:obj_interfaceversion instead.")
  (obj_interfaceversion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectStatus>) ostream)
  "Serializes a message object of type '<ObjectStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_nofobjects) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_meascounter) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_interfaceversion) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectStatus>) istream)
  "Deserializes a message object of type '<ObjectStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_nofobjects) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_meascounter) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_interfaceversion) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectStatus>)))
  "Returns string type for a message object of type '<ObjectStatus>"
  "radar_conti/ObjectStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectStatus)))
  "Returns string type for a message object of type 'ObjectStatus"
  "radar_conti/ObjectStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectStatus>)))
  "Returns md5sum for a message object of type '<ObjectStatus>"
  "9bce59d00818d64eb8f4cd2b557dee63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectStatus)))
  "Returns md5sum for a message object of type 'ObjectStatus"
  "9bce59d00818d64eb8f4cd2b557dee63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectStatus>)))
  "Returns full string definition for message of type '<ObjectStatus>"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_0_Status~%#  Id:         0x60a~%#  Length:     4 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_NofObjects~%#           +---+---+---+---+---+---+---+---+~%#     B   1 |<------------------------------|~%#     y     +---+---+---+---+---+---+---+---+~%#     t   2 |------------------------------x|~%#     e     +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_MeasCounter~%#           +---+---+---+---+---+---+---+---+~%#         3 |<-------------x|   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                         +-- Obj_InterfaceVersion~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_NofObjects~%#       +-- Obj_MeasCounter~%#       +-- Obj_InterfaceVersion~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Int32 obj_nofobjects~%std_msgs/Int32 obj_meascounter~%std_msgs/Int32 obj_interfaceversion~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectStatus)))
  "Returns full string definition for message of type 'ObjectStatus"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_0_Status~%#  Id:         0x60a~%#  Length:     4 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_NofObjects~%#           +---+---+---+---+---+---+---+---+~%#     B   1 |<------------------------------|~%#     y     +---+---+---+---+---+---+---+---+~%#     t   2 |------------------------------x|~%#     e     +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_MeasCounter~%#           +---+---+---+---+---+---+---+---+~%#         3 |<-------------x|   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                         +-- Obj_InterfaceVersion~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_NofObjects~%#       +-- Obj_MeasCounter~%#       +-- Obj_InterfaceVersion~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Int32 obj_nofobjects~%std_msgs/Int32 obj_meascounter~%std_msgs/Int32 obj_interfaceversion~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_nofobjects))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_meascounter))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_interfaceversion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectStatus
    (cl:cons ':obj_nofobjects (obj_nofobjects msg))
    (cl:cons ':obj_meascounter (obj_meascounter msg))
    (cl:cons ':obj_interfaceversion (obj_interfaceversion msg))
))
