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
  :slots (_x _y _vx _id _x_var _y_var _vx_var ))

(defmethod npust_bus_msgs::TrackedObject
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:vx __vx) 0.0)
    ((:id __id) 0)
    ((:x_var __x_var) 0.0)
    ((:y_var __y_var) 0.0)
    ((:vx_var __vx_var) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _vx (float __vx))
   (setq _id (round __id))
   (setq _x_var (float __x_var))
   (setq _y_var (float __y_var))
   (setq _vx_var (float __vx_var))
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
  (:x_var
   (&optional __x_var)
   (if __x_var (setq _x_var __x_var)) _x_var)
  (:y_var
   (&optional __y_var)
   (if __y_var (setq _y_var __y_var)) _y_var)
  (:vx_var
   (&optional __vx_var)
   (if __vx_var (setq _vx_var __vx_var)) _vx_var)
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
    ;; float64 _x_var
    8
    ;; float64 _y_var
    8
    ;; float64 _vx_var
    8
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
     ;; float64 _x_var
       (sys::poke _x_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_var
       (sys::poke _y_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vx_var
       (sys::poke _vx_var (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _x_var
     (setq _x_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_var
     (setq _y_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vx_var
     (setq _vx_var (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get npust_bus_msgs::TrackedObject :md5sum-) "331682f7f129bb4bca16e4da62c26662")
(setf (get npust_bus_msgs::TrackedObject :datatype-) "npust_bus_msgs/TrackedObject")
(setf (get npust_bus_msgs::TrackedObject :definition-)
      "# TrackedObject — single detected object from the perception stack.
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



(provide :npust_bus_msgs/TrackedObject "331682f7f129bb4bca16e4da62c26662")


