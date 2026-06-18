;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::CollisonObj)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'CollisonObj (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::COLLISONOBJ")
  (make-package "RADAR_CONTI::COLLISONOBJ"))

(in-package "ROS")
;;//! \htmlinclude CollisonObj.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::CollisonObj
  :super ros::object
  :slots (_obj_id ))

(defmethod radar_conti::CollisonObj
  (:init
   (&key
    ((:obj_id __obj_id) (instance std_msgs::Int32 :init))
    )
   (send-super :init)
   (setq _obj_id __obj_id)
   self)
  (:obj_id
   (&rest __obj_id)
   (if (keywordp (car __obj_id))
       (send* _obj_id __obj_id)
     (progn
       (if __obj_id (setq _obj_id (car __obj_id)))
       _obj_id)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _obj_id
    (send _obj_id :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _obj_id
       (send _obj_id :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _obj_id
     (send _obj_id :deserialize buf ptr-) (incf ptr- (send _obj_id :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::CollisonObj :md5sum-) "c0bbbfa30045347256b800ec4412e538")
(setf (get radar_conti::CollisonObj :datatype-) "radar_conti/CollisonObj")
(setf (get radar_conti::CollisonObj :definition-)
      "std_msgs/Int32 obj_id
================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :radar_conti/CollisonObj "c0bbbfa30045347256b800ec4412e538")


