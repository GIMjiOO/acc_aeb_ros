;; Auto-generated. Do not edit!


(when (boundp 'npust_bus_msgs::LanePolynomial)
  (if (not (find-package "NPUST_BUS_MSGS"))
    (make-package "NPUST_BUS_MSGS"))
  (shadow 'LanePolynomial (find-package "NPUST_BUS_MSGS")))
(unless (find-package "NPUST_BUS_MSGS::LANEPOLYNOMIAL")
  (make-package "NPUST_BUS_MSGS::LANEPOLYNOMIAL"))

(in-package "ROS")
;;//! \htmlinclude LanePolynomial.msg.html


(defclass npust_bus_msgs::LanePolynomial
  :super ros::object
  :slots (_a _b _c _is_valid ))

(defmethod npust_bus_msgs::LanePolynomial
  (:init
   (&key
    ((:a __a) 0.0)
    ((:b __b) 0.0)
    ((:c __c) 0.0)
    ((:is_valid __is_valid) nil)
    )
   (send-super :init)
   (setq _a (float __a))
   (setq _b (float __b))
   (setq _c (float __c))
   (setq _is_valid __is_valid)
   self)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:is_valid
   (&optional (__is_valid :null))
   (if (not (eq __is_valid :null)) (setq _is_valid __is_valid)) _is_valid)
  (:serialization-length
   ()
   (+
    ;; float64 _a
    8
    ;; float64 _b
    8
    ;; float64 _c
    8
    ;; bool _is_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _b
       (sys::poke _b (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _c
       (sys::poke _c (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_valid
       (if _is_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _b
     (setq _b (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _c
     (setq _c (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_valid
     (setq _is_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get npust_bus_msgs::LanePolynomial :md5sum-) "d23cdde470f87162ea53865c3a120f7d")
(setf (get npust_bus_msgs::LanePolynomial :datatype-) "npust_bus_msgs/LanePolynomial")
(setf (get npust_bus_msgs::LanePolynomial :definition-)
      "# [TEMP SIM] LanePolynomial — second-order lateral lane boundary:
#   y(x) = a*x^2 + b*x + c
# Validity gates (from kinematics.cpp / isLaneValid):
#   is_valid must be true
#   |a| <= max_lane_curve_a   (default 0.02)
#   |b| <= max_lane_heading_b (default 0.35)
float64 a
float64 b
float64 c
bool    is_valid

")



(provide :npust_bus_msgs/LanePolynomial "d23cdde470f87162ea53865c3a120f7d")


