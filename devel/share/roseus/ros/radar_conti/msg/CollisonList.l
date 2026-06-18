;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::CollisonList)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'CollisonList (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::COLLISONLIST")
  (make-package "RADAR_CONTI::COLLISONLIST"))

(in-package "ROS")
;;//! \htmlinclude CollisonList.msg.html


(defclass radar_conti::CollisonList
  :super ros::object
  :slots (_objects ))

(defmethod radar_conti::CollisonList
  (:init
   (&key
    ((:objects __objects) ())
    )
   (send-super :init)
   (setq _objects __objects)
   self)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; radar_conti/CollisonObj[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; radar_conti/CollisonObj[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; radar_conti/CollisonObj[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance radar_conti::CollisonObj :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get radar_conti::CollisonList :md5sum-) "1a623832a153d5fa4295538827da3d97")
(setf (get radar_conti::CollisonList :datatype-) "radar_conti/CollisonList")
(setf (get radar_conti::CollisonList :definition-)
      "CollisonObj[] objects
================================================================================
MSG: radar_conti/CollisonObj
std_msgs/Int32 obj_id
================================================================================
MSG: std_msgs/Int32
int32 data
")



(provide :radar_conti/CollisonList "1a623832a153d5fa4295538827da3d97")


