;; Auto-generated. Do not edit!


(when (boundp 'pro_can::VCU)
  (if (not (find-package "PRO_CAN"))
    (make-package "PRO_CAN"))
  (shadow 'VCU (find-package "PRO_CAN")))
(unless (find-package "PRO_CAN::VCU")
  (make-package "PRO_CAN::VCU"))

(in-package "ROS")
;;//! \htmlinclude VCU.msg.html


(defclass pro_can::VCU
  :super ros::object
  :slots (_MotorVelocity ))

(defmethod pro_can::VCU
  (:init
   (&key
    ((:MotorVelocity __MotorVelocity) 0.0)
    )
   (send-super :init)
   (setq _MotorVelocity (float __MotorVelocity))
   self)
  (:MotorVelocity
   (&optional __MotorVelocity)
   (if __MotorVelocity (setq _MotorVelocity __MotorVelocity)) _MotorVelocity)
  (:serialization-length
   ()
   (+
    ;; float32 _MotorVelocity
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _MotorVelocity
       (sys::poke _MotorVelocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _MotorVelocity
     (setq _MotorVelocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pro_can::VCU :md5sum-) "bad68293825d700d1b4f59a02856c41b")
(setf (get pro_can::VCU :datatype-) "pro_can/VCU")
(setf (get pro_can::VCU :definition-)
      "# [TEMP SIM] VCU — ego-speed message stub (mirrors real pro_can/VCU).
# Field used by acc_aeb_node: MotorVelocity (km/h), cast to double.
float32 MotorVelocity

")



(provide :pro_can/VCU "bad68293825d700d1b4f59a02856c41b")


