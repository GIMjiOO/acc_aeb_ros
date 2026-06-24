;; Auto-generated. Do not edit!


(when (boundp 'npust_bus_msgs::TrackedObjectArray)
  (if (not (find-package "NPUST_BUS_MSGS"))
    (make-package "NPUST_BUS_MSGS"))
  (shadow 'TrackedObjectArray (find-package "NPUST_BUS_MSGS")))
(unless (find-package "NPUST_BUS_MSGS::TRACKEDOBJECTARRAY")
  (make-package "NPUST_BUS_MSGS::TRACKEDOBJECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude TrackedObjectArray.msg.html


(defclass npust_bus_msgs::TrackedObjectArray
  :super ros::object
  :slots (_objects ))

(defmethod npust_bus_msgs::TrackedObjectArray
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
    ;; npust_bus_msgs/TrackedObject[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; npust_bus_msgs/TrackedObject[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; npust_bus_msgs/TrackedObject[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance npust_bus_msgs::TrackedObject :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get npust_bus_msgs::TrackedObjectArray :md5sum-) "7c58ff4f2d5c2b39b6f051161ab0f85e")
(setf (get npust_bus_msgs::TrackedObjectArray :datatype-) "npust_bus_msgs/TrackedObjectArray")
(setf (get npust_bus_msgs::TrackedObjectArray :definition-)
      "# [TEMP SIM] TrackedObjectArray — list of all detected objects for one perception frame.
TrackedObject[] objects

================================================================================
MSG: npust_bus_msgs/TrackedObject
# TrackedObject — single detected object from the perception stack.
# Fields used by acc_aeb kinematics.cpp:
#   x      — longitudinal range ahead (m), must be > min_valid_x_m (0.5 m)
#   y      — lateral offset (m); positive = left
#   vx     — world-frame absolute velocity when vx_is_relative=false (m/s)
#             relative-to-ego velocity when vx_is_relative=true (m/s)
#   id     — stable tracking ID; consistent across frames for the Kalman filter
#   x_var  — variance of x measurement (m²)
#   y_var  — variance of y measurement (m²)
#   vx_var — variance of vx measurement (m²/s²)
float64 x
float64 y
float64 vx
int32   id
float64 x_var
float64 y_var
float64 vx_var

")



(provide :npust_bus_msgs/TrackedObjectArray "7c58ff4f2d5c2b39b6f051161ab0f85e")


