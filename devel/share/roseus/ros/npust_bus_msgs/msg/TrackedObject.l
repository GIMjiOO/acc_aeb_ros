;; Auto-generated. Do not edit!


(when (boundp 'npust_bus_msgs::TrackedObject)
  (if (not (find-package "NPUST_BUS_MSGS"))
    (make-package "NPUST_BUS_MSGS"))
  (shadow 'TrackedObject (find-package "NPUST_BUS_MSGS")))
(unless (find-package "NPUST_BUS_MSGS::TRACKEDOBJECT")
  (make-package "NPUST_BUS_MSGS::TRACKEDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude TrackedObject.msg.html


(defclass npust_bus_msgs::TrackedObject
  :super ros::object
  :slots (_x _y _vx _id ))

(defmethod npust_bus_msgs::TrackedObject
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:vx __vx) 0.0)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _vx (float __vx))
   (setq _id (round __id))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _vx
    8
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get npust_bus_msgs::TrackedObject :md5sum-) "cb6bc2fd770dd453884b992e000b9106")
(setf (get npust_bus_msgs::TrackedObject :datatype-) "npust_bus_msgs/TrackedObject")
(setf (get npust_bus_msgs::TrackedObject :definition-)
      "# [TEMP SIM] TrackedObject — single detected object from the perception stack.
# Fields used by acc_aeb kinematics.cpp:
#   x   — longitudinal range ahead (m), must be > min_valid_x_m (0.5 m)
#   y   — lateral offset (m); positive = left
#   vx  — world-frame absolute velocity when vx_is_relative=false (m/s)
#          relative-to-ego velocity when vx_is_relative=true (m/s)
#   id  — stable tracking ID; consistent across frames for the ABG filter
float64 x
float64 y
float64 vx
int32   id

")



(provide :npust_bus_msgs/TrackedObject "cb6bc2fd770dd453884b992e000b9106")


