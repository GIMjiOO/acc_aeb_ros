;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::VersionID)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'VersionID (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::VERSIONID")
  (make-package "RADAR_CONTI::VERSIONID"))

(in-package "ROS")
;;//! \htmlinclude VersionID.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::VersionID
  :super ros::object
  :slots (_header _version_majorrelease _version_minorrelease _version_patchlevel _version_extendedrange _version_countrycode ))

(defmethod radar_conti::VersionID
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:version_majorrelease __version_majorrelease) (instance std_msgs::Int32 :init))
    ((:version_minorrelease __version_minorrelease) (instance std_msgs::Int32 :init))
    ((:version_patchlevel __version_patchlevel) (instance std_msgs::Int32 :init))
    ((:version_extendedrange __version_extendedrange) (instance std_msgs::String :init))
    ((:version_countrycode __version_countrycode) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _version_majorrelease __version_majorrelease)
   (setq _version_minorrelease __version_minorrelease)
   (setq _version_patchlevel __version_patchlevel)
   (setq _version_extendedrange __version_extendedrange)
   (setq _version_countrycode __version_countrycode)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:version_majorrelease
   (&rest __version_majorrelease)
   (if (keywordp (car __version_majorrelease))
       (send* _version_majorrelease __version_majorrelease)
     (progn
       (if __version_majorrelease (setq _version_majorrelease (car __version_majorrelease)))
       _version_majorrelease)))
  (:version_minorrelease
   (&rest __version_minorrelease)
   (if (keywordp (car __version_minorrelease))
       (send* _version_minorrelease __version_minorrelease)
     (progn
       (if __version_minorrelease (setq _version_minorrelease (car __version_minorrelease)))
       _version_minorrelease)))
  (:version_patchlevel
   (&rest __version_patchlevel)
   (if (keywordp (car __version_patchlevel))
       (send* _version_patchlevel __version_patchlevel)
     (progn
       (if __version_patchlevel (setq _version_patchlevel (car __version_patchlevel)))
       _version_patchlevel)))
  (:version_extendedrange
   (&rest __version_extendedrange)
   (if (keywordp (car __version_extendedrange))
       (send* _version_extendedrange __version_extendedrange)
     (progn
       (if __version_extendedrange (setq _version_extendedrange (car __version_extendedrange)))
       _version_extendedrange)))
  (:version_countrycode
   (&rest __version_countrycode)
   (if (keywordp (car __version_countrycode))
       (send* _version_countrycode __version_countrycode)
     (progn
       (if __version_countrycode (setq _version_countrycode (car __version_countrycode)))
       _version_countrycode)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Int32 _version_majorrelease
    (send _version_majorrelease :serialization-length)
    ;; std_msgs/Int32 _version_minorrelease
    (send _version_minorrelease :serialization-length)
    ;; std_msgs/Int32 _version_patchlevel
    (send _version_patchlevel :serialization-length)
    ;; std_msgs/String _version_extendedrange
    (send _version_extendedrange :serialization-length)
    ;; std_msgs/String _version_countrycode
    (send _version_countrycode :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Int32 _version_majorrelease
       (send _version_majorrelease :serialize s)
     ;; std_msgs/Int32 _version_minorrelease
       (send _version_minorrelease :serialize s)
     ;; std_msgs/Int32 _version_patchlevel
       (send _version_patchlevel :serialize s)
     ;; std_msgs/String _version_extendedrange
       (send _version_extendedrange :serialize s)
     ;; std_msgs/String _version_countrycode
       (send _version_countrycode :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Int32 _version_majorrelease
     (send _version_majorrelease :deserialize buf ptr-) (incf ptr- (send _version_majorrelease :serialization-length))
   ;; std_msgs/Int32 _version_minorrelease
     (send _version_minorrelease :deserialize buf ptr-) (incf ptr- (send _version_minorrelease :serialization-length))
   ;; std_msgs/Int32 _version_patchlevel
     (send _version_patchlevel :deserialize buf ptr-) (incf ptr- (send _version_patchlevel :serialization-length))
   ;; std_msgs/String _version_extendedrange
     (send _version_extendedrange :deserialize buf ptr-) (incf ptr- (send _version_extendedrange :serialization-length))
   ;; std_msgs/String _version_countrycode
     (send _version_countrycode :deserialize buf ptr-) (incf ptr- (send _version_countrycode :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::VersionID :md5sum-) "ea1b12f3e20711755dbdd58cbc0c1b78")
(setf (get radar_conti::VersionID :datatype-) "radar_conti/VersionID")
(setf (get radar_conti::VersionID :definition-)
      "#  ------------------------------------------------------------------------
#
#  Name:       VersionID
#  Id:         0x700
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
#                                         +-- Version_MajorRelease
#           +---+---+---+---+---+---+---+---+
#         1 |<-----------------------------x|
#     B     +---+---+---+---+---+---+---+---+
#     y                                   +-- Version_MinorRelease
#     t     +---+---+---+---+---+---+---+---+
#     e   2 |<-----------------------------x|
#           +---+---+---+---+---+---+---+---+
#                                         +-- Version_PatchLevel
#           +---+---+---+---+---+---+---+---+
#         3 |   |   |   |   |   |   |<-x|<-x|
#           +---+---+---+---+---+---+---+---+
#                                     |   +-- Version_CountryCode
#                                     +-- Version_ExtendedRange
#
#  Signal tree:
#
#    -- {root}
#       +-- Version_MajorRelease
#       +-- Version_MinorRelease
#       +-- Version_PatchLevel
#       +-- Version_ExtendedRange
#       +-- Version_CountryCode
#
#  ------------------------------------------------------------------------
std_msgs/Header header
std_msgs/Int32 version_majorrelease
std_msgs/Int32 version_minorrelease
std_msgs/Int32 version_patchlevel
std_msgs/String version_extendedrange
std_msgs/String version_countrycode
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
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/String
string data

")



(provide :radar_conti/VersionID "ea1b12f3e20711755dbdd58cbc0c1b78")


