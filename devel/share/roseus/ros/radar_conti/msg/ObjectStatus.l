;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::ObjectStatus)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'ObjectStatus (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::OBJECTSTATUS")
  (make-package "RADAR_CONTI::OBJECTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ObjectStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::ObjectStatus
  :super ros::object
  :slots (_obj_nofobjects _obj_meascounter _obj_interfaceversion ))

(defmethod radar_conti::ObjectStatus
  (:init
   (&key
    ((:obj_nofobjects __obj_nofobjects) (instance std_msgs::Int32 :init))
    ((:obj_meascounter __obj_meascounter) (instance std_msgs::Int32 :init))
    ((:obj_interfaceversion __obj_interfaceversion) (instance std_msgs::Int32 :init))
    )
   (send-super :init)
   (setq _obj_nofobjects __obj_nofobjects)
   (setq _obj_meascounter __obj_meascounter)
   (setq _obj_interfaceversion __obj_interfaceversion)
   self)
  (:obj_nofobjects
   (&rest __obj_nofobjects)
   (if (keywordp (car __obj_nofobjects))
       (send* _obj_nofobjects __obj_nofobjects)
     (progn
       (if __obj_nofobjects (setq _obj_nofobjects (car __obj_nofobjects)))
       _obj_nofobjects)))
  (:obj_meascounter
   (&rest __obj_meascounter)
   (if (keywordp (car __obj_meascounter))
       (send* _obj_meascounter __obj_meascounter)
     (progn
       (if __obj_meascounter (setq _obj_meascounter (car __obj_meascounter)))
       _obj_meascounter)))
  (:obj_interfaceversion
   (&rest __obj_interfaceversion)
   (if (keywordp (car __obj_interfaceversion))
       (send* _obj_interfaceversion __obj_interfaceversion)
     (progn
       (if __obj_interfaceversion (setq _obj_interfaceversion (car __obj_interfaceversion)))
       _obj_interfaceversion)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _obj_nofobjects
    (send _obj_nofobjects :serialization-length)
    ;; std_msgs/Int32 _obj_meascounter
    (send _obj_meascounter :serialization-length)
    ;; std_msgs/Int32 _obj_interfaceversion
    (send _obj_interfaceversion :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _obj_nofobjects
       (send _obj_nofobjects :serialize s)
     ;; std_msgs/Int32 _obj_meascounter
       (send _obj_meascounter :serialize s)
     ;; std_msgs/Int32 _obj_interfaceversion
       (send _obj_interfaceversion :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _obj_nofobjects
     (send _obj_nofobjects :deserialize buf ptr-) (incf ptr- (send _obj_nofobjects :serialization-length))
   ;; std_msgs/Int32 _obj_meascounter
     (send _obj_meascounter :deserialize buf ptr-) (incf ptr- (send _obj_meascounter :serialization-length))
   ;; std_msgs/Int32 _obj_interfaceversion
     (send _obj_interfaceversion :deserialize buf ptr-) (incf ptr- (send _obj_interfaceversion :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::ObjectStatus :md5sum-) "9bce59d00818d64eb8f4cd2b557dee63")
(setf (get radar_conti::ObjectStatus :datatype-) "radar_conti/ObjectStatus")
(setf (get radar_conti::ObjectStatus :definition-)
      "#  ------------------------------------------------------------------------
#
#  Name:       Obj_0_Status
#  Id:         0x60a
#  Length:     4 bytes
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
#                                         +-- Obj_NofObjects
#           +---+---+---+---+---+---+---+---+
#     B   1 |<------------------------------|
#     y     +---+---+---+---+---+---+---+---+
#     t   2 |------------------------------x|
#     e     +---+---+---+---+---+---+---+---+
#                                         +-- Obj_MeasCounter
#           +---+---+---+---+---+---+---+---+
#         3 |<-------------x|   |   |   |   |
#           +---+---+---+---+---+---+---+---+
#                         +-- Obj_InterfaceVersion
#
#  Signal tree:
#
#    -- {root}
#       +-- Obj_NofObjects
#       +-- Obj_MeasCounter
#       +-- Obj_InterfaceVersion
#
#  ------------------------------------------------------------------------
#
std_msgs/Int32 obj_nofobjects
std_msgs/Int32 obj_meascounter
std_msgs/Int32 obj_interfaceversion
================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :radar_conti/ObjectStatus "9bce59d00818d64eb8f4cd2b557dee63")


