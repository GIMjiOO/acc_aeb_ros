;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::ClusterQuality)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'ClusterQuality (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::CLUSTERQUALITY")
  (make-package "RADAR_CONTI::CLUSTERQUALITY"))

(in-package "ROS")
;;//! \htmlinclude ClusterQuality.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::ClusterQuality
  :super ros::object
  :slots (_cluster_distlong_rms _cluster_distlat_rms _cluster_vrellong_rms _cluster_vrellat_rms _cluster_pdh0 _cluster_invalidstate _cluster_ambigstate ))

(defmethod radar_conti::ClusterQuality
  (:init
   (&key
    ((:cluster_distlong_rms __cluster_distlong_rms) (instance std_msgs::Float64 :init))
    ((:cluster_distlat_rms __cluster_distlat_rms) (instance std_msgs::Float64 :init))
    ((:cluster_vrellong_rms __cluster_vrellong_rms) (instance std_msgs::Float64 :init))
    ((:cluster_vrellat_rms __cluster_vrellat_rms) (instance std_msgs::Float64 :init))
    ((:cluster_pdh0 __cluster_pdh0) (instance std_msgs::String :init))
    ((:cluster_invalidstate __cluster_invalidstate) (instance std_msgs::String :init))
    ((:cluster_ambigstate __cluster_ambigstate) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _cluster_distlong_rms __cluster_distlong_rms)
   (setq _cluster_distlat_rms __cluster_distlat_rms)
   (setq _cluster_vrellong_rms __cluster_vrellong_rms)
   (setq _cluster_vrellat_rms __cluster_vrellat_rms)
   (setq _cluster_pdh0 __cluster_pdh0)
   (setq _cluster_invalidstate __cluster_invalidstate)
   (setq _cluster_ambigstate __cluster_ambigstate)
   self)
  (:cluster_distlong_rms
   (&rest __cluster_distlong_rms)
   (if (keywordp (car __cluster_distlong_rms))
       (send* _cluster_distlong_rms __cluster_distlong_rms)
     (progn
       (if __cluster_distlong_rms (setq _cluster_distlong_rms (car __cluster_distlong_rms)))
       _cluster_distlong_rms)))
  (:cluster_distlat_rms
   (&rest __cluster_distlat_rms)
   (if (keywordp (car __cluster_distlat_rms))
       (send* _cluster_distlat_rms __cluster_distlat_rms)
     (progn
       (if __cluster_distlat_rms (setq _cluster_distlat_rms (car __cluster_distlat_rms)))
       _cluster_distlat_rms)))
  (:cluster_vrellong_rms
   (&rest __cluster_vrellong_rms)
   (if (keywordp (car __cluster_vrellong_rms))
       (send* _cluster_vrellong_rms __cluster_vrellong_rms)
     (progn
       (if __cluster_vrellong_rms (setq _cluster_vrellong_rms (car __cluster_vrellong_rms)))
       _cluster_vrellong_rms)))
  (:cluster_vrellat_rms
   (&rest __cluster_vrellat_rms)
   (if (keywordp (car __cluster_vrellat_rms))
       (send* _cluster_vrellat_rms __cluster_vrellat_rms)
     (progn
       (if __cluster_vrellat_rms (setq _cluster_vrellat_rms (car __cluster_vrellat_rms)))
       _cluster_vrellat_rms)))
  (:cluster_pdh0
   (&rest __cluster_pdh0)
   (if (keywordp (car __cluster_pdh0))
       (send* _cluster_pdh0 __cluster_pdh0)
     (progn
       (if __cluster_pdh0 (setq _cluster_pdh0 (car __cluster_pdh0)))
       _cluster_pdh0)))
  (:cluster_invalidstate
   (&rest __cluster_invalidstate)
   (if (keywordp (car __cluster_invalidstate))
       (send* _cluster_invalidstate __cluster_invalidstate)
     (progn
       (if __cluster_invalidstate (setq _cluster_invalidstate (car __cluster_invalidstate)))
       _cluster_invalidstate)))
  (:cluster_ambigstate
   (&rest __cluster_ambigstate)
   (if (keywordp (car __cluster_ambigstate))
       (send* _cluster_ambigstate __cluster_ambigstate)
     (progn
       (if __cluster_ambigstate (setq _cluster_ambigstate (car __cluster_ambigstate)))
       _cluster_ambigstate)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _cluster_distlong_rms
    (send _cluster_distlong_rms :serialization-length)
    ;; std_msgs/Float64 _cluster_distlat_rms
    (send _cluster_distlat_rms :serialization-length)
    ;; std_msgs/Float64 _cluster_vrellong_rms
    (send _cluster_vrellong_rms :serialization-length)
    ;; std_msgs/Float64 _cluster_vrellat_rms
    (send _cluster_vrellat_rms :serialization-length)
    ;; std_msgs/String _cluster_pdh0
    (send _cluster_pdh0 :serialization-length)
    ;; std_msgs/String _cluster_invalidstate
    (send _cluster_invalidstate :serialization-length)
    ;; std_msgs/String _cluster_ambigstate
    (send _cluster_ambigstate :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _cluster_distlong_rms
       (send _cluster_distlong_rms :serialize s)
     ;; std_msgs/Float64 _cluster_distlat_rms
       (send _cluster_distlat_rms :serialize s)
     ;; std_msgs/Float64 _cluster_vrellong_rms
       (send _cluster_vrellong_rms :serialize s)
     ;; std_msgs/Float64 _cluster_vrellat_rms
       (send _cluster_vrellat_rms :serialize s)
     ;; std_msgs/String _cluster_pdh0
       (send _cluster_pdh0 :serialize s)
     ;; std_msgs/String _cluster_invalidstate
       (send _cluster_invalidstate :serialize s)
     ;; std_msgs/String _cluster_ambigstate
       (send _cluster_ambigstate :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _cluster_distlong_rms
     (send _cluster_distlong_rms :deserialize buf ptr-) (incf ptr- (send _cluster_distlong_rms :serialization-length))
   ;; std_msgs/Float64 _cluster_distlat_rms
     (send _cluster_distlat_rms :deserialize buf ptr-) (incf ptr- (send _cluster_distlat_rms :serialization-length))
   ;; std_msgs/Float64 _cluster_vrellong_rms
     (send _cluster_vrellong_rms :deserialize buf ptr-) (incf ptr- (send _cluster_vrellong_rms :serialization-length))
   ;; std_msgs/Float64 _cluster_vrellat_rms
     (send _cluster_vrellat_rms :deserialize buf ptr-) (incf ptr- (send _cluster_vrellat_rms :serialization-length))
   ;; std_msgs/String _cluster_pdh0
     (send _cluster_pdh0 :deserialize buf ptr-) (incf ptr- (send _cluster_pdh0 :serialization-length))
   ;; std_msgs/String _cluster_invalidstate
     (send _cluster_invalidstate :deserialize buf ptr-) (incf ptr- (send _cluster_invalidstate :serialization-length))
   ;; std_msgs/String _cluster_ambigstate
     (send _cluster_ambigstate :deserialize buf ptr-) (incf ptr- (send _cluster_ambigstate :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::ClusterQuality :md5sum-) "e02012645da0efa0adaf8bcdc5630918")
(setf (get radar_conti::ClusterQuality :datatype-) "radar_conti/ClusterQuality")
(setf (get radar_conti::ClusterQuality :definition-)
      "#  ------------------------------------------------------------------------
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
MSG: std_msgs/Float64
float64 data
================================================================================
MSG: std_msgs/String
string data

")



(provide :radar_conti/ClusterQuality "e02012645da0efa0adaf8bcdc5630918")


