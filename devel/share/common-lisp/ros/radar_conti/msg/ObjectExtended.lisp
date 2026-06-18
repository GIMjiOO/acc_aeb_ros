; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude ObjectExtended.msg.html

(cl:defclass <ObjectExtended> (roslisp-msg-protocol:ros-message)
  ((obj_arellong
    :reader obj_arellong
    :initarg :obj_arellong
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_arellat
    :reader obj_arellat
    :initarg :obj_arellat
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_class
    :reader obj_class
    :initarg :obj_class
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (obj_orientationangle
    :reader obj_orientationangle
    :initarg :obj_orientationangle
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_length
    :reader obj_length
    :initarg :obj_length
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (obj_width
    :reader obj_width
    :initarg :obj_width
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass ObjectExtended (<ObjectExtended>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectExtended>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectExtended)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<ObjectExtended> is deprecated: use radar_conti-msg:ObjectExtended instead.")))

(cl:ensure-generic-function 'obj_arellong-val :lambda-list '(m))
(cl:defmethod obj_arellong-val ((m <ObjectExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_arellong-val is deprecated.  Use radar_conti-msg:obj_arellong instead.")
  (obj_arellong m))

(cl:ensure-generic-function 'obj_arellat-val :lambda-list '(m))
(cl:defmethod obj_arellat-val ((m <ObjectExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_arellat-val is deprecated.  Use radar_conti-msg:obj_arellat instead.")
  (obj_arellat m))

(cl:ensure-generic-function 'obj_class-val :lambda-list '(m))
(cl:defmethod obj_class-val ((m <ObjectExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_class-val is deprecated.  Use radar_conti-msg:obj_class instead.")
  (obj_class m))

(cl:ensure-generic-function 'obj_orientationangle-val :lambda-list '(m))
(cl:defmethod obj_orientationangle-val ((m <ObjectExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_orientationangle-val is deprecated.  Use radar_conti-msg:obj_orientationangle instead.")
  (obj_orientationangle m))

(cl:ensure-generic-function 'obj_length-val :lambda-list '(m))
(cl:defmethod obj_length-val ((m <ObjectExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_length-val is deprecated.  Use radar_conti-msg:obj_length instead.")
  (obj_length m))

(cl:ensure-generic-function 'obj_width-val :lambda-list '(m))
(cl:defmethod obj_width-val ((m <ObjectExtended>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:obj_width-val is deprecated.  Use radar_conti-msg:obj_width instead.")
  (obj_width m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectExtended>) ostream)
  "Serializes a message object of type '<ObjectExtended>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_arellong) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_arellat) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_class) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_orientationangle) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_length) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj_width) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectExtended>) istream)
  "Deserializes a message object of type '<ObjectExtended>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_arellong) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_arellat) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_class) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_orientationangle) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_length) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj_width) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectExtended>)))
  "Returns string type for a message object of type '<ObjectExtended>"
  "radar_conti/ObjectExtended")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectExtended)))
  "Returns string type for a message object of type 'ObjectExtended"
  "radar_conti/ObjectExtended")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectExtended>)))
  "Returns md5sum for a message object of type '<ObjectExtended>"
  "96824e97e44bcd21a96fe4ebd1753186")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectExtended)))
  "Returns md5sum for a message object of type 'ObjectExtended"
  "96824e97e44bcd21a96fe4ebd1753186")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectExtended>)))
  "Returns full string definition for message of type '<ObjectExtended>"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_3_Extended~%#  Id:         0x60d~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |----------x|<------------------|~%#           +---+---+---+---+---+---+---+---+~%#                     +-- Obj_ArelLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |--------------x|   |<---------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                   |               +-- Obj_Class~%#     t                   +-- Obj_ArelLat~%#     e     +---+---+---+---+---+---+---+---+~%#         4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|   |   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Obj_OrientationAngle~%#           +---+---+---+---+---+---+---+---+~%#         6 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_Length~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_Width~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_ID~%#       +-- Obj_ArelLong~%#       +-- Obj_ArelLat~%#       +-- Obj_Class~%#       +-- Obj_OrientationAngle~%#       +-- Obj_Length~%#       +-- Obj_Width~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 obj_arellong~%std_msgs/Float64 obj_arellat~%std_msgs/Int32 obj_class~%std_msgs/Float64 obj_orientationangle~%std_msgs/Float64 obj_length~%std_msgs/Float64 obj_width~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectExtended)))
  "Returns full string definition for message of type 'ObjectExtended"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       Obj_3_Extended~%#  Id:         0x60d~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_ID~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |----------x|<------------------|~%#           +---+---+---+---+---+---+---+---+~%#                     +-- Obj_ArelLong~%#           +---+---+---+---+---+---+---+---+~%#         3 |--------------x|   |<---------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                   |               +-- Obj_Class~%#     t                   +-- Obj_ArelLat~%#     e     +---+---+---+---+---+---+---+---+~%#         4 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         5 |------x|   |   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                 +-- Obj_OrientationAngle~%#           +---+---+---+---+---+---+---+---+~%#         6 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_Length~%#           +---+---+---+---+---+---+---+---+~%#         7 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Obj_Width~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Obj_ID~%#       +-- Obj_ArelLong~%#       +-- Obj_ArelLat~%#       +-- Obj_Class~%#       +-- Obj_OrientationAngle~%#       +-- Obj_Length~%#       +-- Obj_Width~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Float64 obj_arellong~%std_msgs/Float64 obj_arellat~%std_msgs/Int32 obj_class~%std_msgs/Float64 obj_orientationangle~%std_msgs/Float64 obj_length~%std_msgs/Float64 obj_width~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectExtended>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_arellong))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_arellat))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_class))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_orientationangle))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_length))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj_width))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectExtended>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectExtended
    (cl:cons ':obj_arellong (obj_arellong msg))
    (cl:cons ':obj_arellat (obj_arellat msg))
    (cl:cons ':obj_class (obj_class msg))
    (cl:cons ':obj_orientationangle (obj_orientationangle msg))
    (cl:cons ':obj_length (obj_length msg))
    (cl:cons ':obj_width (obj_width msg))
))
