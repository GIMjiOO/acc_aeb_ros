; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude ObjectQuality.msg.html

(cl:defclass <ObjectQuality> (roslisp-msg-protocol:ros-message)
  ((obj_distlong_rms
    :reader obj_distlong_rms
    :initarg :obj_distlong_rms
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_distlat_rms
    :reader obj_distlat_rms
    :initarg :obj_distlat_rms
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_vrellong_rms
    :reader obj_vrellong_rms
    :initarg :obj_vrellong_rms
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_vrellat_rms
    :reader obj_vrellat_rms
    :initarg :obj_vrellat_rms
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_arellong_rms
    :reader obj_arellong_rms
    :initarg :obj_arellong_rms
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_arellat_rms
    :reader obj_arellat_rms
    :initarg :obj_arellat_rms
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_orientation_rms
    :reader obj_orientation_rms
    :initarg :obj_orientation_rms
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_probofexist
    :reader obj_probofexist
    :initarg :obj_probofexist
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_measstate
    :reader obj_measstate
    :initarg :obj_measstate
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ObjectQuality (<ObjectQuality>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectQuality>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectQuality)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<ObjectQuality> is deprecated: use radar_conti-msg:ObjectQuality instead.")))

(cl:ensure-generic-function 'obj_distlong_rms-val :lambda-list '(m))
(cl:defmethod obj_distlong_rms-val ((m <ObjectQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_distlong_rms-val is deprecated.  Use radar_conti-msg:obj_distlong_rms instead.")
  (obj_distlong_rms m))

(cl:ensure-generic-function 'obj_distlat_rms-val :lambda-list '(m))
(cl:defmethod obj_distlat_rms-val ((m <ObjectQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_distlat_rms-val is deprecated.  Use radar_conti-msg:obj_distlat_rms instead.")
  (obj_distlat_rms m))

(cl:ensure-generic-function 'obj_vrellong_rms-val :lambda-list '(m))
(cl:defmethod obj_vrellong_rms-val ((m <ObjectQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_vrellong_rms-val is deprecated.  Use radar_conti-msg:obj_vrellong_rms instead.")
  (obj_vrellong_rms m))

(cl:ensure-generic-function 'obj_vrellat_rms-val :lambda-list '(m))
(cl:defmethod obj_vrellat_rms-val ((m <ObjectQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_vrellat_rms-val is deprecated.  Use radar_conti-msg:obj_vrellat_rms instead.")
  (obj_vrellat_rms m))

(cl:ensure-generic-function 'obj_arellong_rms-val :lambda-list '(m))
(cl:defmethod obj_arellong_rms-val ((m <ObjectQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_arellong_rms-val is deprecated.  Use radar_conti-msg:obj_arellong_rms instead.")
  (obj_arellong_rms m))

(cl:ensure-generic-function 'obj_arellat_rms-val :lambda-list '(m))
(cl:defmethod obj_arellat_rms-val ((m <ObjectQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_arellat_rms-val is deprecated.  Use radar_conti-msg:obj_arellat_rms instead.")
  (obj_arellat_rms m))

(cl:ensure-generic-function 'obj_orientation_rms-val :lambda-list '(m))
(cl:defmethod obj_orientation_rms-val ((m <ObjectQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_orientation_rms-val is deprecated.  Use radar_conti-msg:obj_orientation_rms instead.")
  (obj_orientation_rms m))

(cl:ensure-generic-function 'obj_probofexist-val :lambda-list '(m))
(cl:defmethod obj_probofexist-val ((m <ObjectQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_probofexist-val is deprecated.  Use radar_conti-msg:obj_probofexist instead.")
  (obj_probofexist m))

(cl:ensure-generic-function 'obj_measstate-val :lambda-list '(m))
(cl:defmethod obj_measstate-val ((m <ObjectQuality>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_measstate-val is deprecated.  Use radar_conti-msg:obj_measstate instead.")
  (obj_measstate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectQuality>) ostream)
  "Serializes a message object of type '<ObjectQuality>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_distlong_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_distlat_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_vrellong_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_vrellat_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_arellong_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_arellat_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_orientation_rms) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_probofexist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_measstate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectQuality>) istream)
  "Deserializes a message object of type '<ObjectQuality>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_distlong_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_distlat_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_vrellong_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_vrellat_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_arellong_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_arellat_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_orientation_rms) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_probofexist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_measstate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectQuality>)))
  "Returns string type for a message object of type '<ObjectQuality>"
  "radar_conti/ObjectQuality")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectQuality)))
  "Returns string type for a message object of type 'ObjectQuality"
  "radar_conti/ObjectQuality")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectQuality>)))
  "Returns md5sum for a message object of type '<ObjectQuality>"
  "5d06c6b873d996c1cd9ff22fc03970e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectQuality)))
  "Returns md5sum for a message object of type 'ObjectQuality"
  "5d06c6b873d996c1cd9ff22fc03970e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectQuality>)))
  "Returns full string definition for message of type '<ObjectQuality>"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_2_Quality~%#  Id:         0x60c~%#  Length:     7 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Obj_DistLong_rms~%#           +---+---+---+---+---+---+---+---+~%#         2 |------x|<-----------------x|<--|~%#           +---+---+---+---+---+---+---+---+~%#                 |                   +-- Obj_VrelLong_rms~%#                 +-- Obj_DistLat_rms~%#     B     +---+---+---+---+---+---+---+---+~%#     y   3 |--------------x|<--------------|~%#     t     +---+---+---+---+---+---+---+---+~%#     e                   +-- Obj_VrelLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         4 |--x|<-----------------x|<------|~%#           +---+---+---+---+---+---+---+---+~%#             |                   +-- Obj_ArelLat_rms~%#             +-- Obj_ArelLong_rms~%#           +---+---+---+---+---+---+---+---+~%#         5 |----------x|   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                     +-- Obj_Orientation_rms~%#           +---+---+---+---+---+---+---+---+~%#         6 |<---------x|<---------x|   |   |~%#           +---+---+---+---+---+---+---+---+~%#                     |           +-- Obj_MeasState~%#                     +-- Obj_ProbOfExist~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_ID~%#       +-- Obj_DistLong_rms~%#       +-- Obj_DistLat_rms~%#       +-- Obj_VrelLong_rms~%#       +-- Obj_VrelLat_rms~%#       +-- Obj_ArelLong_rms~%#       +-- Obj_ArelLat_rms~%#       +-- Obj_Orientation_rms~%#       +-- Obj_ProbOfExist~%#       +-- Obj_MeasState~%#~%#  ------------------------------------------------------------------------~%std_msgs/Float64 obj_distlong_rms~%std_msgs/Float64 obj_distlat_rms~%std_msgs/Float64 obj_vrellong_rms~%std_msgs/Float64 obj_vrellat_rms~%std_msgs/Float64 obj_arellong_rms~%std_msgs/Float64 obj_arellat_rms~%std_msgs/Float64 obj_orientation_rms~%std_msgs/Float64 obj_probofexist~%std_msgs/String  obj_measstate~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectQuality)))
  "Returns full string definition for message of type 'ObjectQuality"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_2_Quality~%#  Id:         0x60c~%#  Length:     7 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------x|<----------|~%#           +---+---+---+---+---+---+---+---+~%#                             +-- Obj_DistLong_rms~%#           +---+---+---+---+---+---+---+---+~%#         2 |------x|<-----------------x|<--|~%#           +---+---+---+---+---+---+---+---+~%#                 |                   +-- Obj_VrelLong_rms~%#                 +-- Obj_DistLat_rms~%#     B     +---+---+---+---+---+---+---+---+~%#     y   3 |--------------x|<--------------|~%#     t     +---+---+---+---+---+---+---+---+~%#     e                   +-- Obj_VrelLat_rms~%#           +---+---+---+---+---+---+---+---+~%#         4 |--x|<-----------------x|<------|~%#           +---+---+---+---+---+---+---+---+~%#             |                   +-- Obj_ArelLat_rms~%#             +-- Obj_ArelLong_rms~%#           +---+---+---+---+---+---+---+---+~%#         5 |----------x|   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                     +-- Obj_Orientation_rms~%#           +---+---+---+---+---+---+---+---+~%#         6 |<---------x|<---------x|   |   |~%#           +---+---+---+---+---+---+---+---+~%#                     |           +-- Obj_MeasState~%#                     +-- Obj_ProbOfExist~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_ID~%#       +-- Obj_DistLong_rms~%#       +-- Obj_DistLat_rms~%#       +-- Obj_VrelLong_rms~%#       +-- Obj_VrelLat_rms~%#       +-- Obj_ArelLong_rms~%#       +-- Obj_ArelLat_rms~%#       +-- Obj_Orientation_rms~%#       +-- Obj_ProbOfExist~%#       +-- Obj_MeasState~%#~%#  ------------------------------------------------------------------------~%std_msgs/Float64 obj_distlong_rms~%std_msgs/Float64 obj_distlat_rms~%std_msgs/Float64 obj_vrellong_rms~%std_msgs/Float64 obj_vrellat_rms~%std_msgs/Float64 obj_arellong_rms~%std_msgs/Float64 obj_arellat_rms~%std_msgs/Float64 obj_orientation_rms~%std_msgs/Float64 obj_probofexist~%std_msgs/String  obj_measstate~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectQuality>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_distlong_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_distlat_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_vrellong_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_vrellat_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_arellong_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_arellat_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_orientation_rms))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_probofexist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_measstate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectQuality>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectQuality
    (cl:cons ':obj_distlong_rms (obj_distlong_rms msg))
    (cl:cons ':obj_distlat_rms (obj_distlat_rms msg))
    (cl:cons ':obj_vrellong_rms (obj_vrellong_rms msg))
    (cl:cons ':obj_vrellat_rms (obj_vrellat_rms msg))
    (cl:cons ':obj_arellong_rms (obj_arellong_rms msg))
    (cl:cons ':obj_arellat_rms (obj_arellat_rms msg))
    (cl:cons ':obj_orientation_rms (obj_orientation_rms msg))
    (cl:cons ':obj_probofexist (obj_probofexist msg))
    (cl:cons ':obj_measstate (obj_measstate msg))
))
