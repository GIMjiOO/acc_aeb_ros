;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::FilterStateHeader)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'FilterStateHeader (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::FILTERSTATEHEADER")
  (make-package "RADAR_CONTI::FILTERSTATEHEADER"))

(in-package "ROS")
;;//! \htmlinclude FilterStateHeader.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::FilterStateHeader
  :super ros::object
  :slots (_header _filterstate_nofclusterfiltercfg _filterstate_nofobjectfiltercfg ))

(defmethod radar_conti::FilterStateHeader
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:filterstate_nofclusterfiltercfg __filterstate_nofclusterfiltercfg) (instance std_msgs::UInt8 :init))
    ((:filterstate_nofobjectfiltercfg __filterstate_nofobjectfiltercfg) (instance std_msgs::UInt8 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _filterstate_nofclusterfiltercfg __filterstate_nofclusterfiltercfg)
   (setq _filterstate_nofobjectfiltercfg __filterstate_nofobjectfiltercfg)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:filterstate_nofclusterfiltercfg
   (&rest __filterstate_nofclusterfiltercfg)
   (if (keywordp (car __filterstate_nofclusterfiltercfg))
       (send* _filterstate_nofclusterfiltercfg __filterstate_nofclusterfiltercfg)
     (progn
       (if __filterstate_nofclusterfiltercfg (setq _filterstate_nofclusterfiltercfg (car __filterstate_nofclusterfiltercfg)))
       _filterstate_nofclusterfiltercfg)))
  (:filterstate_nofobjectfiltercfg
   (&rest __filterstate_nofobjectfiltercfg)
   (if (keywordp (car __filterstate_nofobjectfiltercfg))
       (send* _filterstate_nofobjectfiltercfg __filterstate_nofobjectfiltercfg)
     (progn
       (if __filterstate_nofobjectfiltercfg (setq _filterstate_nofobjectfiltercfg (car __filterstate_nofobjectfiltercfg)))
       _filterstate_nofobjectfiltercfg)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt8 _filterstate_nofclusterfiltercfg
    (send _filterstate_nofclusterfiltercfg :serialization-length)
    ;; std_msgs/UInt8 _filterstate_nofobjectfiltercfg
    (send _filterstate_nofobjectfiltercfg :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt8 _filterstate_nofclusterfiltercfg
       (send _filterstate_nofclusterfiltercfg :serialize s)
     ;; std_msgs/UInt8 _filterstate_nofobjectfiltercfg
       (send _filterstate_nofobjectfiltercfg :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt8 _filterstate_nofclusterfiltercfg
     (send _filterstate_nofclusterfiltercfg :deserialize buf ptr-) (incf ptr- (send _filterstate_nofclusterfiltercfg :serialization-length))
   ;; std_msgs/UInt8 _filterstate_nofobjectfiltercfg
     (send _filterstate_nofobjectfiltercfg :deserialize buf ptr-) (incf ptr- (send _filterstate_nofobjectfiltercfg :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::FilterStateHeader :md5sum-) "9ae5e3ef34336e8c833a830f9ae125c8")
(setf (get radar_conti::FilterStateHeader :datatype-) "radar_conti/FilterStateHeader")
(setf (get radar_conti::FilterStateHeader :definition-)
      "std_msgs/Header header

# Number of filter status messages for configured cluster filter
#
# possible values 0-6
# 0: no cluster filter is set
# 1-6: cluster filters

std_msgs/UInt8 filterstate_nofclusterfiltercfg

# Number of filter status messages for configured object filter
#
# possible values 0-16
# 0: no object filter is set
# 1-16: object filters

std_msgs/UInt8 filterstate_nofobjectfiltercfg

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

================================================================================
MSG: std_msgs/UInt8
uint8 data

")



(provide :radar_conti/FilterStateHeader "9ae5e3ef34336e8c833a830f9ae125c8")


