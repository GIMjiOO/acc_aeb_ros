; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude Object.msg.html

(cl:defclass <Object> (roslisp-msg-protocol:ros-message)
  ((obj_id
    :reader obj_id
    :initarg :obj_id
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (object_general
    :reader object_general
    :initarg :object_general
    :type radar_conti-msg:ObjectGeneral
    :initform (cl:make-instance 'radar_conti-msg:ObjectGeneral))
   (object_extended
    :reader object_extended
    :initarg :object_extended
    :type radar_conti-msg:ObjectExtended
    :initform (cl:make-instance 'radar_conti-msg:ObjectExtended))
   (object_quality
    :reader object_quality
    :initarg :object_quality
    :type radar_conti-msg:ObjectQuality
    :initform (cl:make-instance 'radar_conti-msg:ObjectQuality)))
)

(cl:defclass Object (<Object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<Object> is deprecated: use radar_conti-msg:Object instead.")))

(cl:ensure-generic-function 'obj_id-val :lambda-list '(m))
(cl:defmethod obj_id-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_id-val is deprecated.  Use radar_conti-msg:obj_id instead.")
  (obj_id m))

(cl:ensure-generic-function 'object_general-val :lambda-list '(m))
(cl:defmethod object_general-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:object_general-val is deprecated.  Use radar_conti-msg:object_general instead.")
  (object_general m))

(cl:ensure-generic-function 'object_extended-val :lambda-list '(m))
(cl:defmethod object_extended-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:object_extended-val is deprecated.  Use radar_conti-msg:object_extended instead.")
  (object_extended m))

(cl:ensure-generic-function 'object_quality-val :lambda-list '(m))
(cl:defmethod object_quality-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:object_quality-val is deprecated.  Use radar_conti-msg:object_quality instead.")
  (object_quality m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Object>) ostream)
  "Serializes a message object of type '<Object>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_general) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_extended) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_quality) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Object>) istream)
  "Deserializes a message object of type '<Object>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_general) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_extended) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_quality) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Object>)))
  "Returns string type for a message object of type '<Object>"
  "radar_conti/Object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object)))
  "Returns string type for a message object of type 'Object"
  "radar_conti/Object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Object>)))
  "Returns md5sum for a message object of type '<Object>"
  "a7779c5b6537b3dc9690537349901eeb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Object)))
  "Returns md5sum for a message object of type 'Object"
  "a7779c5b6537b3dc9690537349901eeb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Object>)))
  "Returns full string definition for message of type '<Object>"
  (cl:format cl:nil "std_msgs/Int32 obj_id~%ObjectGeneral object_general~%ObjectExtended object_extended~%ObjectQuality object_quality~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: radar_conti/ObjectGeneral~%#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_1_General~%#  Id:         0x60b~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Obj_DistLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |------------------------------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                                   +-- Obj_DistLat~%#     t     +---+---+---+---+---+---+---+---+~%#     e   4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|<----------------------|~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Obj_VrelLong~%#           +---+---+---+---+---+---+---+---+~%#         6 |----------x|   |   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                     |                   +-- Obj_DynProp~%#                     +-- Obj_VrelLat~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_RCS~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_ID~%#       +-- Obj_DistLong~%#       +-- Obj_DistLat~%#       +-- Obj_VrelLong~%#       +-- Obj_VrelLat~%#       +-- Obj_DynProp~%#       +-- Obj_RCS~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 obj_distlong~%std_msgs/Float64 obj_distlat~%std_msgs/Float64 obj_vrellong~%std_msgs/Float64 obj_vrellat~%std_msgs/String obj_dynprop~%std_msgs/Float64 obj_rcs~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: radar_conti/ObjectExtended~%#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_3_Extended~%#  Id:         0x60d~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |----------x|<------------------|~%#           +---+---+---+---+---+---+---+---+~%#                     +-- Obj_ArelLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |--------------x|   |<---------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                   |               +-- Obj_Class~%#     t                   +-- Obj_ArelLat~%#     e     +---+---+---+---+---+---+---+---+~%#         4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|   |   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Obj_OrientationAngle~%#           +---+---+---+---+---+---+---+---+~%#         6 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_Length~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_Width~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_ID~%#       +-- Obj_ArelLong~%#       +-- Obj_ArelLat~%#       +-- Obj_Class~%#       +-- Obj_OrientationAngle~%#       +-- Obj_Length~%#       +-- Obj_Width~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 obj_arellong~%std_msgs/Float64 obj_arellat~%std_msgs/Int32 obj_class~%std_msgs/Float64 obj_orientationangle~%std_msgs/Float64 obj_length~%std_msgs/Float64 obj_width~%================================================================================~%MSG: radar_conti/ObjectQuality~%#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_2_Quality~%#  Id:         0x60c~%#  Length:     7 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Obj_DistLong_rms~%#           +---+---+---+---+---+---+---+---+~%#         2 |------x|<-----------------x|<--|~%#           +---+---+---+---+---+---+---+---+~%#                 |                   +-- Obj_VrelLong_rms~%#                 +-- Obj_DistLat_rms~%#     B     +---+---+---+---+---+---+---+---+~%#     y   3 |--------------x|<--------------|~%#     t     +---+---+---+---+---+---+---+---+~%#     e                   +-- Obj_VrelLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         4 |--x|<-----------------x|<------|~%#           +---+---+---+---+---+---+---+---+~%#             |                   +-- Obj_ArelLat_rms~%#             +-- Obj_ArelLong_rms~%#           +---+---+---+---+---+---+---+---+~%#         5 |----------x|   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                     +-- Obj_Orientation_rms~%#           +---+---+---+---+---+---+---+---+~%#         6 |<---------x|<---------x|   |   |~%#           +---+---+---+---+---+---+---+---+~%#                     |           +-- Obj_MeasState~%#                     +-- Obj_ProbOfExist~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_ID~%#       +-- Obj_DistLong_rms~%#       +-- Obj_DistLat_rms~%#       +-- Obj_VrelLong_rms~%#       +-- Obj_VrelLat_rms~%#       +-- Obj_ArelLong_rms~%#       +-- Obj_ArelLat_rms~%#       +-- Obj_Orientation_rms~%#       +-- Obj_ProbOfExist~%#       +-- Obj_MeasState~%#~%#  ------------------------------------------------------------------------~%std_msgs/Float64 obj_distlong_rms~%std_msgs/Float64 obj_distlat_rms~%std_msgs/Float64 obj_vrellong_rms~%std_msgs/Float64 obj_vrellat_rms~%std_msgs/Float64 obj_arellong_rms~%std_msgs/Float64 obj_arellat_rms~%std_msgs/Float64 obj_orientation_rms~%std_msgs/Float64 obj_probofexist~%std_msgs/String  obj_measstate~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Object)))
  "Returns full string definition for message of type 'Object"
  (cl:format cl:nil "std_msgs/Int32 obj_id~%ObjectGeneral object_general~%ObjectExtended object_extended~%ObjectQuality object_quality~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: radar_conti/ObjectGeneral~%#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_1_General~%#  Id:         0x60b~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Obj_DistLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |------------------------------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                                   +-- Obj_DistLat~%#     t     +---+---+---+---+---+---+---+---+~%#     e   4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|<----------------------|~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Obj_VrelLong~%#           +---+---+---+---+---+---+---+---+~%#         6 |----------x|   |   |<---------x|~%#           +---+---+---+---+---+---+---+---+~%#                     |                   +-- Obj_DynProp~%#                     +-- Obj_VrelLat~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_RCS~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_ID~%#       +-- Obj_DistLong~%#       +-- Obj_DistLat~%#       +-- Obj_VrelLong~%#       +-- Obj_VrelLat~%#       +-- Obj_DynProp~%#       +-- Obj_RCS~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 obj_distlong~%std_msgs/Float64 obj_distlat~%std_msgs/Float64 obj_vrellong~%std_msgs/Float64 obj_vrellat~%std_msgs/String obj_dynprop~%std_msgs/Float64 obj_rcs~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: radar_conti/ObjectExtended~%#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_3_Extended~%#  Id:         0x60d~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |----------x|<------------------|~%#           +---+---+---+---+---+---+---+---+~%#                     +-- Obj_ArelLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |--------------x|   |<---------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                   |               +-- Obj_Class~%#     t                   +-- Obj_ArelLat~%#     e     +---+---+---+---+---+---+---+---+~%#         4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|   |   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Obj_OrientationAngle~%#           +---+---+---+---+---+---+---+---+~%#         6 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_Length~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_Width~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_ID~%#       +-- Obj_ArelLong~%#       +-- Obj_ArelLat~%#       +-- Obj_Class~%#       +-- Obj_OrientationAngle~%#       +-- Obj_Length~%#       +-- Obj_Width~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 obj_arellong~%std_msgs/Float64 obj_arellat~%std_msgs/Int32 obj_class~%std_msgs/Float64 obj_orientationangle~%std_msgs/Float64 obj_length~%std_msgs/Float64 obj_width~%================================================================================~%MSG: radar_conti/ObjectQuality~%#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_2_Quality~%#  Id:         0x60c~%#  Length:     7 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Obj_DistLong_rms~%#           +---+---+---+---+---+---+---+---+~%#         2 |------x|<-----------------x|<--|~%#           +---+---+---+---+---+---+---+---+~%#                 |                   +-- Obj_VrelLong_rms~%#                 +-- Obj_DistLat_rms~%#     B     +---+---+---+---+---+---+---+---+~%#     y   3 |--------------x|<--------------|~%#     t     +---+---+---+---+---+---+---+---+~%#     e                   +-- Obj_VrelLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         4 |--x|<-----------------x|<------|~%#           +---+---+---+---+---+---+---+---+~%#             |                   +-- Obj_ArelLat_rms~%#             +-- Obj_ArelLong_rms~%#           +---+---+---+---+---+---+---+---+~%#         5 |----------x|   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                     +-- Obj_Orientation_rms~%#           +---+---+---+---+---+---+---+---+~%#         6 |<---------x|<---------x|   |   |~%#           +---+---+---+---+---+---+---+---+~%#                     |           +-- Obj_MeasState~%#                     +-- Obj_ProbOfExist~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_ID~%#       +-- Obj_DistLong_rms~%#       +-- Obj_DistLat_rms~%#       +-- Obj_VrelLong_rms~%#       +-- Obj_VrelLat_rms~%#       +-- Obj_ArelLong_rms~%#       +-- Obj_ArelLat_rms~%#       +-- Obj_Orientation_rms~%#       +-- Obj_ProbOfExist~%#       +-- Obj_MeasState~%#~%#  ------------------------------------------------------------------------~%std_msgs/Float64 obj_distlong_rms~%std_msgs/Float64 obj_distlat_rms~%std_msgs/Float64 obj_vrellong_rms~%std_msgs/Float64 obj_vrellat_rms~%std_msgs/Float64 obj_arellong_rms~%std_msgs/Float64 obj_arellat_rms~%std_msgs/Float64 obj_orientation_rms~%std_msgs/Float64 obj_probofexist~%std_msgs/String  obj_measstate~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Object>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_general))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_extended))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_quality))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Object>))
  "Converts a ROS message object to a list"
  (cl:list 'Object
    (cl:cons ':obj_id (obj_id msg))
    (cl:cons ':object_general (object_general msg))
    (cl:cons ':object_extended (object_extended msg))
    (cl:cons ':object_quality (object_quality msg))
))
