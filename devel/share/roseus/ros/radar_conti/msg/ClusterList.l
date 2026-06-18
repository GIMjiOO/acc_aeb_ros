;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::ClusterList)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'ClusterList (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::CLUSTERLIST")
  (make-package "RADAR_CONTI::CLUSTERLIST"))

(in-package "ROS")
;;//! \htmlinclude ClusterList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::ClusterList
  :super ros::object
  :slots (_header _cluster_count _clusters ))

(defmethod radar_conti::ClusterList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cluster_count __cluster_count) (instance std_msgs::Int32 :init))
    ((:clusters __clusters) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _cluster_count __cluster_count)
   (setq _clusters __clusters)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cluster_count
   (&rest __cluster_count)
   (if (keywordp (car __cluster_count))
       (send* _cluster_count __cluster_count)
     (progn
       (if __cluster_count (setq _cluster_count (car __cluster_count)))
       _cluster_count)))
  (:clusters
   (&rest __clusters)
   (if (keywordp (car __clusters))
       (send* _clusters __clusters)
     (progn
       (if __clusters (setq _clusters (car __clusters)))
       _clusters)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Int32 _cluster_count
    (send _cluster_count :serialization-length)
    ;; radar_conti/Cluster[] _clusters
    (apply #'+ (send-all _clusters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Int32 _cluster_count
       (send _cluster_count :serialize s)
     ;; radar_conti/Cluster[] _clusters
     (write-long (length _clusters) s)
     (dolist (elem _clusters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Int32 _cluster_count
     (send _cluster_count :deserialize buf ptr-) (incf ptr- (send _cluster_count :serialization-length))
   ;; radar_conti/Cluster[] _clusters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _clusters (let (r) (dotimes (i n) (push (instance radar_conti::Cluster :init) r)) r))
     (dolist (elem- _clusters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get radar_conti::ClusterList :md5sum-) "f224f52f8435f121b949e6b05d35dc26")
(setf (get radar_conti::ClusterList :datatype-) "radar_conti/ClusterList")
(setf (get radar_conti::ClusterList :definition-)
      "std_msgs/Header header
std_msgs/Int32 cluster_count
Cluster[] clusters
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
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: radar_conti/Cluster
std_msgs/Int32 cluster_id
ClusterGeneral cluster_general
ClusterQuality cluster_quality
================================================================================
MSG: radar_conti/ClusterGeneral
#  ------------------------------------------------------------------------
#
#  Name:       Cluster_1_General
#  Id:         0x701
#  Length:     8 bytes
#  Cycle time: 0 ms
#  Senders:    ARS_ISF
#  Layout:
#
#                          Bit
#
#             7   6   5   4   3   2   1   0
#           +---+---+---+---+---+---+---+---+
#         0 |<-----------------------------x|
#           +---+---+---+---+---+---+---+---+
#                                         +-- Cluster_ID
#           +---+---+---+---+---+---+---+---+
#         1 |<------------------------------|
#           +---+---+---+---+---+---+---+---+
#         2 |------------------x|   |<------|
#           +---+---+---+---+---+---+---+---+
#                             +-- Cluster_DistLong
#           +---+---+---+---+---+---+---+---+
#         3 |------------------------------x|
#     B     +---+---+---+---+---+---+---+---+
#     y                                   +-- Cluster_DistLat
#     t     +---+---+---+---+---+---+---+---+
#     e   4 |<------------------------------|
#           +---+---+---+---+---+---+---+---+
#         5 |------x|<----------------------|
#           +---+---+---+---+---+---+---+---+
#                 +-- Cluster_VrelLong
#           +---+---+---+---+---+---+---+---+
#         6 |----------x|   |   |<---------x|
#           +---+---+---+---+---+---+---+---+
#                     |                   +-- Cluster_DynProp
#                     +-- Cluster_VrelLat
#           +---+---+---+---+---+---+---+---+
#         7 |<-----------------------------x|
#           +---+---+---+---+---+---+---+---+
#                                         +-- Cluster_RCS
#
#  Signal tree:
#
#    -- {root}
#       +-- Cluster_ID
#       +-- Cluster_DistLong
#       +-- Cluster_DistLat
#       +-- Cluster_VrelLong
#       +-- Cluster_VrelLat
#       +-- Cluster_DynProp
#       +-- Cluster_RCS
#
#  ------------------------------------------------------------------------
std_msgs/Float64 cluster_distlong
std_msgs/Float64 cluster_distlat
std_msgs/Float64 cluster_vrellong
std_msgs/Float64 cluster_vrellat
std_msgs/Int32   cluster_dynprop
std_msgs/Float64 cluster_rcs
================================================================================
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: radar_conti/ClusterQuality
#  ------------------------------------------------------------------------
#
#  Name:       Cluster_2_Quality
#  Id:         0x702
#  Length:     5 bytes
#  Cycle time: 0 ms
#  Senders:    ARS_ISF
#  Layout:
#
#                          Bit
#
#             7   6   5   4   3   2   1   0
#           +---+---+---+---+---+---+---+---+
#         0 |<-----------------------------x|
#           +---+---+---+---+---+---+---+---+
#                                         +-- Cluster_ID
#           +---+---+---+---+---+---+---+---+
#         1 |<-----------------x|<----------|
#           +---+---+---+---+---+---+---+---+
#                             +-- Cluster_DistLong_rms
#           +---+---+---+---+---+---+---+---+
#     B   2 |------x|<-----------------x|<--|
#     y     +---+---+---+---+---+---+---+---+
#     t           |                   +-- Cluster_VrelLong_rms
#     e           +-- Cluster_DistLat_rms
#           +---+---+---+---+---+---+---+---+
#         3 |--------------x|   |<---------x|
#           +---+---+---+---+---+---+---+---+
#                         |               +-- Cluster_PdH0
#                         +-- Cluster_VrelLat_rms
#           +---+---+---+---+---+---+---+---+
#         4 |<-----------------x|<---------x|
#           +---+---+---+---+---+---+---+---+
#                             |           +-- Cluster_AmbigState
#                             +-- Cluster_InvalidState
#
#  Signal tree:
#
#    -- {root}
#       +-- Cluster_ID
#       +-- Cluster_DistLong_rms
#       +-- Cluster_DistLat_rms
#       +-- Cluster_VrelLong_rms
#       +-- Cluster_VrelLat_rms
#       +-- Cluster_PdH0
#       +-- Cluster_InvalidState
#       +-- Cluster_AmbigState
#
#  ------------------------------------------------------------------------
#
std_msgs/Float64 cluster_distlong_rms
std_msgs/Float64 cluster_distlat_rms
std_msgs/Float64 cluster_vrellong_rms
std_msgs/Float64 cluster_vrellat_rms
std_msgs/String cluster_pdh0
std_msgs/String cluster_invalidstate
std_msgs/String cluster_ambigstate
================================================================================
MSG: std_msgs/String
string data

")



(provide :radar_conti/ClusterList "f224f52f8435f121b949e6b05d35dc26")


