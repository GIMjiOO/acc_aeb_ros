; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude RadarState.msg.html

(cl:defclass <RadarState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (radarstate_nvmwritestatus
    :reader radarstate_nvmwritestatus
    :initarg :radarstate_nvmwritestatus
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_nvmreadstatus
    :reader radarstate_nvmreadstatus
    :initarg :radarstate_nvmreadstatus
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_maxdistancecfg
    :reader radarstate_maxdistancecfg
    :initarg :radarstate_maxdistancecfg
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_persistent_error
    :reader radarstate_persistent_error
    :initarg :radarstate_persistent_error
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_interference
    :reader radarstate_interference
    :initarg :radarstate_interference
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_temperature_error
    :reader radarstate_temperature_error
    :initarg :radarstate_temperature_error
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_temporary_error
    :reader radarstate_temporary_error
    :initarg :radarstate_temporary_error
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_voltage_error
    :reader radarstate_voltage_error
    :initarg :radarstate_voltage_error
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_radarpowercfg
    :reader radarstate_radarpowercfg
    :initarg :radarstate_radarpowercfg
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_sortindex
    :reader radarstate_sortindex
    :initarg :radarstate_sortindex
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_sensorid
    :reader radarstate_sensorid
    :initarg :radarstate_sensorid
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_motionrxstate
    :reader radarstate_motionrxstate
    :initarg :radarstate_motionrxstate
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_sendextinfocfg
    :reader radarstate_sendextinfocfg
    :initarg :radarstate_sendextinfocfg
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_sendqualitycfg
    :reader radarstate_sendqualitycfg
    :initarg :radarstate_sendqualitycfg
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_outputtypecfg
    :reader radarstate_outputtypecfg
    :initarg :radarstate_outputtypecfg
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_ctrlrelaycfg
    :reader radarstate_ctrlrelaycfg
    :initarg :radarstate_ctrlrelaycfg
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarstate_rcs_threshold
    :reader radarstate_rcs_threshold
    :initarg :radarstate_rcs_threshold
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass RadarState (<RadarState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<RadarState> is deprecated: use radar_conti-msg:RadarState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:header-val is deprecated.  Use radar_conti-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'radarstate_nvmwritestatus-val :lambda-list '(m))
(cl:defmethod radarstate_nvmwritestatus-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_nvmwritestatus-val is deprecated.  Use radar_conti-msg:radarstate_nvmwritestatus instead.")
  (radarstate_nvmwritestatus m))

(cl:ensure-generic-function 'radarstate_nvmreadstatus-val :lambda-list '(m))
(cl:defmethod radarstate_nvmreadstatus-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_nvmreadstatus-val is deprecated.  Use radar_conti-msg:radarstate_nvmreadstatus instead.")
  (radarstate_nvmreadstatus m))

(cl:ensure-generic-function 'radarstate_maxdistancecfg-val :lambda-list '(m))
(cl:defmethod radarstate_maxdistancecfg-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_maxdistancecfg-val is deprecated.  Use radar_conti-msg:radarstate_maxdistancecfg instead.")
  (radarstate_maxdistancecfg m))

(cl:ensure-generic-function 'radarstate_persistent_error-val :lambda-list '(m))
(cl:defmethod radarstate_persistent_error-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_persistent_error-val is deprecated.  Use radar_conti-msg:radarstate_persistent_error instead.")
  (radarstate_persistent_error m))

(cl:ensure-generic-function 'radarstate_interference-val :lambda-list '(m))
(cl:defmethod radarstate_interference-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_interference-val is deprecated.  Use radar_conti-msg:radarstate_interference instead.")
  (radarstate_interference m))

(cl:ensure-generic-function 'radarstate_temperature_error-val :lambda-list '(m))
(cl:defmethod radarstate_temperature_error-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_temperature_error-val is deprecated.  Use radar_conti-msg:radarstate_temperature_error instead.")
  (radarstate_temperature_error m))

(cl:ensure-generic-function 'radarstate_temporary_error-val :lambda-list '(m))
(cl:defmethod radarstate_temporary_error-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_temporary_error-val is deprecated.  Use radar_conti-msg:radarstate_temporary_error instead.")
  (radarstate_temporary_error m))

(cl:ensure-generic-function 'radarstate_voltage_error-val :lambda-list '(m))
(cl:defmethod radarstate_voltage_error-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_voltage_error-val is deprecated.  Use radar_conti-msg:radarstate_voltage_error instead.")
  (radarstate_voltage_error m))

(cl:ensure-generic-function 'radarstate_radarpowercfg-val :lambda-list '(m))
(cl:defmethod radarstate_radarpowercfg-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_radarpowercfg-val is deprecated.  Use radar_conti-msg:radarstate_radarpowercfg instead.")
  (radarstate_radarpowercfg m))

(cl:ensure-generic-function 'radarstate_sortindex-val :lambda-list '(m))
(cl:defmethod radarstate_sortindex-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_sortindex-val is deprecated.  Use radar_conti-msg:radarstate_sortindex instead.")
  (radarstate_sortindex m))

(cl:ensure-generic-function 'radarstate_sensorid-val :lambda-list '(m))
(cl:defmethod radarstate_sensorid-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_sensorid-val is deprecated.  Use radar_conti-msg:radarstate_sensorid instead.")
  (radarstate_sensorid m))

(cl:ensure-generic-function 'radarstate_motionrxstate-val :lambda-list '(m))
(cl:defmethod radarstate_motionrxstate-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_motionrxstate-val is deprecated.  Use radar_conti-msg:radarstate_motionrxstate instead.")
  (radarstate_motionrxstate m))

(cl:ensure-generic-function 'radarstate_sendextinfocfg-val :lambda-list '(m))
(cl:defmethod radarstate_sendextinfocfg-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_sendextinfocfg-val is deprecated.  Use radar_conti-msg:radarstate_sendextinfocfg instead.")
  (radarstate_sendextinfocfg m))

(cl:ensure-generic-function 'radarstate_sendqualitycfg-val :lambda-list '(m))
(cl:defmethod radarstate_sendqualitycfg-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_sendqualitycfg-val is deprecated.  Use radar_conti-msg:radarstate_sendqualitycfg instead.")
  (radarstate_sendqualitycfg m))

(cl:ensure-generic-function 'radarstate_outputtypecfg-val :lambda-list '(m))
(cl:defmethod radarstate_outputtypecfg-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_outputtypecfg-val is deprecated.  Use radar_conti-msg:radarstate_outputtypecfg instead.")
  (radarstate_outputtypecfg m))

(cl:ensure-generic-function 'radarstate_ctrlrelaycfg-val :lambda-list '(m))
(cl:defmethod radarstate_ctrlrelaycfg-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_ctrlrelaycfg-val is deprecated.  Use radar_conti-msg:radarstate_ctrlrelaycfg instead.")
  (radarstate_ctrlrelaycfg m))

(cl:ensure-generic-function 'radarstate_rcs_threshold-val :lambda-list '(m))
(cl:defmethod radarstate_rcs_threshold-val ((m <RadarState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarstate_rcs_threshold-val is deprecated.  Use radar_conti-msg:radarstate_rcs_threshold instead.")
  (radarstate_rcs_threshold m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarState>) ostream)
  "Serializes a message object of type '<RadarState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_nvmwritestatus) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_nvmreadstatus) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_maxdistancecfg) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_persistent_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_interference) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_temperature_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_temporary_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_voltage_error) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_radarpowercfg) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_sortindex) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_sensorid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_motionrxstate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_sendextinfocfg) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_sendqualitycfg) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_outputtypecfg) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_ctrlrelaycfg) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarstate_rcs_threshold) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarState>) istream)
  "Deserializes a message object of type '<RadarState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_nvmwritestatus) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_nvmreadstatus) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_maxdistancecfg) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_persistent_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_interference) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_temperature_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_temporary_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_voltage_error) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_radarpowercfg) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_sortindex) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_sensorid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_motionrxstate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_sendextinfocfg) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_sendqualitycfg) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_outputtypecfg) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_ctrlrelaycfg) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarstate_rcs_threshold) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarState>)))
  "Returns string type for a message object of type '<RadarState>"
  "radar_conti/RadarState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarState)))
  "Returns string type for a message object of type 'RadarState"
  "radar_conti/RadarState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarState>)))
  "Returns md5sum for a message object of type '<RadarState>"
  "a2a8e3e1ff2df867bbb8f3f07e04a77f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarState)))
  "Returns md5sum for a message object of type 'RadarState"
  "a2a8e3e1ff2df867bbb8f3f07e04a77f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarState>)))
  "Returns full string definition for message of type '<RadarState>"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       RadarState~%#  Id:         0x201~%#  Length:     8 bytes~%#  Cycle time: 50 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-x|<-x|   |   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#             |   +-- RadarState_NVMReadStatus~%#             +-- RadarState_NVMwriteStatus~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------x|<-x|<-x|<-x|<-x|<-x|   |~%#           +---+---+---+---+---+---+---+---+~%#                 |   |   |   |   |   +-- RadarState_Voltage_Error~%#                 |   |   |   |   +-- RadarState_Temporary_Error~%#                 |   |   |   +-- RadarState_Temperature_Error~%#                 |   |   +-- RadarState_Interference~%#                 |   +-- RadarState_Persistent_Error~%#                 +-- RadarState_MaxDistanceCfg~%#           +---+---+---+---+---+---+---+---+~%#     B   3 |   |   |   |   |   |   |<------|~%#     y     +---+---+---+---+---+---+---+---+~%#     t   4 |--x|<---------x|   |<---------x|~%#     e     +---+---+---+---+---+---+---+---+~%#             |           |               +-- RadarState_SensorID~%#             |           +-- RadarState_SortIndex~%#             +-- RadarState_RadarPowerCfg~%#           +---+---+---+---+---+---+---+---+~%#         5 |<-----x|<-x|<-x|<-----x|<-x|   |~%#           +---+---+---+---+---+---+---+---+~%#                 |   |   |       |   +-- RadarState_CtrlRelayCfg~%#                 |   |   |       +-- RadarState_OutputTypeCfg~%#                 |   |   +-- RadarState_SendQualityCfg~%#                 |   +-- RadarState_SendExtInfoCfg~%#                 +-- RadarState_MotionRxState~%#           +---+---+---+---+---+---+---+---+~%#         6 |   |   |   |   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#         7 |   |   |   |<---------x|   |   |~%#           +---+---+---+---+---+---+---+---+~%#                                 +-- RadarState_RCS_Threshold~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- RadarState_NVMwriteStatus~%#       +-- RadarState_NVMReadStatus~%#       +-- RadarState_MaxDistanceCfg~%#       +-- RadarState_Persistent_Error~%#       +-- RadarState_Interference~%#       +-- RadarState_Temperature_Error~%#       +-- RadarState_Temporary_Error~%#       +-- RadarState_Voltage_Error~%#       +-- RadarState_RadarPowerCfg~%#       +-- RadarState_SortIndex~%#       +-- RadarState_SensorID~%#       +-- RadarState_MotionRxState~%#       +-- RadarState_SendExtInfoCfg~%#       +-- RadarState_SendQualityCfg~%#       +-- RadarState_OutputTypeCfg~%#       +-- RadarState_CtrlRelayCfg~%#       +-- RadarState_RCS_Threshold~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Header header~%std_msgs/UInt8 radarstate_nvmwritestatus~%std_msgs/UInt8 radarstate_nvmreadstatus~%std_msgs/UInt8 radarstate_maxdistancecfg~%std_msgs/UInt8 radarstate_persistent_error~%std_msgs/UInt8 radarstate_interference~%std_msgs/UInt8 radarstate_temperature_error~%std_msgs/UInt8 radarstate_temporary_error~%std_msgs/UInt8 radarstate_voltage_error~%std_msgs/UInt8 radarstate_radarpowercfg~%std_msgs/UInt8 radarstate_sortindex~%std_msgs/UInt8 radarstate_sensorid~%std_msgs/UInt8 radarstate_motionrxstate~%std_msgs/UInt8 radarstate_sendextinfocfg~%std_msgs/UInt8 radarstate_sendqualitycfg~%std_msgs/UInt8 radarstate_outputtypecfg~%std_msgs/UInt8 radarstate_ctrlrelaycfg~%std_msgs/UInt8 radarstate_rcs_threshold~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarState)))
  "Returns full string definition for message of type 'RadarState"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       RadarState~%#  Id:         0x201~%#  Length:     8 bytes~%#  Cycle time: 50 ms~%#  Senders:    ARS_ISF~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-x|<-x|   |   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#             |   +-- RadarState_NVMReadStatus~%#             +-- RadarState_NVMwriteStatus~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------x|<-x|<-x|<-x|<-x|<-x|   |~%#           +---+---+---+---+---+---+---+---+~%#                 |   |   |   |   |   +-- RadarState_Voltage_Error~%#                 |   |   |   |   +-- RadarState_Temporary_Error~%#                 |   |   |   +-- RadarState_Temperature_Error~%#                 |   |   +-- RadarState_Interference~%#                 |   +-- RadarState_Persistent_Error~%#                 +-- RadarState_MaxDistanceCfg~%#           +---+---+---+---+---+---+---+---+~%#     B   3 |   |   |   |   |   |   |<------|~%#     y     +---+---+---+---+---+---+---+---+~%#     t   4 |--x|<---------x|   |<---------x|~%#     e     +---+---+---+---+---+---+---+---+~%#             |           |               +-- RadarState_SensorID~%#             |           +-- RadarState_SortIndex~%#             +-- RadarState_RadarPowerCfg~%#           +---+---+---+---+---+---+---+---+~%#         5 |<-----x|<-x|<-x|<-----x|<-x|   |~%#           +---+---+---+---+---+---+---+---+~%#                 |   |   |       |   +-- RadarState_CtrlRelayCfg~%#                 |   |   |       +-- RadarState_OutputTypeCfg~%#                 |   |   +-- RadarState_SendQualityCfg~%#                 |   +-- RadarState_SendExtInfoCfg~%#                 +-- RadarState_MotionRxState~%#           +---+---+---+---+---+---+---+---+~%#         6 |   |   |   |   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#         7 |   |   |   |<---------x|   |   |~%#           +---+---+---+---+---+---+---+---+~%#                                 +-- RadarState_RCS_Threshold~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- RadarState_NVMwriteStatus~%#       +-- RadarState_NVMReadStatus~%#       +-- RadarState_MaxDistanceCfg~%#       +-- RadarState_Persistent_Error~%#       +-- RadarState_Interference~%#       +-- RadarState_Temperature_Error~%#       +-- RadarState_Temporary_Error~%#       +-- RadarState_Voltage_Error~%#       +-- RadarState_RadarPowerCfg~%#       +-- RadarState_SortIndex~%#       +-- RadarState_SensorID~%#       +-- RadarState_MotionRxState~%#       +-- RadarState_SendExtInfoCfg~%#       +-- RadarState_SendQualityCfg~%#       +-- RadarState_OutputTypeCfg~%#       +-- RadarState_CtrlRelayCfg~%#       +-- RadarState_RCS_Threshold~%#~%#  ------------------------------------------------------------------------~%#~%std_msgs/Header header~%std_msgs/UInt8 radarstate_nvmwritestatus~%std_msgs/UInt8 radarstate_nvmreadstatus~%std_msgs/UInt8 radarstate_maxdistancecfg~%std_msgs/UInt8 radarstate_persistent_error~%std_msgs/UInt8 radarstate_interference~%std_msgs/UInt8 radarstate_temperature_error~%std_msgs/UInt8 radarstate_temporary_error~%std_msgs/UInt8 radarstate_voltage_error~%std_msgs/UInt8 radarstate_radarpowercfg~%std_msgs/UInt8 radarstate_sortindex~%std_msgs/UInt8 radarstate_sensorid~%std_msgs/UInt8 radarstate_motionrxstate~%std_msgs/UInt8 radarstate_sendextinfocfg~%std_msgs/UInt8 radarstate_sendqualitycfg~%std_msgs/UInt8 radarstate_outputtypecfg~%std_msgs/UInt8 radarstate_ctrlrelaycfg~%std_msgs/UInt8 radarstate_rcs_threshold~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_nvmwritestatus))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_nvmreadstatus))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_maxdistancecfg))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_persistent_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_interference))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_temperature_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_temporary_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_voltage_error))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_radarpowercfg))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_sortindex))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_sensorid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_motionrxstate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_sendextinfocfg))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_sendqualitycfg))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_outputtypecfg))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_ctrlrelaycfg))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarstate_rcs_threshold))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarState>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarState
    (cl:cons ':header (header msg))
    (cl:cons ':radarstate_nvmwritestatus (radarstate_nvmwritestatus msg))
    (cl:cons ':radarstate_nvmreadstatus (radarstate_nvmreadstatus msg))
    (cl:cons ':radarstate_maxdistancecfg (radarstate_maxdistancecfg msg))
    (cl:cons ':radarstate_persistent_error (radarstate_persistent_error msg))
    (cl:cons ':radarstate_interference (radarstate_interference msg))
    (cl:cons ':radarstate_temperature_error (radarstate_temperature_error msg))
    (cl:cons ':radarstate_temporary_error (radarstate_temporary_error msg))
    (cl:cons ':radarstate_voltage_error (radarstate_voltage_error msg))
    (cl:cons ':radarstate_radarpowercfg (radarstate_radarpowercfg msg))
    (cl:cons ':radarstate_sortindex (radarstate_sortindex msg))
    (cl:cons ':radarstate_sensorid (radarstate_sensorid msg))
    (cl:cons ':radarstate_motionrxstate (radarstate_motionrxstate msg))
    (cl:cons ':radarstate_sendextinfocfg (radarstate_sendextinfocfg msg))
    (cl:cons ':radarstate_sendqualitycfg (radarstate_sendqualitycfg msg))
    (cl:cons ':radarstate_outputtypecfg (radarstate_outputtypecfg msg))
    (cl:cons ':radarstate_ctrlrelaycfg (radarstate_ctrlrelaycfg msg))
    (cl:cons ':radarstate_rcs_threshold (radarstate_rcs_threshold msg))
))
