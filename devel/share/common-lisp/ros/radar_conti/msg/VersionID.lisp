; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude VersionID.msg.html

(cl:defclass <VersionID> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (version_majorrelease
    :reader version_majorrelease
    :initarg :version_majorrelease
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (version_minorrelease
    :reader version_minorrelease
    :initarg :version_minorrelease
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (version_patchlevel
    :reader version_patchlevel
    :initarg :version_patchlevel
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (version_extendedrange
    :reader version_extendedrange
    :initarg :version_extendedrange
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (version_countrycode
    :reader version_countrycode
    :initarg :version_countrycode
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass VersionID (<VersionID>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VersionID>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VersionID)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<VersionID> is deprecated: use radar_conti-msg:VersionID instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VersionID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:header-val is deprecated.  Use radar_conti-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'version_majorrelease-val :lambda-list '(m))
(cl:defmethod version_majorrelease-val ((m <VersionID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:version_majorrelease-val is deprecated.  Use radar_conti-msg:version_majorrelease instead.")
  (version_majorrelease m))

(cl:ensure-generic-function 'version_minorrelease-val :lambda-list '(m))
(cl:defmethod version_minorrelease-val ((m <VersionID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:version_minorrelease-val is deprecated.  Use radar_conti-msg:version_minorrelease instead.")
  (version_minorrelease m))

(cl:ensure-generic-function 'version_patchlevel-val :lambda-list '(m))
(cl:defmethod version_patchlevel-val ((m <VersionID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:version_patchlevel-val is deprecated.  Use radar_conti-msg:version_patchlevel instead.")
  (version_patchlevel m))

(cl:ensure-generic-function 'version_extendedrange-val :lambda-list '(m))
(cl:defmethod version_extendedrange-val ((m <VersionID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:version_extendedrange-val is deprecated.  Use radar_conti-msg:version_extendedrange instead.")
  (version_extendedrange m))

(cl:ensure-generic-function 'version_countrycode-val :lambda-list '(m))
(cl:defmethod version_countrycode-val ((m <VersionID>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:version_countrycode-val is deprecated.  Use radar_conti-msg:version_countrycode instead.")
  (version_countrycode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VersionID>) ostream)
  "Serializes a message object of type '<VersionID>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'version_majorrelease) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'version_minorrelease) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'version_patchlevel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'version_extendedrange) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'version_countrycode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VersionID>) istream)
  "Deserializes a message object of type '<VersionID>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'version_majorrelease) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'version_minorrelease) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'version_patchlevel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'version_extendedrange) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'version_countrycode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VersionID>)))
  "Returns string type for a message object of type '<VersionID>"
  "radar_conti/VersionID")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VersionID)))
  "Returns string type for a message object of type 'VersionID"
  "radar_conti/VersionID")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VersionID>)))
  "Returns md5sum for a message object of type '<VersionID>"
  "ea1b12f3e20711755dbdd58cbc0c1b78")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VersionID)))
  "Returns md5sum for a message object of type 'VersionID"
  "ea1b12f3e20711755dbdd58cbc0c1b78")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VersionID>)))
  "Returns full string definition for message of type '<VersionID>"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       VersionID~%#  Id:         0x700~%#  Length:     4 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Version_MajorRelease~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------------------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                                   +-- Version_MinorRelease~%#     t     +---+---+---+---+---+---+---+---+~%#     e   2 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Version_PatchLevel~%#           +---+---+---+---+---+---+---+---+~%#         3 |   |   |   |   |   |   |<-x|<-x|~%#           +---+---+---+---+---+---+---+---+~%#                                     |   +-- Version_CountryCode~%#                                     +-- Version_ExtendedRange~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Version_MajorRelease~%#       +-- Version_MinorRelease~%#       +-- Version_PatchLevel~%#       +-- Version_ExtendedRange~%#       +-- Version_CountryCode~%#~%#  ------------------------------------------------------------------------~%std_msgs/Header header~%std_msgs/Int32 version_majorrelease~%std_msgs/Int32 version_minorrelease~%std_msgs/Int32 version_patchlevel~%std_msgs/String version_extendedrange~%std_msgs/String version_countrycode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VersionID)))
  "Returns full string definition for message of type 'VersionID"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       VersionID~%#  Id:         0x700~%#  Length:     4 bytes~%#  Cycle time: 0 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Version_MajorRelease~%#           +---+---+---+---+---+---+---+---+~%#         1 |<-----------------------------x|~%#     B     +---+---+---+---+---+---+---+---+~%#     y                                   +-- Version_MinorRelease~%#     t     +---+---+---+---+---+---+---+---+~%#     e   2 |<-----------------------------x|~%#           +---+---+---+---+---+---+---+---+~%#                                         +-- Version_PatchLevel~%#           +---+---+---+---+---+---+---+---+~%#         3 |   |   |   |   |   |   |<-x|<-x|~%#           +---+---+---+---+---+---+---+---+~%#                                     |   +-- Version_CountryCode~%#                                     +-- Version_ExtendedRange~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- Version_MajorRelease~%#       +-- Version_MinorRelease~%#       +-- Version_PatchLevel~%#       +-- Version_ExtendedRange~%#       +-- Version_CountryCode~%#~%#  ------------------------------------------------------------------------~%std_msgs/Header header~%std_msgs/Int32 version_majorrelease~%std_msgs/Int32 version_minorrelease~%std_msgs/Int32 version_patchlevel~%std_msgs/String version_extendedrange~%std_msgs/String version_countrycode~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VersionID>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'version_majorrelease))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'version_minorrelease))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'version_patchlevel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'version_extendedrange))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'version_countrycode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VersionID>))
  "Converts a ROS message object to a list"
  (cl:list 'VersionID
    (cl:cons ':header (header msg))
    (cl:cons ':version_majorrelease (version_majorrelease msg))
    (cl:cons ':version_minorrelease (version_minorrelease msg))
    (cl:cons ':version_patchlevel (version_patchlevel msg))
    (cl:cons ':version_extendedrange (version_extendedrange msg))
    (cl:cons ':version_countrycode (version_countrycode msg))
))
