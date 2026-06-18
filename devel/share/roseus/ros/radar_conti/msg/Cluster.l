;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::Cluster)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'Cluster (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::CLUSTER")
  (make-package "RADAR_CONTI::CLUSTER"))

(in-package "ROS")
;;//! \htmlinclude Cluster.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::Cluster
  :super ros::object
  :slots (_cluster_id _cluster_general _cluster_quality ))

(defmethod radar_conti::Cluster
  (:init
   (&key
    ((:cluster_id __cluster_id) (instance std_msgs::Int32 :init))
    ((:cluster_general __cluster_general) (instance radar_conti::ClusterGeneral :init))
    ((:cluster_quality __cluster_quality) (instance radar_conti::ClusterQuality :init))
    )
   (send-super :init)
   (setq _cluster_id __cluster_id)
   (setq _cluster_general __cluster_general)
   (setq _cluster_quality __cluster_quality)
   self)
  (:cluster_id
   (&rest __cluster_id)
   (if (keywordp (car __cluster_id))
       (send* _cluster_id __cluster_id)
     (progn
       (if __cluster_id (setq _cluster_id (car __cluster_id)))
       _cluster_id)))
  (:cluster_general
   (&rest __cluster_general)
   (if (keywordp (car __cluster_general))
       (send* _cluster_general __cluster_general)
     (progn
       (if __cluster_general (setq _cluster_general (car __cluster_general)))
       _cluster_general)))
  (:cluster_quality
   (&rest __cluster_quality)
   (if (keywordp (car __cluster_quality))
       (send* _cluster_quality __cluster_quality)
     (progn
       (if __cluster_quality (setq _cluster_quality (car __cluster_quality)))
       _cluster_quality)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _cluster_id
    (send _cluster_id :serialization-length)
    ;; radar_conti/ClusterGeneral _cluster_general
    (send _cluster_general :serialization-length)
    ;; radar_conti/ClusterQuality _cluster_quality
    (send _cluster_quality :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _cluster_id
       (send _cluster_id :serialize s)
     ;; radar_conti/ClusterGeneral _cluster_general
       (send _cluster_general :serialize s)
     ;; radar_conti/ClusterQuality _cluster_quality
       (send _cluster_quality :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _cluster_id
     (send _cluster_id :deserialize buf ptr-) (incf ptr- (send _cluster_id :serialization-length))
   ;; radar_conti/ClusterGeneral _cluster_general
     (send _cluster_general :deserialize buf ptr-) (incf ptr- (send _cluster_general :serialization-length))
   ;; radar_conti/ClusterQuality _cluster_quality
     (send _cluster_quality :deserialize buf ptr-) (incf ptr- (send _cluster_quality :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::Cluster :md5sum-) "2811095d8cefca700603904d21f118c9")
(setf (get radar_conti::Cluster :datatype-) "radar_conti/Cluster")
(setf (get radar_conti::Cluster :definition-)
      "std_msgs/Int32 cluster_id
ClusterGeneral cluster_general
ClusterQuality cluster_quality
================================================================================
MSG: std_msgs/Int32
int32 data
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



(provide :radar_conti/Cluster "2811095d8cefca700603904d21f118c9")


