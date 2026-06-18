;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::Frame)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'Frame (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::FRAME")
  (make-package "RADAR_CONTI::FRAME"))

(in-package "ROS")
;;//! \htmlinclude Frame.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::Frame
  :super ros::object
  :slots (_header _id _dlc _data _err _rtr _eff ))

(defmethod radar_conti::Frame
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:dlc __dlc) 0)
    ((:data __data) (make-array 8 :initial-element 0 :element-type :char))
    ((:err __err) 0)
    ((:rtr __rtr) 0)
    ((:eff __eff) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _dlc (round __dlc))
   (setq _data __data)
   (setq _err (round __err))
   (setq _rtr (round __rtr))
   (setq _eff (round __eff))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:dlc
   (&optional __dlc)
   (if __dlc (setq _dlc __dlc)) _dlc)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:err
   (&optional __err)
   (if __err (setq _err __err)) _err)
  (:rtr
   (&optional __rtr)
   (if __rtr (setq _rtr __rtr)) _rtr)
  (:eff
   (&optional __eff)
   (if __eff (setq _eff __eff)) _eff)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; uint8 _dlc
    1
    ;; uint8[8] _data
    (* 1    8)
    ;; uint8 _err
    1
    ;; uint8 _rtr
    1
    ;; uint8 _eff
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; uint8 _dlc
       (write-byte _dlc s)
     ;; uint8[8] _data
     (princ _data s)
     ;; uint8 _err
       (write-byte _err s)
     ;; uint8 _rtr
       (write-byte _rtr s)
     ;; uint8 _eff
       (write-byte _eff s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _dlc
     (setq _dlc (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[8] _data
   (setq _data (make-array 8 :element-type :char))
   (replace _data buf :start2 ptr-) (incf ptr- 8)
   ;; uint8 _err
     (setq _err (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rtr
     (setq _rtr (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _eff
     (setq _eff (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get radar_conti::Frame :md5sum-) "a26d3cc4cc1900d6e3717664421f4e34")
(setf (get radar_conti::Frame :datatype-) "radar_conti/Frame")
(setf (get radar_conti::Frame :definition-)
      "std_msgs/Header header
uint32 id
uint8 dlc
uint8[8] data
uint8 err
uint8 rtr
uint8 eff

## @file Frame.msg
# @ingroup ros2can_bridge
# @author Philipp Wuestenberg
# @brief message type to publish can messages to ROS topic
# @param id CAN message id (11/29 bit)
# @param dlc CAN data size in bytes
# @param data CAN data
# @param err error flag bit (0 = data frame, 1 = error message)
# @param rtr remote transmission request flag (1 = rtr frame)
# @param eff frame format flag (0 = standard 11 bit, 1 = extended 29 bit)

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :radar_conti/Frame "a26d3cc4cc1900d6e3717664421f4e34")


