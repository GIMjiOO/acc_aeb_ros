; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude RadarConfiguration.msg.html

(cl:defclass <RadarConfiguration> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (radarcfg_storeinnvm_valid
    :reader radarcfg_storeinnvm_valid
    :initarg :radarcfg_storeinnvm_valid
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_sortindex_valid
    :reader radarcfg_sortindex_valid
    :initarg :radarcfg_sortindex_valid
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_sendextinfo_valid
    :reader radarcfg_sendextinfo_valid
    :initarg :radarcfg_sendextinfo_valid
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_sendquality_valid
    :reader radarcfg_sendquality_valid
    :initarg :radarcfg_sendquality_valid
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_outputtype_valid
    :reader radarcfg_outputtype_valid
    :initarg :radarcfg_outputtype_valid
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_radarpower_valid
    :reader radarcfg_radarpower_valid
    :initarg :radarcfg_radarpower_valid
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_sensorid_valid
    :reader radarcfg_sensorid_valid
    :initarg :radarcfg_sensorid_valid
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_maxdistance_valid
    :reader radarcfg_maxdistance_valid
    :initarg :radarcfg_maxdistance_valid
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_maxdistance
    :reader radarcfg_maxdistance
    :initarg :radarcfg_maxdistance
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_radarpower
    :reader radarcfg_radarpower
    :initarg :radarcfg_radarpower
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_outputtype
    :reader radarcfg_outputtype
    :initarg :radarcfg_outputtype
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_sensorid
    :reader radarcfg_sensorid
    :initarg :radarcfg_sensorid
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_storeinnvm
    :reader radarcfg_storeinnvm
    :initarg :radarcfg_storeinnvm
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_sortindex
    :reader radarcfg_sortindex
    :initarg :radarcfg_sortindex
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_sendextinfo
    :reader radarcfg_sendextinfo
    :initarg :radarcfg_sendextinfo
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_sendquality
    :reader radarcfg_sendquality
    :initarg :radarcfg_sendquality
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_ctrlrelay
    :reader radarcfg_ctrlrelay
    :initarg :radarcfg_ctrlrelay
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_ctrlrelay_valid
    :reader radarcfg_ctrlrelay_valid
    :initarg :radarcfg_ctrlrelay_valid
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_rcs_threshold
    :reader radarcfg_rcs_threshold
    :initarg :radarcfg_rcs_threshold
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (radarcfg_rcs_threshold_valid
    :reader radarcfg_rcs_threshold_valid
    :initarg :radarcfg_rcs_threshold_valid
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass RadarConfiguration (<RadarConfiguration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarConfiguration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarConfiguration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<RadarConfiguration> is deprecated: use radar_conti-msg:RadarConfiguration instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:header-val is deprecated.  Use radar_conti-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'radarcfg_storeinnvm_valid-val :lambda-list '(m))
(cl:defmethod radarcfg_storeinnvm_valid-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_storeinnvm_valid-val is deprecated.  Use radar_conti-msg:radarcfg_storeinnvm_valid instead.")
  (radarcfg_storeinnvm_valid m))

(cl:ensure-generic-function 'radarcfg_sortindex_valid-val :lambda-list '(m))
(cl:defmethod radarcfg_sortindex_valid-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_sortindex_valid-val is deprecated.  Use radar_conti-msg:radarcfg_sortindex_valid instead.")
  (radarcfg_sortindex_valid m))

(cl:ensure-generic-function 'radarcfg_sendextinfo_valid-val :lambda-list '(m))
(cl:defmethod radarcfg_sendextinfo_valid-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_sendextinfo_valid-val is deprecated.  Use radar_conti-msg:radarcfg_sendextinfo_valid instead.")
  (radarcfg_sendextinfo_valid m))

(cl:ensure-generic-function 'radarcfg_sendquality_valid-val :lambda-list '(m))
(cl:defmethod radarcfg_sendquality_valid-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_sendquality_valid-val is deprecated.  Use radar_conti-msg:radarcfg_sendquality_valid instead.")
  (radarcfg_sendquality_valid m))

(cl:ensure-generic-function 'radarcfg_outputtype_valid-val :lambda-list '(m))
(cl:defmethod radarcfg_outputtype_valid-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_outputtype_valid-val is deprecated.  Use radar_conti-msg:radarcfg_outputtype_valid instead.")
  (radarcfg_outputtype_valid m))

(cl:ensure-generic-function 'radarcfg_radarpower_valid-val :lambda-list '(m))
(cl:defmethod radarcfg_radarpower_valid-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_radarpower_valid-val is deprecated.  Use radar_conti-msg:radarcfg_radarpower_valid instead.")
  (radarcfg_radarpower_valid m))

(cl:ensure-generic-function 'radarcfg_sensorid_valid-val :lambda-list '(m))
(cl:defmethod radarcfg_sensorid_valid-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_sensorid_valid-val is deprecated.  Use radar_conti-msg:radarcfg_sensorid_valid instead.")
  (radarcfg_sensorid_valid m))

(cl:ensure-generic-function 'radarcfg_maxdistance_valid-val :lambda-list '(m))
(cl:defmethod radarcfg_maxdistance_valid-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_maxdistance_valid-val is deprecated.  Use radar_conti-msg:radarcfg_maxdistance_valid instead.")
  (radarcfg_maxdistance_valid m))

(cl:ensure-generic-function 'radarcfg_maxdistance-val :lambda-list '(m))
(cl:defmethod radarcfg_maxdistance-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_maxdistance-val is deprecated.  Use radar_conti-msg:radarcfg_maxdistance instead.")
  (radarcfg_maxdistance m))

(cl:ensure-generic-function 'radarcfg_radarpower-val :lambda-list '(m))
(cl:defmethod radarcfg_radarpower-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_radarpower-val is deprecated.  Use radar_conti-msg:radarcfg_radarpower instead.")
  (radarcfg_radarpower m))

(cl:ensure-generic-function 'radarcfg_outputtype-val :lambda-list '(m))
(cl:defmethod radarcfg_outputtype-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_outputtype-val is deprecated.  Use radar_conti-msg:radarcfg_outputtype instead.")
  (radarcfg_outputtype m))

(cl:ensure-generic-function 'radarcfg_sensorid-val :lambda-list '(m))
(cl:defmethod radarcfg_sensorid-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_sensorid-val is deprecated.  Use radar_conti-msg:radarcfg_sensorid instead.")
  (radarcfg_sensorid m))

(cl:ensure-generic-function 'radarcfg_storeinnvm-val :lambda-list '(m))
(cl:defmethod radarcfg_storeinnvm-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_storeinnvm-val is deprecated.  Use radar_conti-msg:radarcfg_storeinnvm instead.")
  (radarcfg_storeinnvm m))

(cl:ensure-generic-function 'radarcfg_sortindex-val :lambda-list '(m))
(cl:defmethod radarcfg_sortindex-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_sortindex-val is deprecated.  Use radar_conti-msg:radarcfg_sortindex instead.")
  (radarcfg_sortindex m))

(cl:ensure-generic-function 'radarcfg_sendextinfo-val :lambda-list '(m))
(cl:defmethod radarcfg_sendextinfo-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_sendextinfo-val is deprecated.  Use radar_conti-msg:radarcfg_sendextinfo instead.")
  (radarcfg_sendextinfo m))

(cl:ensure-generic-function 'radarcfg_sendquality-val :lambda-list '(m))
(cl:defmethod radarcfg_sendquality-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_sendquality-val is deprecated.  Use radar_conti-msg:radarcfg_sendquality instead.")
  (radarcfg_sendquality m))

(cl:ensure-generic-function 'radarcfg_ctrlrelay-val :lambda-list '(m))
(cl:defmethod radarcfg_ctrlrelay-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_ctrlrelay-val is deprecated.  Use radar_conti-msg:radarcfg_ctrlrelay instead.")
  (radarcfg_ctrlrelay m))

(cl:ensure-generic-function 'radarcfg_ctrlrelay_valid-val :lambda-list '(m))
(cl:defmethod radarcfg_ctrlrelay_valid-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_ctrlrelay_valid-val is deprecated.  Use radar_conti-msg:radarcfg_ctrlrelay_valid instead.")
  (radarcfg_ctrlrelay_valid m))

(cl:ensure-generic-function 'radarcfg_rcs_threshold-val :lambda-list '(m))
(cl:defmethod radarcfg_rcs_threshold-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_rcs_threshold-val is deprecated.  Use radar_conti-msg:radarcfg_rcs_threshold instead.")
  (radarcfg_rcs_threshold m))

(cl:ensure-generic-function 'radarcfg_rcs_threshold_valid-val :lambda-list '(m))
(cl:defmethod radarcfg_rcs_threshold_valid-val ((m <RadarConfiguration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:radarcfg_rcs_threshold_valid-val is deprecated.  Use radar_conti-msg:radarcfg_rcs_threshold_valid instead.")
  (radarcfg_rcs_threshold_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarConfiguration>) ostream)
  "Serializes a message object of type '<RadarConfiguration>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_storeinnvm_valid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_sortindex_valid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_sendextinfo_valid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_sendquality_valid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_outputtype_valid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_radarpower_valid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_sensorid_valid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_maxdistance_valid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_maxdistance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_radarpower) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_outputtype) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_sensorid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_storeinnvm) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_sortindex) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_sendextinfo) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_sendquality) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_ctrlrelay) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_ctrlrelay_valid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_rcs_threshold) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'radarcfg_rcs_threshold_valid) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarConfiguration>) istream)
  "Deserializes a message object of type '<RadarConfiguration>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_storeinnvm_valid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_sortindex_valid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_sendextinfo_valid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_sendquality_valid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_outputtype_valid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_radarpower_valid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_sensorid_valid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_maxdistance_valid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_maxdistance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_radarpower) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_outputtype) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_sensorid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_storeinnvm) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_sortindex) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_sendextinfo) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_sendquality) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_ctrlrelay) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_ctrlrelay_valid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_rcs_threshold) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'radarcfg_rcs_threshold_valid) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarConfiguration>)))
  "Returns string type for a message object of type '<RadarConfiguration>"
  "radar_conti/RadarConfiguration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarConfiguration)))
  "Returns string type for a message object of type 'RadarConfiguration"
  "radar_conti/RadarConfiguration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarConfiguration>)))
  "Returns md5sum for a message object of type '<RadarConfiguration>"
  "ab23258a6bff274c2b84163d46a17846")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarConfiguration)))
  "Returns md5sum for a message object of type 'RadarConfiguration"
  "ab23258a6bff274c2b84163d46a17846")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarConfiguration>)))
  "Returns full string definition for message of type '<RadarConfiguration>"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       RadarConfiguration~%#  Id:         0x200~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ExternalUnit~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-x|<-x|<-x|<-x|<-x|<-x|<-x|<-x|~%#           +---+---+---+---+---+---+---+---+~%#             |   |   |   |   |   |   |   +-- RadarCfg_MaxDistance_valid~%#             |   |   |   |   |   |   +-- RadarCfg_SensorID_valid~%#             |   |   |   |   |   +-- RadarCfg_RadarPower_valid~%#             |   |   |   |   +-- RadarCfg_OutputType_valid~%#             |   |   |   +-- RadarCfg_SendQuality_valid~%#             |   |   +-- RadarCfg_SendExtInfo_valid~%#             |   +-- RadarCfg_SortIndex_valid~%#             +-- RadarCfg_StoreInNVM_valid~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------x|   |   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                 +-- RadarCfg_MaxDistance~%#           +---+---+---+---+---+---+---+---+~%#         3 |   |   |   |   |   |   |   |   |~%#     B     +---+---+---+---+---+---+---+---+~%#     y   4 |<---------x|<-----x|<---------x|~%#     t     +---+---+---+---+---+---+---+---+~%#     e               |       |           +-- RadarCfg_SensorID~%#                     |       +-- RadarCfg_OutputType~%#                     +-- RadarCfg_RadarPower~%#           +---+---+---+---+---+---+---+---+~%#         5 |<-x|<---------x|<-x|<-x|<-x|<-x|~%#           +---+---+---+---+---+---+---+---+~%#             |           |   |   |   |   +-- RadarCfg_CtrlRelay_valid~%#             |           |   |   |   +-- RadarCfg_CtrlRelay~%#             |           |   |   +-- RadarCfg_SendQuality~%#             |           |   +-- RadarCfg_SendExtInfo~%#             |           +-- RadarCfg_SortIndex~%#             +-- RadarCfg_StoreInNVM~%#           +---+---+---+---+---+---+---+---+~%#         6 |   |   |   |   |<---------x|<-x|~%#           +---+---+---+---+---+---+---+---+~%#                                     |   +-- RadarCfg_RCS_Threshold_valid~%#                                     +-- RadarCfg_RCS_Threshold~%#           +---+---+---+---+---+---+---+---+~%#         7 |   |   |   |   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- RadarCfg_StoreInNVM_valid~%#       +-- RadarCfg_SortIndex_valid~%#       +-- RadarCfg_SendExtInfo_valid~%#       +-- RadarCfg_SendQuality_valid~%#       +-- RadarCfg_OutputType_valid~%#       +-- RadarCfg_RadarPower_valid~%#       +-- RadarCfg_SensorID_valid~%#       +-- RadarCfg_MaxDistance_valid~%#       +-- RadarCfg_MaxDistance~%#       +-- RadarCfg_RadarPower~%#       +-- RadarCfg_OutputType~%#       +-- RadarCfg_SensorID~%#       +-- RadarCfg_StoreInNVM~%#       +-- RadarCfg_SortIndex~%#       +-- RadarCfg_SendExtInfo~%#       +-- RadarCfg_SendQuality~%#       +-- RadarCfg_CtrlRelay~%#       +-- RadarCfg_CtrlRelay_valid~%#       +-- RadarCfg_RCS_Threshold~%#       +-- RadarCfg_RCS_Threshold_valid~%#~%#  ------------------------------------------------------------------------~%#~%~%std_msgs/Header header~%std_msgs/UInt8 radarcfg_storeinnvm_valid~%std_msgs/UInt8 radarcfg_sortindex_valid~%std_msgs/UInt8 radarcfg_sendextinfo_valid~%std_msgs/UInt8 radarcfg_sendquality_valid~%std_msgs/UInt8 radarcfg_outputtype_valid~%std_msgs/UInt8 radarcfg_radarpower_valid~%std_msgs/UInt8 radarcfg_sensorid_valid~%std_msgs/UInt8 radarcfg_maxdistance_valid~%std_msgs/UInt8 radarcfg_maxdistance~%std_msgs/UInt8 radarcfg_radarpower~%std_msgs/UInt8 radarcfg_outputtype~%std_msgs/UInt8 radarcfg_sensorid~%std_msgs/UInt8 radarcfg_storeinnvm~%std_msgs/UInt8 radarcfg_sortindex~%std_msgs/UInt8 radarcfg_sendextinfo~%std_msgs/UInt8 radarcfg_sendquality~%std_msgs/UInt8 radarcfg_ctrlrelay~%std_msgs/UInt8 radarcfg_ctrlrelay_valid~%std_msgs/UInt8 radarcfg_rcs_threshold~%std_msgs/UInt8 radarcfg_rcs_threshold_valid~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarConfiguration)))
  "Returns full string definition for message of type 'RadarConfiguration"
  (cl:format cl:nil "#  ------------------------------------------------------------------------~%#~%#  Name:       RadarConfiguration~%#  Id:         0x200~%#  Length:     8 bytes~%#  Cycle time: 0 ms~%#  Senders:    ExternalUnit~%#  Layout:~%#~%#                          Bit~%#~%#             7   6   5   4   3   2   1   0~%#           +---+---+---+---+---+---+---+---+~%#         0 |<-x|<-x|<-x|<-x|<-x|<-x|<-x|<-x|~%#           +---+---+---+---+---+---+---+---+~%#             |   |   |   |   |   |   |   +-- RadarCfg_MaxDistance_valid~%#             |   |   |   |   |   |   +-- RadarCfg_SensorID_valid~%#             |   |   |   |   |   +-- RadarCfg_RadarPower_valid~%#             |   |   |   |   +-- RadarCfg_OutputType_valid~%#             |   |   |   +-- RadarCfg_SendQuality_valid~%#             |   |   +-- RadarCfg_SendExtInfo_valid~%#             |   +-- RadarCfg_SortIndex_valid~%#             +-- RadarCfg_StoreInNVM_valid~%#           +---+---+---+---+---+---+---+---+~%#         1 |<------------------------------|~%#           +---+---+---+---+---+---+---+---+~%#         2 |------x|   |   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#                 +-- RadarCfg_MaxDistance~%#           +---+---+---+---+---+---+---+---+~%#         3 |   |   |   |   |   |   |   |   |~%#     B     +---+---+---+---+---+---+---+---+~%#     y   4 |<---------x|<-----x|<---------x|~%#     t     +---+---+---+---+---+---+---+---+~%#     e               |       |           +-- RadarCfg_SensorID~%#                     |       +-- RadarCfg_OutputType~%#                     +-- RadarCfg_RadarPower~%#           +---+---+---+---+---+---+---+---+~%#         5 |<-x|<---------x|<-x|<-x|<-x|<-x|~%#           +---+---+---+---+---+---+---+---+~%#             |           |   |   |   |   +-- RadarCfg_CtrlRelay_valid~%#             |           |   |   |   +-- RadarCfg_CtrlRelay~%#             |           |   |   +-- RadarCfg_SendQuality~%#             |           |   +-- RadarCfg_SendExtInfo~%#             |           +-- RadarCfg_SortIndex~%#             +-- RadarCfg_StoreInNVM~%#           +---+---+---+---+---+---+---+---+~%#         6 |   |   |   |   |<---------x|<-x|~%#           +---+---+---+---+---+---+---+---+~%#                                     |   +-- RadarCfg_RCS_Threshold_valid~%#                                     +-- RadarCfg_RCS_Threshold~%#           +---+---+---+---+---+---+---+---+~%#         7 |   |   |   |   |   |   |   |   |~%#           +---+---+---+---+---+---+---+---+~%#~%#  Signal tree:~%#~%#    -- {root}~%#       +-- RadarCfg_StoreInNVM_valid~%#       +-- RadarCfg_SortIndex_valid~%#       +-- RadarCfg_SendExtInfo_valid~%#       +-- RadarCfg_SendQuality_valid~%#       +-- RadarCfg_OutputType_valid~%#       +-- RadarCfg_RadarPower_valid~%#       +-- RadarCfg_SensorID_valid~%#       +-- RadarCfg_MaxDistance_valid~%#       +-- RadarCfg_MaxDistance~%#       +-- RadarCfg_RadarPower~%#       +-- RadarCfg_OutputType~%#       +-- RadarCfg_SensorID~%#       +-- RadarCfg_StoreInNVM~%#       +-- RadarCfg_SortIndex~%#       +-- RadarCfg_SendExtInfo~%#       +-- RadarCfg_SendQuality~%#       +-- RadarCfg_CtrlRelay~%#       +-- RadarCfg_CtrlRelay_valid~%#       +-- RadarCfg_RCS_Threshold~%#       +-- RadarCfg_RCS_Threshold_valid~%#~%#  ------------------------------------------------------------------------~%#~%~%std_msgs/Header header~%std_msgs/UInt8 radarcfg_storeinnvm_valid~%std_msgs/UInt8 radarcfg_sortindex_valid~%std_msgs/UInt8 radarcfg_sendextinfo_valid~%std_msgs/UInt8 radarcfg_sendquality_valid~%std_msgs/UInt8 radarcfg_outputtype_valid~%std_msgs/UInt8 radarcfg_radarpower_valid~%std_msgs/UInt8 radarcfg_sensorid_valid~%std_msgs/UInt8 radarcfg_maxdistance_valid~%std_msgs/UInt8 radarcfg_maxdistance~%std_msgs/UInt8 radarcfg_radarpower~%std_msgs/UInt8 radarcfg_outputtype~%std_msgs/UInt8 radarcfg_sensorid~%std_msgs/UInt8 radarcfg_storeinnvm~%std_msgs/UInt8 radarcfg_sortindex~%std_msgs/UInt8 radarcfg_sendextinfo~%std_msgs/UInt8 radarcfg_sendquality~%std_msgs/UInt8 radarcfg_ctrlrelay~%std_msgs/UInt8 radarcfg_ctrlrelay_valid~%std_msgs/UInt8 radarcfg_rcs_threshold~%std_msgs/UInt8 radarcfg_rcs_threshold_valid~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarConfiguration>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_storeinnvm_valid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_sortindex_valid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_sendextinfo_valid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_sendquality_valid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_outputtype_valid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_radarpower_valid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_sensorid_valid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_maxdistance_valid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_maxdistance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_radarpower))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_outputtype))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_sensorid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_storeinnvm))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_sortindex))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_sendextinfo))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_sendquality))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_ctrlrelay))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_ctrlrelay_valid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_rcs_threshold))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'radarcfg_rcs_threshold_valid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarConfiguration>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarConfiguration
    (cl:cons ':header (header msg))
    (cl:cons ':radarcfg_storeinnvm_valid (radarcfg_storeinnvm_valid msg))
    (cl:cons ':radarcfg_sortindex_valid (radarcfg_sortindex_valid msg))
    (cl:cons ':radarcfg_sendextinfo_valid (radarcfg_sendextinfo_valid msg))
    (cl:cons ':radarcfg_sendquality_valid (radarcfg_sendquality_valid msg))
    (cl:cons ':radarcfg_outputtype_valid (radarcfg_outputtype_valid msg))
    (cl:cons ':radarcfg_radarpower_valid (radarcfg_radarpower_valid msg))
    (cl:cons ':radarcfg_sensorid_valid (radarcfg_sensorid_valid msg))
    (cl:cons ':radarcfg_maxdistance_valid (radarcfg_maxdistance_valid msg))
    (cl:cons ':radarcfg_maxdistance (radarcfg_maxdistance msg))
    (cl:cons ':radarcfg_radarpower (radarcfg_radarpower msg))
    (cl:cons ':radarcfg_outputtype (radarcfg_outputtype msg))
    (cl:cons ':radarcfg_sensorid (radarcfg_sensorid msg))
    (cl:cons ':radarcfg_storeinnvm (radarcfg_storeinnvm msg))
    (cl:cons ':radarcfg_sortindex (radarcfg_sortindex msg))
    (cl:cons ':radarcfg_sendextinfo (radarcfg_sendextinfo msg))
    (cl:cons ':radarcfg_sendquality (radarcfg_sendquality msg))
    (cl:cons ':radarcfg_ctrlrelay (radarcfg_ctrlrelay msg))
    (cl:cons ':radarcfg_ctrlrelay_valid (radarcfg_ctrlrelay_valid msg))
    (cl:cons ':radarcfg_rcs_threshold (radarcfg_rcs_threshold msg))
    (cl:cons ':radarcfg_rcs_threshold_valid (radarcfg_rcs_threshold_valid msg))
))
