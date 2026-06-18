;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::ClusterStatus)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'ClusterStatus (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::CLUSTERSTATUS")
  (make-package "RADAR_CONTI::CLUSTERSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ClusterStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::ClusterStatus
  :super ros::object
  :slots (_cluster_nofclustersnear _cluster_nofclustersfar _cluster_meascounter _cluster_interfaceversion ))

(defmethod radar_conti::ClusterStatus
  (:init
   (&key
    ((:cluster_nofclustersnear __cluster_nofclustersnear) (instance std_msgs::Int32 :init))
    ((:cluster_nofclustersfar __cluster_nofclustersfar) (instance std_msgs::Int32 :init))
    ((:cluster_meascounter __cluster_meascounter) (instance std_msgs::Int32 :init))
    ((:cluster_interfaceversion __cluster_interfaceversion) (instance std_msgs::Int32 :init))
    )
   (send-super :init)
   (setq _cluster_nofclustersnear __cluster_nofclustersnear)
   (setq _cluster_nofclustersfar __cluster_nofclustersfar)
   (setq _cluster_meascounter __cluster_meascounter)
   (setq _cluster_interfaceversion __cluster_interfaceversion)
   self)
  (:cluster_nofclustersnear
   (&rest __cluster_nofclustersnear)
   (if (keywordp (car __cluster_nofclustersnear))
       (send* _cluster_nofclustersnear __cluster_nofclustersnear)
     (progn
       (if __cluster_nofclustersnear (setq _cluster_nofclustersnear (car __cluster_nofclustersnear)))
       _cluster_nofclustersnear)))
  (:cluster_nofclustersfar
   (&rest __cluster_nofclustersfar)
   (if (keywordp (car __cluster_nofclustersfar))
       (send* _cluster_nofclustersfar __cluster_nofclustersfar)
     (progn
       (if __cluster_nofclustersfar (setq _cluster_nofclustersfar (car __cluster_nofclustersfar)))
       _cluster_nofclustersfar)))
  (:cluster_meascounter
   (&rest __cluster_meascounter)
   (if (keywordp (car __cluster_meascounter))
       (send* _cluster_meascounter __cluster_meascounter)
     (progn
       (if __cluster_meascounter (setq _cluster_meascounter (car __cluster_meascounter)))
       _cluster_meascounter)))
  (:cluster_interfaceversion
   (&rest __cluster_interfaceversion)
   (if (keywordp (car __cluster_interfaceversion))
       (send* _cluster_interfaceversion __cluster_interfaceversion)
     (progn
       (if __cluster_interfaceversion (setq _cluster_interfaceversion (car __cluster_interfaceversion)))
       _cluster_interfaceversion)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _cluster_nofclustersnear
    (send _cluster_nofclustersnear :serialization-length)
    ;; std_msgs/Int32 _cluster_nofclustersfar
    (send _cluster_nofclustersfar :serialization-length)
    ;; std_msgs/Int32 _cluster_meascounter
    (send _cluster_meascounter :serialization-length)
    ;; std_msgs/Int32 _cluster_interfaceversion
    (send _cluster_interfaceversion :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _cluster_nofclustersnear
       (send _cluster_nofclustersnear :serialize s)
     ;; std_msgs/Int32 _cluster_nofclustersfar
       (send _cluster_nofclustersfar :serialize s)
     ;; std_msgs/Int32 _cluster_meascounter
       (send _cluster_meascounter :serialize s)
     ;; std_msgs/Int32 _cluster_interfaceversion
       (send _cluster_interfaceversion :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _cluster_nofclustersnear
     (send _cluster_nofclustersnear :deserialize buf ptr-) (incf ptr- (send _cluster_nofclustersnear :serialization-length))
   ;; std_msgs/Int32 _cluster_nofclustersfar
     (send _cluster_nofclustersfar :deserialize buf ptr-) (incf ptr- (send _cluster_nofclustersfar :serialization-length))
   ;; std_msgs/Int32 _cluster_meascounter
     (send _cluster_meascounter :deserialize buf ptr-) (incf ptr- (send _cluster_meascounter :serialization-length))
   ;; std_msgs/Int32 _cluster_interfaceversion
     (send _cluster_interfaceversion :deserialize buf ptr-) (incf ptr- (send _cluster_interfaceversion :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::ClusterStatus :md5sum-) "9f2a6f691f628cc21b647de1bb56d9b7")
(setf (get radar_conti::ClusterStatus :datatype-) "radar_conti/ClusterStatus")
(setf (get radar_conti::ClusterStatus :definition-)
      "#  ------------------------------------------------------------------------
#
#  Name:       Cluster_0_Status
#  Id:         0x600
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
#                                         +-- Cluster_NofClustersNear
#           +---+---+---+---+---+---+---+---+
#         1 |<-----------------------------x|
#           +---+---+---+---+---+---+---+---+
#     B                                   +-- Cluster_NofClustersFar
#     y     +---+---+---+---+---+---+---+---+
#     t   2 |<------------------------------|
#     e     +---+---+---+---+---+---+---+---+
#         3 |------------------------------x|
#           +---+---+---+---+---+---+---+---+
#                                         +-- Cluster_MeasCounter
#           +---+---+---+---+---+---+---+---+
#         4 |<-------------x|   |   |   |   |
#           +---+---+---+---+---+---+---+---+
#                         +-- Cluster_InterfaceVersion
#
#  Signal tree:
#
#    -- {root}
#       +-- Cluster_NofClustersNear
#       +-- Cluster_NofClustersFar
#       +-- Cluster_MeasCounter
#       +-- Cluster_InterfaceVersion
#
#  ------------------------------------------------------------------------
#
std_msgs/Int32 cluster_nofclustersnear
std_msgs/Int32 cluster_nofclustersfar
std_msgs/Int32 cluster_meascounter
std_msgs/Int32 cluster_interfaceversion
================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :radar_conti/ClusterStatus "9f2a6f691f628cc21b647de1bb56d9b7")


