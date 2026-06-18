;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::RadarConfiguration)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'RadarConfiguration (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::RADARCONFIGURATION")
  (make-package "RADAR_CONTI::RADARCONFIGURATION"))

(in-package "ROS")
;;//! \htmlinclude RadarConfiguration.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::RadarConfiguration
  :super ros::object
  :slots (_header _radarcfg_storeinnvm_valid _radarcfg_sortindex_valid _radarcfg_sendextinfo_valid _radarcfg_sendquality_valid _radarcfg_outputtype_valid _radarcfg_radarpower_valid _radarcfg_sensorid_valid _radarcfg_maxdistance_valid _radarcfg_maxdistance _radarcfg_radarpower _radarcfg_outputtype _radarcfg_sensorid _radarcfg_storeinnvm _radarcfg_sortindex _radarcfg_sendextinfo _radarcfg_sendquality _radarcfg_ctrlrelay _radarcfg_ctrlrelay_valid _radarcfg_rcs_threshold _radarcfg_rcs_threshold_valid ))

(defmethod radar_conti::RadarConfiguration
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:radarcfg_storeinnvm_valid __radarcfg_storeinnvm_valid) (instance std_msgs::UInt8 :init))
    ((:radarcfg_sortindex_valid __radarcfg_sortindex_valid) (instance std_msgs::UInt8 :init))
    ((:radarcfg_sendextinfo_valid __radarcfg_sendextinfo_valid) (instance std_msgs::UInt8 :init))
    ((:radarcfg_sendquality_valid __radarcfg_sendquality_valid) (instance std_msgs::UInt8 :init))
    ((:radarcfg_outputtype_valid __radarcfg_outputtype_valid) (instance std_msgs::UInt8 :init))
    ((:radarcfg_radarpower_valid __radarcfg_radarpower_valid) (instance std_msgs::UInt8 :init))
    ((:radarcfg_sensorid_valid __radarcfg_sensorid_valid) (instance std_msgs::UInt8 :init))
    ((:radarcfg_maxdistance_valid __radarcfg_maxdistance_valid) (instance std_msgs::UInt8 :init))
    ((:radarcfg_maxdistance __radarcfg_maxdistance) (instance std_msgs::UInt8 :init))
    ((:radarcfg_radarpower __radarcfg_radarpower) (instance std_msgs::UInt8 :init))
    ((:radarcfg_outputtype __radarcfg_outputtype) (instance std_msgs::UInt8 :init))
    ((:radarcfg_sensorid __radarcfg_sensorid) (instance std_msgs::UInt8 :init))
    ((:radarcfg_storeinnvm __radarcfg_storeinnvm) (instance std_msgs::UInt8 :init))
    ((:radarcfg_sortindex __radarcfg_sortindex) (instance std_msgs::UInt8 :init))
    ((:radarcfg_sendextinfo __radarcfg_sendextinfo) (instance std_msgs::UInt8 :init))
    ((:radarcfg_sendquality __radarcfg_sendquality) (instance std_msgs::UInt8 :init))
    ((:radarcfg_ctrlrelay __radarcfg_ctrlrelay) (instance std_msgs::UInt8 :init))
    ((:radarcfg_ctrlrelay_valid __radarcfg_ctrlrelay_valid) (instance std_msgs::UInt8 :init))
    ((:radarcfg_rcs_threshold __radarcfg_rcs_threshold) (instance std_msgs::UInt8 :init))
    ((:radarcfg_rcs_threshold_valid __radarcfg_rcs_threshold_valid) (instance std_msgs::UInt8 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _radarcfg_storeinnvm_valid __radarcfg_storeinnvm_valid)
   (setq _radarcfg_sortindex_valid __radarcfg_sortindex_valid)
   (setq _radarcfg_sendextinfo_valid __radarcfg_sendextinfo_valid)
   (setq _radarcfg_sendquality_valid __radarcfg_sendquality_valid)
   (setq _radarcfg_outputtype_valid __radarcfg_outputtype_valid)
   (setq _radarcfg_radarpower_valid __radarcfg_radarpower_valid)
   (setq _radarcfg_sensorid_valid __radarcfg_sensorid_valid)
   (setq _radarcfg_maxdistance_valid __radarcfg_maxdistance_valid)
   (setq _radarcfg_maxdistance __radarcfg_maxdistance)
   (setq _radarcfg_radarpower __radarcfg_radarpower)
   (setq _radarcfg_outputtype __radarcfg_outputtype)
   (setq _radarcfg_sensorid __radarcfg_sensorid)
   (setq _radarcfg_storeinnvm __radarcfg_storeinnvm)
   (setq _radarcfg_sortindex __radarcfg_sortindex)
   (setq _radarcfg_sendextinfo __radarcfg_sendextinfo)
   (setq _radarcfg_sendquality __radarcfg_sendquality)
   (setq _radarcfg_ctrlrelay __radarcfg_ctrlrelay)
   (setq _radarcfg_ctrlrelay_valid __radarcfg_ctrlrelay_valid)
   (setq _radarcfg_rcs_threshold __radarcfg_rcs_threshold)
   (setq _radarcfg_rcs_threshold_valid __radarcfg_rcs_threshold_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:radarcfg_storeinnvm_valid
   (&rest __radarcfg_storeinnvm_valid)
   (if (keywordp (car __radarcfg_storeinnvm_valid))
       (send* _radarcfg_storeinnvm_valid __radarcfg_storeinnvm_valid)
     (progn
       (if __radarcfg_storeinnvm_valid (setq _radarcfg_storeinnvm_valid (car __radarcfg_storeinnvm_valid)))
       _radarcfg_storeinnvm_valid)))
  (:radarcfg_sortindex_valid
   (&rest __radarcfg_sortindex_valid)
   (if (keywordp (car __radarcfg_sortindex_valid))
       (send* _radarcfg_sortindex_valid __radarcfg_sortindex_valid)
     (progn
       (if __radarcfg_sortindex_valid (setq _radarcfg_sortindex_valid (car __radarcfg_sortindex_valid)))
       _radarcfg_sortindex_valid)))
  (:radarcfg_sendextinfo_valid
   (&rest __radarcfg_sendextinfo_valid)
   (if (keywordp (car __radarcfg_sendextinfo_valid))
       (send* _radarcfg_sendextinfo_valid __radarcfg_sendextinfo_valid)
     (progn
       (if __radarcfg_sendextinfo_valid (setq _radarcfg_sendextinfo_valid (car __radarcfg_sendextinfo_valid)))
       _radarcfg_sendextinfo_valid)))
  (:radarcfg_sendquality_valid
   (&rest __radarcfg_sendquality_valid)
   (if (keywordp (car __radarcfg_sendquality_valid))
       (send* _radarcfg_sendquality_valid __radarcfg_sendquality_valid)
     (progn
       (if __radarcfg_sendquality_valid (setq _radarcfg_sendquality_valid (car __radarcfg_sendquality_valid)))
       _radarcfg_sendquality_valid)))
  (:radarcfg_outputtype_valid
   (&rest __radarcfg_outputtype_valid)
   (if (keywordp (car __radarcfg_outputtype_valid))
       (send* _radarcfg_outputtype_valid __radarcfg_outputtype_valid)
     (progn
       (if __radarcfg_outputtype_valid (setq _radarcfg_outputtype_valid (car __radarcfg_outputtype_valid)))
       _radarcfg_outputtype_valid)))
  (:radarcfg_radarpower_valid
   (&rest __radarcfg_radarpower_valid)
   (if (keywordp (car __radarcfg_radarpower_valid))
       (send* _radarcfg_radarpower_valid __radarcfg_radarpower_valid)
     (progn
       (if __radarcfg_radarpower_valid (setq _radarcfg_radarpower_valid (car __radarcfg_radarpower_valid)))
       _radarcfg_radarpower_valid)))
  (:radarcfg_sensorid_valid
   (&rest __radarcfg_sensorid_valid)
   (if (keywordp (car __radarcfg_sensorid_valid))
       (send* _radarcfg_sensorid_valid __radarcfg_sensorid_valid)
     (progn
       (if __radarcfg_sensorid_valid (setq _radarcfg_sensorid_valid (car __radarcfg_sensorid_valid)))
       _radarcfg_sensorid_valid)))
  (:radarcfg_maxdistance_valid
   (&rest __radarcfg_maxdistance_valid)
   (if (keywordp (car __radarcfg_maxdistance_valid))
       (send* _radarcfg_maxdistance_valid __radarcfg_maxdistance_valid)
     (progn
       (if __radarcfg_maxdistance_valid (setq _radarcfg_maxdistance_valid (car __radarcfg_maxdistance_valid)))
       _radarcfg_maxdistance_valid)))
  (:radarcfg_maxdistance
   (&rest __radarcfg_maxdistance)
   (if (keywordp (car __radarcfg_maxdistance))
       (send* _radarcfg_maxdistance __radarcfg_maxdistance)
     (progn
       (if __radarcfg_maxdistance (setq _radarcfg_maxdistance (car __radarcfg_maxdistance)))
       _radarcfg_maxdistance)))
  (:radarcfg_radarpower
   (&rest __radarcfg_radarpower)
   (if (keywordp (car __radarcfg_radarpower))
       (send* _radarcfg_radarpower __radarcfg_radarpower)
     (progn
       (if __radarcfg_radarpower (setq _radarcfg_radarpower (car __radarcfg_radarpower)))
       _radarcfg_radarpower)))
  (:radarcfg_outputtype
   (&rest __radarcfg_outputtype)
   (if (keywordp (car __radarcfg_outputtype))
       (send* _radarcfg_outputtype __radarcfg_outputtype)
     (progn
       (if __radarcfg_outputtype (setq _radarcfg_outputtype (car __radarcfg_outputtype)))
       _radarcfg_outputtype)))
  (:radarcfg_sensorid
   (&rest __radarcfg_sensorid)
   (if (keywordp (car __radarcfg_sensorid))
       (send* _radarcfg_sensorid __radarcfg_sensorid)
     (progn
       (if __radarcfg_sensorid (setq _radarcfg_sensorid (car __radarcfg_sensorid)))
       _radarcfg_sensorid)))
  (:radarcfg_storeinnvm
   (&rest __radarcfg_storeinnvm)
   (if (keywordp (car __radarcfg_storeinnvm))
       (send* _radarcfg_storeinnvm __radarcfg_storeinnvm)
     (progn
       (if __radarcfg_storeinnvm (setq _radarcfg_storeinnvm (car __radarcfg_storeinnvm)))
       _radarcfg_storeinnvm)))
  (:radarcfg_sortindex
   (&rest __radarcfg_sortindex)
   (if (keywordp (car __radarcfg_sortindex))
       (send* _radarcfg_sortindex __radarcfg_sortindex)
     (progn
       (if __radarcfg_sortindex (setq _radarcfg_sortindex (car __radarcfg_sortindex)))
       _radarcfg_sortindex)))
  (:radarcfg_sendextinfo
   (&rest __radarcfg_sendextinfo)
   (if (keywordp (car __radarcfg_sendextinfo))
       (send* _radarcfg_sendextinfo __radarcfg_sendextinfo)
     (progn
       (if __radarcfg_sendextinfo (setq _radarcfg_sendextinfo (car __radarcfg_sendextinfo)))
       _radarcfg_sendextinfo)))
  (:radarcfg_sendquality
   (&rest __radarcfg_sendquality)
   (if (keywordp (car __radarcfg_sendquality))
       (send* _radarcfg_sendquality __radarcfg_sendquality)
     (progn
       (if __radarcfg_sendquality (setq _radarcfg_sendquality (car __radarcfg_sendquality)))
       _radarcfg_sendquality)))
  (:radarcfg_ctrlrelay
   (&rest __radarcfg_ctrlrelay)
   (if (keywordp (car __radarcfg_ctrlrelay))
       (send* _radarcfg_ctrlrelay __radarcfg_ctrlrelay)
     (progn
       (if __radarcfg_ctrlrelay (setq _radarcfg_ctrlrelay (car __radarcfg_ctrlrelay)))
       _radarcfg_ctrlrelay)))
  (:radarcfg_ctrlrelay_valid
   (&rest __radarcfg_ctrlrelay_valid)
   (if (keywordp (car __radarcfg_ctrlrelay_valid))
       (send* _radarcfg_ctrlrelay_valid __radarcfg_ctrlrelay_valid)
     (progn
       (if __radarcfg_ctrlrelay_valid (setq _radarcfg_ctrlrelay_valid (car __radarcfg_ctrlrelay_valid)))
       _radarcfg_ctrlrelay_valid)))
  (:radarcfg_rcs_threshold
   (&rest __radarcfg_rcs_threshold)
   (if (keywordp (car __radarcfg_rcs_threshold))
       (send* _radarcfg_rcs_threshold __radarcfg_rcs_threshold)
     (progn
       (if __radarcfg_rcs_threshold (setq _radarcfg_rcs_threshold (car __radarcfg_rcs_threshold)))
       _radarcfg_rcs_threshold)))
  (:radarcfg_rcs_threshold_valid
   (&rest __radarcfg_rcs_threshold_valid)
   (if (keywordp (car __radarcfg_rcs_threshold_valid))
       (send* _radarcfg_rcs_threshold_valid __radarcfg_rcs_threshold_valid)
     (progn
       (if __radarcfg_rcs_threshold_valid (setq _radarcfg_rcs_threshold_valid (car __radarcfg_rcs_threshold_valid)))
       _radarcfg_rcs_threshold_valid)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_storeinnvm_valid
    (send _radarcfg_storeinnvm_valid :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_sortindex_valid
    (send _radarcfg_sortindex_valid :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_sendextinfo_valid
    (send _radarcfg_sendextinfo_valid :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_sendquality_valid
    (send _radarcfg_sendquality_valid :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_outputtype_valid
    (send _radarcfg_outputtype_valid :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_radarpower_valid
    (send _radarcfg_radarpower_valid :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_sensorid_valid
    (send _radarcfg_sensorid_valid :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_maxdistance_valid
    (send _radarcfg_maxdistance_valid :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_maxdistance
    (send _radarcfg_maxdistance :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_radarpower
    (send _radarcfg_radarpower :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_outputtype
    (send _radarcfg_outputtype :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_sensorid
    (send _radarcfg_sensorid :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_storeinnvm
    (send _radarcfg_storeinnvm :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_sortindex
    (send _radarcfg_sortindex :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_sendextinfo
    (send _radarcfg_sendextinfo :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_sendquality
    (send _radarcfg_sendquality :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_ctrlrelay
    (send _radarcfg_ctrlrelay :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_ctrlrelay_valid
    (send _radarcfg_ctrlrelay_valid :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_rcs_threshold
    (send _radarcfg_rcs_threshold :serialization-length)
    ;; std_msgs/UInt8 _radarcfg_rcs_threshold_valid
    (send _radarcfg_rcs_threshold_valid :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt8 _radarcfg_storeinnvm_valid
       (send _radarcfg_storeinnvm_valid :serialize s)
     ;; std_msgs/UInt8 _radarcfg_sortindex_valid
       (send _radarcfg_sortindex_valid :serialize s)
     ;; std_msgs/UInt8 _radarcfg_sendextinfo_valid
       (send _radarcfg_sendextinfo_valid :serialize s)
     ;; std_msgs/UInt8 _radarcfg_sendquality_valid
       (send _radarcfg_sendquality_valid :serialize s)
     ;; std_msgs/UInt8 _radarcfg_outputtype_valid
       (send _radarcfg_outputtype_valid :serialize s)
     ;; std_msgs/UInt8 _radarcfg_radarpower_valid
       (send _radarcfg_radarpower_valid :serialize s)
     ;; std_msgs/UInt8 _radarcfg_sensorid_valid
       (send _radarcfg_sensorid_valid :serialize s)
     ;; std_msgs/UInt8 _radarcfg_maxdistance_valid
       (send _radarcfg_maxdistance_valid :serialize s)
     ;; std_msgs/UInt8 _radarcfg_maxdistance
       (send _radarcfg_maxdistance :serialize s)
     ;; std_msgs/UInt8 _radarcfg_radarpower
       (send _radarcfg_radarpower :serialize s)
     ;; std_msgs/UInt8 _radarcfg_outputtype
       (send _radarcfg_outputtype :serialize s)
     ;; std_msgs/UInt8 _radarcfg_sensorid
       (send _radarcfg_sensorid :serialize s)
     ;; std_msgs/UInt8 _radarcfg_storeinnvm
       (send _radarcfg_storeinnvm :serialize s)
     ;; std_msgs/UInt8 _radarcfg_sortindex
       (send _radarcfg_sortindex :serialize s)
     ;; std_msgs/UInt8 _radarcfg_sendextinfo
       (send _radarcfg_sendextinfo :serialize s)
     ;; std_msgs/UInt8 _radarcfg_sendquality
       (send _radarcfg_sendquality :serialize s)
     ;; std_msgs/UInt8 _radarcfg_ctrlrelay
       (send _radarcfg_ctrlrelay :serialize s)
     ;; std_msgs/UInt8 _radarcfg_ctrlrelay_valid
       (send _radarcfg_ctrlrelay_valid :serialize s)
     ;; std_msgs/UInt8 _radarcfg_rcs_threshold
       (send _radarcfg_rcs_threshold :serialize s)
     ;; std_msgs/UInt8 _radarcfg_rcs_threshold_valid
       (send _radarcfg_rcs_threshold_valid :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_storeinnvm_valid
     (send _radarcfg_storeinnvm_valid :deserialize buf ptr-) (incf ptr- (send _radarcfg_storeinnvm_valid :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_sortindex_valid
     (send _radarcfg_sortindex_valid :deserialize buf ptr-) (incf ptr- (send _radarcfg_sortindex_valid :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_sendextinfo_valid
     (send _radarcfg_sendextinfo_valid :deserialize buf ptr-) (incf ptr- (send _radarcfg_sendextinfo_valid :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_sendquality_valid
     (send _radarcfg_sendquality_valid :deserialize buf ptr-) (incf ptr- (send _radarcfg_sendquality_valid :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_outputtype_valid
     (send _radarcfg_outputtype_valid :deserialize buf ptr-) (incf ptr- (send _radarcfg_outputtype_valid :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_radarpower_valid
     (send _radarcfg_radarpower_valid :deserialize buf ptr-) (incf ptr- (send _radarcfg_radarpower_valid :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_sensorid_valid
     (send _radarcfg_sensorid_valid :deserialize buf ptr-) (incf ptr- (send _radarcfg_sensorid_valid :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_maxdistance_valid
     (send _radarcfg_maxdistance_valid :deserialize buf ptr-) (incf ptr- (send _radarcfg_maxdistance_valid :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_maxdistance
     (send _radarcfg_maxdistance :deserialize buf ptr-) (incf ptr- (send _radarcfg_maxdistance :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_radarpower
     (send _radarcfg_radarpower :deserialize buf ptr-) (incf ptr- (send _radarcfg_radarpower :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_outputtype
     (send _radarcfg_outputtype :deserialize buf ptr-) (incf ptr- (send _radarcfg_outputtype :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_sensorid
     (send _radarcfg_sensorid :deserialize buf ptr-) (incf ptr- (send _radarcfg_sensorid :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_storeinnvm
     (send _radarcfg_storeinnvm :deserialize buf ptr-) (incf ptr- (send _radarcfg_storeinnvm :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_sortindex
     (send _radarcfg_sortindex :deserialize buf ptr-) (incf ptr- (send _radarcfg_sortindex :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_sendextinfo
     (send _radarcfg_sendextinfo :deserialize buf ptr-) (incf ptr- (send _radarcfg_sendextinfo :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_sendquality
     (send _radarcfg_sendquality :deserialize buf ptr-) (incf ptr- (send _radarcfg_sendquality :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_ctrlrelay
     (send _radarcfg_ctrlrelay :deserialize buf ptr-) (incf ptr- (send _radarcfg_ctrlrelay :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_ctrlrelay_valid
     (send _radarcfg_ctrlrelay_valid :deserialize buf ptr-) (incf ptr- (send _radarcfg_ctrlrelay_valid :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_rcs_threshold
     (send _radarcfg_rcs_threshold :deserialize buf ptr-) (incf ptr- (send _radarcfg_rcs_threshold :serialization-length))
   ;; std_msgs/UInt8 _radarcfg_rcs_threshold_valid
     (send _radarcfg_rcs_threshold_valid :deserialize buf ptr-) (incf ptr- (send _radarcfg_rcs_threshold_valid :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::RadarConfiguration :md5sum-) "ab23258a6bff274c2b84163d46a17846")
(setf (get radar_conti::RadarConfiguration :datatype-) "radar_conti/RadarConfiguration")
(setf (get radar_conti::RadarConfiguration :definition-)
      "#  ------------------------------------------------------------------------
#
#  Name:       RadarConfiguration
#  Id:         0x200
#  Length:     8 bytes
#  Cycle time: 0 ms
#  Senders:    ExternalUnit
#  Layout:
#
#                          Bit
#
#             7   6   5   4   3   2   1   0
#           +---+---+---+---+---+---+---+---+
#         0 |<-x|<-x|<-x|<-x|<-x|<-x|<-x|<-x|
#           +---+---+---+---+---+---+---+---+
#             |   |   |   |   |   |   |   +-- RadarCfg_MaxDistance_valid
#             |   |   |   |   |   |   +-- RadarCfg_SensorID_valid
#             |   |   |   |   |   +-- RadarCfg_RadarPower_valid
#             |   |   |   |   +-- RadarCfg_OutputType_valid
#             |   |   |   +-- RadarCfg_SendQuality_valid
#             |   |   +-- RadarCfg_SendExtInfo_valid
#             |   +-- RadarCfg_SortIndex_valid
#             +-- RadarCfg_StoreInNVM_valid
#           +---+---+---+---+---+---+---+---+
#         1 |<------------------------------|
#           +---+---+---+---+---+---+---+---+
#         2 |------x|   |   |   |   |   |   |
#           +---+---+---+---+---+---+---+---+
#                 +-- RadarCfg_MaxDistance
#           +---+---+---+---+---+---+---+---+
#         3 |   |   |   |   |   |   |   |   |
#     B     +---+---+---+---+---+---+---+---+
#     y   4 |<---------x|<-----x|<---------x|
#     t     +---+---+---+---+---+---+---+---+
#     e               |       |           +-- RadarCfg_SensorID
#                     |       +-- RadarCfg_OutputType
#                     +-- RadarCfg_RadarPower
#           +---+---+---+---+---+---+---+---+
#         5 |<-x|<---------x|<-x|<-x|<-x|<-x|
#           +---+---+---+---+---+---+---+---+
#             |           |   |   |   |   +-- RadarCfg_CtrlRelay_valid
#             |           |   |   |   +-- RadarCfg_CtrlRelay
#             |           |   |   +-- RadarCfg_SendQuality
#             |           |   +-- RadarCfg_SendExtInfo
#             |           +-- RadarCfg_SortIndex
#             +-- RadarCfg_StoreInNVM
#           +---+---+---+---+---+---+---+---+
#         6 |   |   |   |   |<---------x|<-x|
#           +---+---+---+---+---+---+---+---+
#                                     |   +-- RadarCfg_RCS_Threshold_valid
#                                     +-- RadarCfg_RCS_Threshold
#           +---+---+---+---+---+---+---+---+
#         7 |   |   |   |   |   |   |   |   |
#           +---+---+---+---+---+---+---+---+
#
#  Signal tree:
#
#    -- {root}
#       +-- RadarCfg_StoreInNVM_valid
#       +-- RadarCfg_SortIndex_valid
#       +-- RadarCfg_SendExtInfo_valid
#       +-- RadarCfg_SendQuality_valid
#       +-- RadarCfg_OutputType_valid
#       +-- RadarCfg_RadarPower_valid
#       +-- RadarCfg_SensorID_valid
#       +-- RadarCfg_MaxDistance_valid
#       +-- RadarCfg_MaxDistance
#       +-- RadarCfg_RadarPower
#       +-- RadarCfg_OutputType
#       +-- RadarCfg_SensorID
#       +-- RadarCfg_StoreInNVM
#       +-- RadarCfg_SortIndex
#       +-- RadarCfg_SendExtInfo
#       +-- RadarCfg_SendQuality
#       +-- RadarCfg_CtrlRelay
#       +-- RadarCfg_CtrlRelay_valid
#       +-- RadarCfg_RCS_Threshold
#       +-- RadarCfg_RCS_Threshold_valid
#
#  ------------------------------------------------------------------------
#

std_msgs/Header header
std_msgs/UInt8 radarcfg_storeinnvm_valid
std_msgs/UInt8 radarcfg_sortindex_valid
std_msgs/UInt8 radarcfg_sendextinfo_valid
std_msgs/UInt8 radarcfg_sendquality_valid
std_msgs/UInt8 radarcfg_outputtype_valid
std_msgs/UInt8 radarcfg_radarpower_valid
std_msgs/UInt8 radarcfg_sensorid_valid
std_msgs/UInt8 radarcfg_maxdistance_valid
std_msgs/UInt8 radarcfg_maxdistance
std_msgs/UInt8 radarcfg_radarpower
std_msgs/UInt8 radarcfg_outputtype
std_msgs/UInt8 radarcfg_sensorid
std_msgs/UInt8 radarcfg_storeinnvm
std_msgs/UInt8 radarcfg_sortindex
std_msgs/UInt8 radarcfg_sendextinfo
std_msgs/UInt8 radarcfg_sendquality
std_msgs/UInt8 radarcfg_ctrlrelay
std_msgs/UInt8 radarcfg_ctrlrelay_valid
std_msgs/UInt8 radarcfg_rcs_threshold
std_msgs/UInt8 radarcfg_rcs_threshold_valid
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



(provide :radar_conti/RadarConfiguration "ab23258a6bff274c2b84163d46a17846")


