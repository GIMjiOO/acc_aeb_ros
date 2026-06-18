;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::RadarState)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'RadarState (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::RADARSTATE")
  (make-package "RADAR_CONTI::RADARSTATE"))

(in-package "ROS")
;;//! \htmlinclude RadarState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::RadarState
  :super ros::object
  :slots (_header _radarstate_nvmwritestatus _radarstate_nvmreadstatus _radarstate_maxdistancecfg _radarstate_persistent_error _radarstate_interference _radarstate_temperature_error _radarstate_temporary_error _radarstate_voltage_error _radarstate_radarpowercfg _radarstate_sortindex _radarstate_sensorid _radarstate_motionrxstate _radarstate_sendextinfocfg _radarstate_sendqualitycfg _radarstate_outputtypecfg _radarstate_ctrlrelaycfg _radarstate_rcs_threshold ))

(defmethod radar_conti::RadarState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radarstate_nvmwritestatus __radarstate_nvmwritestatus) (instance std_msgs::UInt8 :init))
    ((:radarstate_nvmreadstatus __radarstate_nvmreadstatus) (instance std_msgs::UInt8 :init))
    ((:radarstate_maxdistancecfg __radarstate_maxdistancecfg) (instance std_msgs::UInt8 :init))
    ((:radarstate_persistent_error __radarstate_persistent_error) (instance std_msgs::UInt8 :init))
    ((:radarstate_interference __radarstate_interference) (instance std_msgs::UInt8 :init))
    ((:radarstate_temperature_error __radarstate_temperature_error) (instance std_msgs::UInt8 :init))
    ((:radarstate_temporary_error __radarstate_temporary_error) (instance std_msgs::UInt8 :init))
    ((:radarstate_voltage_error __radarstate_voltage_error) (instance std_msgs::UInt8 :init))
    ((:radarstate_radarpowercfg __radarstate_radarpowercfg) (instance std_msgs::UInt8 :init))
    ((:radarstate_sortindex __radarstate_sortindex) (instance std_msgs::UInt8 :init))
    ((:radarstate_sensorid __radarstate_sensorid) (instance std_msgs::UInt8 :init))
    ((:radarstate_motionrxstate __radarstate_motionrxstate) (instance std_msgs::UInt8 :init))
    ((:radarstate_sendextinfocfg __radarstate_sendextinfocfg) (instance std_msgs::UInt8 :init))
    ((:radarstate_sendqualitycfg __radarstate_sendqualitycfg) (instance std_msgs::UInt8 :init))
    ((:radarstate_outputtypecfg __radarstate_outputtypecfg) (instance std_msgs::UInt8 :init))
    ((:radarstate_ctrlrelaycfg __radarstate_ctrlrelaycfg) (instance std_msgs::UInt8 :init))
    ((:radarstate_rcs_threshold __radarstate_rcs_threshold) (instance std_msgs::UInt8 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _radarstate_nvmwritestatus __radarstate_nvmwritestatus)
   (setq _radarstate_nvmreadstatus __radarstate_nvmreadstatus)
   (setq _radarstate_maxdistancecfg __radarstate_maxdistancecfg)
   (setq _radarstate_persistent_error __radarstate_persistent_error)
   (setq _radarstate_interference __radarstate_interference)
   (setq _radarstate_temperature_error __radarstate_temperature_error)
   (setq _radarstate_temporary_error __radarstate_temporary_error)
   (setq _radarstate_voltage_error __radarstate_voltage_error)
   (setq _radarstate_radarpowercfg __radarstate_radarpowercfg)
   (setq _radarstate_sortindex __radarstate_sortindex)
   (setq _radarstate_sensorid __radarstate_sensorid)
   (setq _radarstate_motionrxstate __radarstate_motionrxstate)
   (setq _radarstate_sendextinfocfg __radarstate_sendextinfocfg)
   (setq _radarstate_sendqualitycfg __radarstate_sendqualitycfg)
   (setq _radarstate_outputtypecfg __radarstate_outputtypecfg)
   (setq _radarstate_ctrlrelaycfg __radarstate_ctrlrelaycfg)
   (setq _radarstate_rcs_threshold __radarstate_rcs_threshold)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:radarstate_nvmwritestatus
   (&rest __radarstate_nvmwritestatus)
   (if (keywordp (car __radarstate_nvmwritestatus))
       (send* _radarstate_nvmwritestatus __radarstate_nvmwritestatus)
     (progn
       (if __radarstate_nvmwritestatus (setq _radarstate_nvmwritestatus (car __radarstate_nvmwritestatus)))
       _radarstate_nvmwritestatus)))
  (:radarstate_nvmreadstatus
   (&rest __radarstate_nvmreadstatus)
   (if (keywordp (car __radarstate_nvmreadstatus))
       (send* _radarstate_nvmreadstatus __radarstate_nvmreadstatus)
     (progn
       (if __radarstate_nvmreadstatus (setq _radarstate_nvmreadstatus (car __radarstate_nvmreadstatus)))
       _radarstate_nvmreadstatus)))
  (:radarstate_maxdistancecfg
   (&rest __radarstate_maxdistancecfg)
   (if (keywordp (car __radarstate_maxdistancecfg))
       (send* _radarstate_maxdistancecfg __radarstate_maxdistancecfg)
     (progn
       (if __radarstate_maxdistancecfg (setq _radarstate_maxdistancecfg (car __radarstate_maxdistancecfg)))
       _radarstate_maxdistancecfg)))
  (:radarstate_persistent_error
   (&rest __radarstate_persistent_error)
   (if (keywordp (car __radarstate_persistent_error))
       (send* _radarstate_persistent_error __radarstate_persistent_error)
     (progn
       (if __radarstate_persistent_error (setq _radarstate_persistent_error (car __radarstate_persistent_error)))
       _radarstate_persistent_error)))
  (:radarstate_interference
   (&rest __radarstate_interference)
   (if (keywordp (car __radarstate_interference))
       (send* _radarstate_interference __radarstate_interference)
     (progn
       (if __radarstate_interference (setq _radarstate_interference (car __radarstate_interference)))
       _radarstate_interference)))
  (:radarstate_temperature_error
   (&rest __radarstate_temperature_error)
   (if (keywordp (car __radarstate_temperature_error))
       (send* _radarstate_temperature_error __radarstate_temperature_error)
     (progn
       (if __radarstate_temperature_error (setq _radarstate_temperature_error (car __radarstate_temperature_error)))
       _radarstate_temperature_error)))
  (:radarstate_temporary_error
   (&rest __radarstate_temporary_error)
   (if (keywordp (car __radarstate_temporary_error))
       (send* _radarstate_temporary_error __radarstate_temporary_error)
     (progn
       (if __radarstate_temporary_error (setq _radarstate_temporary_error (car __radarstate_temporary_error)))
       _radarstate_temporary_error)))
  (:radarstate_voltage_error
   (&rest __radarstate_voltage_error)
   (if (keywordp (car __radarstate_voltage_error))
       (send* _radarstate_voltage_error __radarstate_voltage_error)
     (progn
       (if __radarstate_voltage_error (setq _radarstate_voltage_error (car __radarstate_voltage_error)))
       _radarstate_voltage_error)))
  (:radarstate_radarpowercfg
   (&rest __radarstate_radarpowercfg)
   (if (keywordp (car __radarstate_radarpowercfg))
       (send* _radarstate_radarpowercfg __radarstate_radarpowercfg)
     (progn
       (if __radarstate_radarpowercfg (setq _radarstate_radarpowercfg (car __radarstate_radarpowercfg)))
       _radarstate_radarpowercfg)))
  (:radarstate_sortindex
   (&rest __radarstate_sortindex)
   (if (keywordp (car __radarstate_sortindex))
       (send* _radarstate_sortindex __radarstate_sortindex)
     (progn
       (if __radarstate_sortindex (setq _radarstate_sortindex (car __radarstate_sortindex)))
       _radarstate_sortindex)))
  (:radarstate_sensorid
   (&rest __radarstate_sensorid)
   (if (keywordp (car __radarstate_sensorid))
       (send* _radarstate_sensorid __radarstate_sensorid)
     (progn
       (if __radarstate_sensorid (setq _radarstate_sensorid (car __radarstate_sensorid)))
       _radarstate_sensorid)))
  (:radarstate_motionrxstate
   (&rest __radarstate_motionrxstate)
   (if (keywordp (car __radarstate_motionrxstate))
       (send* _radarstate_motionrxstate __radarstate_motionrxstate)
     (progn
       (if __radarstate_motionrxstate (setq _radarstate_motionrxstate (car __radarstate_motionrxstate)))
       _radarstate_motionrxstate)))
  (:radarstate_sendextinfocfg
   (&rest __radarstate_sendextinfocfg)
   (if (keywordp (car __radarstate_sendextinfocfg))
       (send* _radarstate_sendextinfocfg __radarstate_sendextinfocfg)
     (progn
       (if __radarstate_sendextinfocfg (setq _radarstate_sendextinfocfg (car __radarstate_sendextinfocfg)))
       _radarstate_sendextinfocfg)))
  (:radarstate_sendqualitycfg
   (&rest __radarstate_sendqualitycfg)
   (if (keywordp (car __radarstate_sendqualitycfg))
       (send* _radarstate_sendqualitycfg __radarstate_sendqualitycfg)
     (progn
       (if __radarstate_sendqualitycfg (setq _radarstate_sendqualitycfg (car __radarstate_sendqualitycfg)))
       _radarstate_sendqualitycfg)))
  (:radarstate_outputtypecfg
   (&rest __radarstate_outputtypecfg)
   (if (keywordp (car __radarstate_outputtypecfg))
       (send* _radarstate_outputtypecfg __radarstate_outputtypecfg)
     (progn
       (if __radarstate_outputtypecfg (setq _radarstate_outputtypecfg (car __radarstate_outputtypecfg)))
       _radarstate_outputtypecfg)))
  (:radarstate_ctrlrelaycfg
   (&rest __radarstate_ctrlrelaycfg)
   (if (keywordp (car __radarstate_ctrlrelaycfg))
       (send* _radarstate_ctrlrelaycfg __radarstate_ctrlrelaycfg)
     (progn
       (if __radarstate_ctrlrelaycfg (setq _radarstate_ctrlrelaycfg (car __radarstate_ctrlrelaycfg)))
       _radarstate_ctrlrelaycfg)))
  (:radarstate_rcs_threshold
   (&rest __radarstate_rcs_threshold)
   (if (keywordp (car __radarstate_rcs_threshold))
       (send* _radarstate_rcs_threshold __radarstate_rcs_threshold)
     (progn
       (if __radarstate_rcs_threshold (setq _radarstate_rcs_threshold (car __radarstate_rcs_threshold)))
       _radarstate_rcs_threshold)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt8 _radarstate_nvmwritestatus
    (send _radarstate_nvmwritestatus :serialization-length)
    ;; std_msgs/UInt8 _radarstate_nvmreadstatus
    (send _radarstate_nvmreadstatus :serialization-length)
    ;; std_msgs/UInt8 _radarstate_maxdistancecfg
    (send _radarstate_maxdistancecfg :serialization-length)
    ;; std_msgs/UInt8 _radarstate_persistent_error
    (send _radarstate_persistent_error :serialization-length)
    ;; std_msgs/UInt8 _radarstate_interference
    (send _radarstate_interference :serialization-length)
    ;; std_msgs/UInt8 _radarstate_temperature_error
    (send _radarstate_temperature_error :serialization-length)
    ;; std_msgs/UInt8 _radarstate_temporary_error
    (send _radarstate_temporary_error :serialization-length)
    ;; std_msgs/UInt8 _radarstate_voltage_error
    (send _radarstate_voltage_error :serialization-length)
    ;; std_msgs/UInt8 _radarstate_radarpowercfg
    (send _radarstate_radarpowercfg :serialization-length)
    ;; std_msgs/UInt8 _radarstate_sortindex
    (send _radarstate_sortindex :serialization-length)
    ;; std_msgs/UInt8 _radarstate_sensorid
    (send _radarstate_sensorid :serialization-length)
    ;; std_msgs/UInt8 _radarstate_motionrxstate
    (send _radarstate_motionrxstate :serialization-length)
    ;; std_msgs/UInt8 _radarstate_sendextinfocfg
    (send _radarstate_sendextinfocfg :serialization-length)
    ;; std_msgs/UInt8 _radarstate_sendqualitycfg
    (send _radarstate_sendqualitycfg :serialization-length)
    ;; std_msgs/UInt8 _radarstate_outputtypecfg
    (send _radarstate_outputtypecfg :serialization-length)
    ;; std_msgs/UInt8 _radarstate_ctrlrelaycfg
    (send _radarstate_ctrlrelaycfg :serialization-length)
    ;; std_msgs/UInt8 _radarstate_rcs_threshold
    (send _radarstate_rcs_threshold :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt8 _radarstate_nvmwritestatus
       (send _radarstate_nvmwritestatus :serialize s)
     ;; std_msgs/UInt8 _radarstate_nvmreadstatus
       (send _radarstate_nvmreadstatus :serialize s)
     ;; std_msgs/UInt8 _radarstate_maxdistancecfg
       (send _radarstate_maxdistancecfg :serialize s)
     ;; std_msgs/UInt8 _radarstate_persistent_error
       (send _radarstate_persistent_error :serialize s)
     ;; std_msgs/UInt8 _radarstate_interference
       (send _radarstate_interference :serialize s)
     ;; std_msgs/UInt8 _radarstate_temperature_error
       (send _radarstate_temperature_error :serialize s)
     ;; std_msgs/UInt8 _radarstate_temporary_error
       (send _radarstate_temporary_error :serialize s)
     ;; std_msgs/UInt8 _radarstate_voltage_error
       (send _radarstate_voltage_error :serialize s)
     ;; std_msgs/UInt8 _radarstate_radarpowercfg
       (send _radarstate_radarpowercfg :serialize s)
     ;; std_msgs/UInt8 _radarstate_sortindex
       (send _radarstate_sortindex :serialize s)
     ;; std_msgs/UInt8 _radarstate_sensorid
       (send _radarstate_sensorid :serialize s)
     ;; std_msgs/UInt8 _radarstate_motionrxstate
       (send _radarstate_motionrxstate :serialize s)
     ;; std_msgs/UInt8 _radarstate_sendextinfocfg
       (send _radarstate_sendextinfocfg :serialize s)
     ;; std_msgs/UInt8 _radarstate_sendqualitycfg
       (send _radarstate_sendqualitycfg :serialize s)
     ;; std_msgs/UInt8 _radarstate_outputtypecfg
       (send _radarstate_outputtypecfg :serialize s)
     ;; std_msgs/UInt8 _radarstate_ctrlrelaycfg
       (send _radarstate_ctrlrelaycfg :serialize s)
     ;; std_msgs/UInt8 _radarstate_rcs_threshold
       (send _radarstate_rcs_threshold :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt8 _radarstate_nvmwritestatus
     (send _radarstate_nvmwritestatus :deserialize buf ptr-) (incf ptr- (send _radarstate_nvmwritestatus :serialization-length))
   ;; std_msgs/UInt8 _radarstate_nvmreadstatus
     (send _radarstate_nvmreadstatus :deserialize buf ptr-) (incf ptr- (send _radarstate_nvmreadstatus :serialization-length))
   ;; std_msgs/UInt8 _radarstate_maxdistancecfg
     (send _radarstate_maxdistancecfg :deserialize buf ptr-) (incf ptr- (send _radarstate_maxdistancecfg :serialization-length))
   ;; std_msgs/UInt8 _radarstate_persistent_error
     (send _radarstate_persistent_error :deserialize buf ptr-) (incf ptr- (send _radarstate_persistent_error :serialization-length))
   ;; std_msgs/UInt8 _radarstate_interference
     (send _radarstate_interference :deserialize buf ptr-) (incf ptr- (send _radarstate_interference :serialization-length))
   ;; std_msgs/UInt8 _radarstate_temperature_error
     (send _radarstate_temperature_error :deserialize buf ptr-) (incf ptr- (send _radarstate_temperature_error :serialization-length))
   ;; std_msgs/UInt8 _radarstate_temporary_error
     (send _radarstate_temporary_error :deserialize buf ptr-) (incf ptr- (send _radarstate_temporary_error :serialization-length))
   ;; std_msgs/UInt8 _radarstate_voltage_error
     (send _radarstate_voltage_error :deserialize buf ptr-) (incf ptr- (send _radarstate_voltage_error :serialization-length))
   ;; std_msgs/UInt8 _radarstate_radarpowercfg
     (send _radarstate_radarpowercfg :deserialize buf ptr-) (incf ptr- (send _radarstate_radarpowercfg :serialization-length))
   ;; std_msgs/UInt8 _radarstate_sortindex
     (send _radarstate_sortindex :deserialize buf ptr-) (incf ptr- (send _radarstate_sortindex :serialization-length))
   ;; std_msgs/UInt8 _radarstate_sensorid
     (send _radarstate_sensorid :deserialize buf ptr-) (incf ptr- (send _radarstate_sensorid :serialization-length))
   ;; std_msgs/UInt8 _radarstate_motionrxstate
     (send _radarstate_motionrxstate :deserialize buf ptr-) (incf ptr- (send _radarstate_motionrxstate :serialization-length))
   ;; std_msgs/UInt8 _radarstate_sendextinfocfg
     (send _radarstate_sendextinfocfg :deserialize buf ptr-) (incf ptr- (send _radarstate_sendextinfocfg :serialization-length))
   ;; std_msgs/UInt8 _radarstate_sendqualitycfg
     (send _radarstate_sendqualitycfg :deserialize buf ptr-) (incf ptr- (send _radarstate_sendqualitycfg :serialization-length))
   ;; std_msgs/UInt8 _radarstate_outputtypecfg
     (send _radarstate_outputtypecfg :deserialize buf ptr-) (incf ptr- (send _radarstate_outputtypecfg :serialization-length))
   ;; std_msgs/UInt8 _radarstate_ctrlrelaycfg
     (send _radarstate_ctrlrelaycfg :deserialize buf ptr-) (incf ptr- (send _radarstate_ctrlrelaycfg :serialization-length))
   ;; std_msgs/UInt8 _radarstate_rcs_threshold
     (send _radarstate_rcs_threshold :deserialize buf ptr-) (incf ptr- (send _radarstate_rcs_threshold :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::RadarState :md5sum-) "a2a8e3e1ff2df867bbb8f3f07e04a77f")
(setf (get radar_conti::RadarState :datatype-) "radar_conti/RadarState")
(setf (get radar_conti::RadarState :definition-)
      "#  ------------------------------------------------------------------------
#
#  Name:       RadarState
#  Id:         0x201
#  Length:     8 bytes
#  Cycle time: 50 ms
#  Senders:    ARS_ISF
#  Layout:
#
#                          Bit
#
#             7   6   5   4   3   2   1   0
#           +---+---+---+---+---+---+---+---+
#         0 |<-x|<-x|   |   |   |   |   |   |
#           +---+---+---+---+---+---+---+---+
#             |   +-- RadarState_NVMReadStatus
#             +-- RadarState_NVMwriteStatus
#           +---+---+---+---+---+---+---+---+
#         1 |<------------------------------|
#           +---+---+---+---+---+---+---+---+
#         2 |------x|<-x|<-x|<-x|<-x|<-x|   |
#           +---+---+---+---+---+---+---+---+
#                 |   |   |   |   |   +-- RadarState_Voltage_Error
#                 |   |   |   |   +-- RadarState_Temporary_Error
#                 |   |   |   +-- RadarState_Temperature_Error
#                 |   |   +-- RadarState_Interference
#                 |   +-- RadarState_Persistent_Error
#                 +-- RadarState_MaxDistanceCfg
#           +---+---+---+---+---+---+---+---+
#     B   3 |   |   |   |   |   |   |<------|
#     y     +---+---+---+---+---+---+---+---+
#     t   4 |--x|<---------x|   |<---------x|
#     e     +---+---+---+---+---+---+---+---+
#             |           |               +-- RadarState_SensorID
#             |           +-- RadarState_SortIndex
#             +-- RadarState_RadarPowerCfg
#           +---+---+---+---+---+---+---+---+
#         5 |<-----x|<-x|<-x|<-----x|<-x|   |
#           +---+---+---+---+---+---+---+---+
#                 |   |   |       |   +-- RadarState_CtrlRelayCfg
#                 |   |   |       +-- RadarState_OutputTypeCfg
#                 |   |   +-- RadarState_SendQualityCfg
#                 |   +-- RadarState_SendExtInfoCfg
#                 +-- RadarState_MotionRxState
#           +---+---+---+---+---+---+---+---+
#         6 |   |   |   |   |   |   |   |   |
#           +---+---+---+---+---+---+---+---+
#         7 |   |   |   |<---------x|   |   |
#           +---+---+---+---+---+---+---+---+
#                                 +-- RadarState_RCS_Threshold
#
#  Signal tree:
#
#    -- {root}
#       +-- RadarState_NVMwriteStatus
#       +-- RadarState_NVMReadStatus
#       +-- RadarState_MaxDistanceCfg
#       +-- RadarState_Persistent_Error
#       +-- RadarState_Interference
#       +-- RadarState_Temperature_Error
#       +-- RadarState_Temporary_Error
#       +-- RadarState_Voltage_Error
#       +-- RadarState_RadarPowerCfg
#       +-- RadarState_SortIndex
#       +-- RadarState_SensorID
#       +-- RadarState_MotionRxState
#       +-- RadarState_SendExtInfoCfg
#       +-- RadarState_SendQualityCfg
#       +-- RadarState_OutputTypeCfg
#       +-- RadarState_CtrlRelayCfg
#       +-- RadarState_RCS_Threshold
#
#  ------------------------------------------------------------------------
#
std_msgs/Header header
std_msgs/UInt8 radarstate_nvmwritestatus
std_msgs/UInt8 radarstate_nvmreadstatus
std_msgs/UInt8 radarstate_maxdistancecfg
std_msgs/UInt8 radarstate_persistent_error
std_msgs/UInt8 radarstate_interference
std_msgs/UInt8 radarstate_temperature_error
std_msgs/UInt8 radarstate_temporary_error
std_msgs/UInt8 radarstate_voltage_error
std_msgs/UInt8 radarstate_radarpowercfg
std_msgs/UInt8 radarstate_sortindex
std_msgs/UInt8 radarstate_sensorid
std_msgs/UInt8 radarstate_motionrxstate
std_msgs/UInt8 radarstate_sendextinfocfg
std_msgs/UInt8 radarstate_sendqualitycfg
std_msgs/UInt8 radarstate_outputtypecfg
std_msgs/UInt8 radarstate_ctrlrelaycfg
std_msgs/UInt8 radarstate_rcs_threshold
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: std_msgs/UInt8
uint8 data

")



(provide :radar_conti/RadarState "a2a8e3e1ff2df867bbb8f3f07e04a77f")


