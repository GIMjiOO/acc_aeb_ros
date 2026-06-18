;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::ClusterGeneral)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'ClusterGeneral (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::CLUSTERGENERAL")
  (make-package "RADAR_CONTI::CLUSTERGENERAL"))

(in-package "ROS")
;;//! \htmlinclude ClusterGeneral.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::ClusterGeneral
  :super ros::object
  :slots (_cluster_distlong _cluster_distlat _cluster_vrellong _cluster_vrellat _cluster_dynprop _cluster_rcs ))

(defmethod radar_conti::ClusterGeneral
  (:init
   (&key
    ((:cluster_distlong __cluster_distlong) (instance std_msgs::Float64 :init))
    ((:cluster_distlat __cluster_distlat) (instance std_msgs::Float64 :init))
    ((:cluster_vrellong __cluster_vrellong) (instance std_msgs::Float64 :init))
    ((:cluster_vrellat __cluster_vrellat) (instance std_msgs::Float64 :init))
    ((:cluster_dynprop __cluster_dynprop) (instance std_msgs::Int32 :init))
    ((:cluster_rcs __cluster_rcs) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _cluster_distlong __cluster_distlong)
   (setq _cluster_distlat __cluster_distlat)
   (setq _cluster_vrellong __cluster_vrellong)
   (setq _cluster_vrellat __cluster_vrellat)
   (setq _cluster_dynprop __cluster_dynprop)
   (setq _cluster_rcs __cluster_rcs)
   self)
  (:cluster_distlong
   (&rest __cluster_distlong)
   (if (keywordp (car __cluster_distlong))
       (send* _cluster_distlong __cluster_distlong)
     (progn
       (if __cluster_distlong (setq _cluster_distlong (car __cluster_distlong)))
       _cluster_distlong)))
  (:cluster_distlat
   (&rest __cluster_distlat)
   (if (keywordp (car __cluster_distlat))
       (send* _cluster_distlat __cluster_distlat)
     (progn
       (if __cluster_distlat (setq _cluster_distlat (car __cluster_distlat)))
       _cluster_distlat)))
  (:cluster_vrellong
   (&rest __cluster_vrellong)
   (if (keywordp (car __cluster_vrellong))
       (send* _cluster_vrellong __cluster_vrellong)
     (progn
       (if __cluster_vrellong (setq _cluster_vrellong (car __cluster_vrellong)))
       _cluster_vrellong)))
  (:cluster_vrellat
   (&rest __cluster_vrellat)
   (if (keywordp (car __cluster_vrellat))
       (send* _cluster_vrellat __cluster_vrellat)
     (progn
       (if __cluster_vrellat (setq _cluster_vrellat (car __cluster_vrellat)))
       _cluster_vrellat)))
  (:cluster_dynprop
   (&rest __cluster_dynprop)
   (if (keywordp (car __cluster_dynprop))
       (send* _cluster_dynprop __cluster_dynprop)
     (progn
       (if __cluster_dynprop (setq _cluster_dynprop (car __cluster_dynprop)))
       _cluster_dynprop)))
  (:cluster_rcs
   (&rest __cluster_rcs)
   (if (keywordp (car __cluster_rcs))
       (send* _cluster_rcs __cluster_rcs)
     (progn
       (if __cluster_rcs (setq _cluster_rcs (car __cluster_rcs)))
       _cluster_rcs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float64 _cluster_distlong
    (send _cluster_distlong :serialization-length)
    ;; std_msgs/Float64 _cluster_distlat
    (send _cluster_distlat :serialization-length)
    ;; std_msgs/Float64 _cluster_vrellong
    (send _cluster_vrellong :serialization-length)
    ;; std_msgs/Float64 _cluster_vrellat
    (send _cluster_vrellat :serialization-length)
    ;; std_msgs/Int32 _cluster_dynprop
    (send _cluster_dynprop :serialization-length)
    ;; std_msgs/Float64 _cluster_rcs
    (send _cluster_rcs :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float64 _cluster_distlong
       (send _cluster_distlong :serialize s)
     ;; std_msgs/Float64 _cluster_distlat
       (send _cluster_distlat :serialize s)
     ;; std_msgs/Float64 _cluster_vrellong
       (send _cluster_vrellong :serialize s)
     ;; std_msgs/Float64 _cluster_vrellat
       (send _cluster_vrellat :serialize s)
     ;; std_msgs/Int32 _cluster_dynprop
       (send _cluster_dynprop :serialize s)
     ;; std_msgs/Float64 _cluster_rcs
       (send _cluster_rcs :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float64 _cluster_distlong
     (send _cluster_distlong :deserialize buf ptr-) (incf ptr- (send _cluster_distlong :serialization-length))
   ;; std_msgs/Float64 _cluster_distlat
     (send _cluster_distlat :deserialize buf ptr-) (incf ptr- (send _cluster_distlat :serialization-length))
   ;; std_msgs/Float64 _cluster_vrellong
     (send _cluster_vrellong :deserialize buf ptr-) (incf ptr- (send _cluster_vrellong :serialization-length))
   ;; std_msgs/Float64 _cluster_vrellat
     (send _cluster_vrellat :deserialize buf ptr-) (incf ptr- (send _cluster_vrellat :serialization-length))
   ;; std_msgs/Int32 _cluster_dynprop
     (send _cluster_dynprop :deserialize buf ptr-) (incf ptr- (send _cluster_dynprop :serialization-length))
   ;; std_msgs/Float64 _cluster_rcs
     (send _cluster_rcs :deserialize buf ptr-) (incf ptr- (send _cluster_rcs :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::ClusterGeneral :md5sum-) "48915065ec2595ba51250ae485075a77")
(setf (get radar_conti::ClusterGeneral :datatype-) "radar_conti/ClusterGeneral")
(setf (get radar_conti::ClusterGeneral :definition-)
      "#  ------------------------------------------------------------------------
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
MSG: std_msgs/Int32
int32 data
")



(provide :radar_conti/ClusterGeneral "48915065ec2595ba51250ae485075a77")


