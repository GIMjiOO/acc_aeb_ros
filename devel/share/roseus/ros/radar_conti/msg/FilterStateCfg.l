;; Auto-generated. Do not edit!


(when (boundp 'radar_conti::FilterStateCfg)
  (if (not (find-package "RADAR_CONTI"))
    (make-package "RADAR_CONTI"))
  (shadow 'FilterStateCfg (find-package "RADAR_CONTI")))
(unless (find-package "RADAR_CONTI::FILTERSTATECFG")
  (make-package "RADAR_CONTI::FILTERSTATECFG"))

(in-package "ROS")
;;//! \htmlinclude FilterStateCfg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass radar_conti::FilterStateCfg
  :super ros::object
  :slots (_header _filtercfg_valid _filtercfg_active _filtercfg_index _filtercfg_type _filtercfg_min_nofobj _filtercfg_min_distance _filtercfg_min_azimuth _filtercfg_min_vreloncome _filtercfg_min_vreldepart _filtercfg_min_rcs _filtercfg_min_lifetime _filtercfg_min_size _filtercfg_min_probexists _filtercfg_min_y _filtercfg_min_x _filtercfg_min_vyrightleft _filtercfg_min_vxoncome _filtercfg_min_vyleftright _filtercfg_min_vxdepart _filtercfg_min_object_class _filtercfg_max_nofobj _filtercfg_max_distance _filtercfg_max_azimuth _filtercfg_max_vreloncome _filtercfg_max_vreldepart _filtercfg_max_rcs _filtercfg_max_lifetime _filtercfg_max_size _filtercfg_max_probexists _filtercfg_max_y _filtercfg_max_x _filtercfg_max_vyrightleft _filtercfg_max_vxoncome _filtercfg_max_vyleftright _filtercfg_max_vxdepart _filtercfg_max_object_class ))

(defmethod radar_conti::FilterStateCfg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:filtercfg_valid __filtercfg_valid) (instance std_msgs::UInt8 :init))
    ((:filtercfg_active __filtercfg_active) (instance std_msgs::UInt8 :init))
    ((:filtercfg_index __filtercfg_index) (instance std_msgs::UInt8 :init))
    ((:filtercfg_type __filtercfg_type) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_nofobj __filtercfg_min_nofobj) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_distance __filtercfg_min_distance) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_azimuth __filtercfg_min_azimuth) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_vreloncome __filtercfg_min_vreloncome) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_vreldepart __filtercfg_min_vreldepart) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_rcs __filtercfg_min_rcs) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_lifetime __filtercfg_min_lifetime) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_size __filtercfg_min_size) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_probexists __filtercfg_min_probexists) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_y __filtercfg_min_y) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_x __filtercfg_min_x) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_vyrightleft __filtercfg_min_vyrightleft) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_vxoncome __filtercfg_min_vxoncome) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_vyleftright __filtercfg_min_vyleftright) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_vxdepart __filtercfg_min_vxdepart) (instance std_msgs::UInt8 :init))
    ((:filtercfg_min_object_class __filtercfg_min_object_class) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_nofobj __filtercfg_max_nofobj) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_distance __filtercfg_max_distance) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_azimuth __filtercfg_max_azimuth) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_vreloncome __filtercfg_max_vreloncome) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_vreldepart __filtercfg_max_vreldepart) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_rcs __filtercfg_max_rcs) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_lifetime __filtercfg_max_lifetime) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_size __filtercfg_max_size) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_probexists __filtercfg_max_probexists) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_y __filtercfg_max_y) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_x __filtercfg_max_x) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_vyrightleft __filtercfg_max_vyrightleft) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_vxoncome __filtercfg_max_vxoncome) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_vyleftright __filtercfg_max_vyleftright) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_vxdepart __filtercfg_max_vxdepart) (instance std_msgs::UInt8 :init))
    ((:filtercfg_max_object_class __filtercfg_max_object_class) (instance std_msgs::UInt8 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _filtercfg_valid __filtercfg_valid)
   (setq _filtercfg_active __filtercfg_active)
   (setq _filtercfg_index __filtercfg_index)
   (setq _filtercfg_type __filtercfg_type)
   (setq _filtercfg_min_nofobj __filtercfg_min_nofobj)
   (setq _filtercfg_min_distance __filtercfg_min_distance)
   (setq _filtercfg_min_azimuth __filtercfg_min_azimuth)
   (setq _filtercfg_min_vreloncome __filtercfg_min_vreloncome)
   (setq _filtercfg_min_vreldepart __filtercfg_min_vreldepart)
   (setq _filtercfg_min_rcs __filtercfg_min_rcs)
   (setq _filtercfg_min_lifetime __filtercfg_min_lifetime)
   (setq _filtercfg_min_size __filtercfg_min_size)
   (setq _filtercfg_min_probexists __filtercfg_min_probexists)
   (setq _filtercfg_min_y __filtercfg_min_y)
   (setq _filtercfg_min_x __filtercfg_min_x)
   (setq _filtercfg_min_vyrightleft __filtercfg_min_vyrightleft)
   (setq _filtercfg_min_vxoncome __filtercfg_min_vxoncome)
   (setq _filtercfg_min_vyleftright __filtercfg_min_vyleftright)
   (setq _filtercfg_min_vxdepart __filtercfg_min_vxdepart)
   (setq _filtercfg_min_object_class __filtercfg_min_object_class)
   (setq _filtercfg_max_nofobj __filtercfg_max_nofobj)
   (setq _filtercfg_max_distance __filtercfg_max_distance)
   (setq _filtercfg_max_azimuth __filtercfg_max_azimuth)
   (setq _filtercfg_max_vreloncome __filtercfg_max_vreloncome)
   (setq _filtercfg_max_vreldepart __filtercfg_max_vreldepart)
   (setq _filtercfg_max_rcs __filtercfg_max_rcs)
   (setq _filtercfg_max_lifetime __filtercfg_max_lifetime)
   (setq _filtercfg_max_size __filtercfg_max_size)
   (setq _filtercfg_max_probexists __filtercfg_max_probexists)
   (setq _filtercfg_max_y __filtercfg_max_y)
   (setq _filtercfg_max_x __filtercfg_max_x)
   (setq _filtercfg_max_vyrightleft __filtercfg_max_vyrightleft)
   (setq _filtercfg_max_vxoncome __filtercfg_max_vxoncome)
   (setq _filtercfg_max_vyleftright __filtercfg_max_vyleftright)
   (setq _filtercfg_max_vxdepart __filtercfg_max_vxdepart)
   (setq _filtercfg_max_object_class __filtercfg_max_object_class)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:filtercfg_valid
   (&rest __filtercfg_valid)
   (if (keywordp (car __filtercfg_valid))
       (send* _filtercfg_valid __filtercfg_valid)
     (progn
       (if __filtercfg_valid (setq _filtercfg_valid (car __filtercfg_valid)))
       _filtercfg_valid)))
  (:filtercfg_active
   (&rest __filtercfg_active)
   (if (keywordp (car __filtercfg_active))
       (send* _filtercfg_active __filtercfg_active)
     (progn
       (if __filtercfg_active (setq _filtercfg_active (car __filtercfg_active)))
       _filtercfg_active)))
  (:filtercfg_index
   (&rest __filtercfg_index)
   (if (keywordp (car __filtercfg_index))
       (send* _filtercfg_index __filtercfg_index)
     (progn
       (if __filtercfg_index (setq _filtercfg_index (car __filtercfg_index)))
       _filtercfg_index)))
  (:filtercfg_type
   (&rest __filtercfg_type)
   (if (keywordp (car __filtercfg_type))
       (send* _filtercfg_type __filtercfg_type)
     (progn
       (if __filtercfg_type (setq _filtercfg_type (car __filtercfg_type)))
       _filtercfg_type)))
  (:filtercfg_min_nofobj
   (&rest __filtercfg_min_nofobj)
   (if (keywordp (car __filtercfg_min_nofobj))
       (send* _filtercfg_min_nofobj __filtercfg_min_nofobj)
     (progn
       (if __filtercfg_min_nofobj (setq _filtercfg_min_nofobj (car __filtercfg_min_nofobj)))
       _filtercfg_min_nofobj)))
  (:filtercfg_min_distance
   (&rest __filtercfg_min_distance)
   (if (keywordp (car __filtercfg_min_distance))
       (send* _filtercfg_min_distance __filtercfg_min_distance)
     (progn
       (if __filtercfg_min_distance (setq _filtercfg_min_distance (car __filtercfg_min_distance)))
       _filtercfg_min_distance)))
  (:filtercfg_min_azimuth
   (&rest __filtercfg_min_azimuth)
   (if (keywordp (car __filtercfg_min_azimuth))
       (send* _filtercfg_min_azimuth __filtercfg_min_azimuth)
     (progn
       (if __filtercfg_min_azimuth (setq _filtercfg_min_azimuth (car __filtercfg_min_azimuth)))
       _filtercfg_min_azimuth)))
  (:filtercfg_min_vreloncome
   (&rest __filtercfg_min_vreloncome)
   (if (keywordp (car __filtercfg_min_vreloncome))
       (send* _filtercfg_min_vreloncome __filtercfg_min_vreloncome)
     (progn
       (if __filtercfg_min_vreloncome (setq _filtercfg_min_vreloncome (car __filtercfg_min_vreloncome)))
       _filtercfg_min_vreloncome)))
  (:filtercfg_min_vreldepart
   (&rest __filtercfg_min_vreldepart)
   (if (keywordp (car __filtercfg_min_vreldepart))
       (send* _filtercfg_min_vreldepart __filtercfg_min_vreldepart)
     (progn
       (if __filtercfg_min_vreldepart (setq _filtercfg_min_vreldepart (car __filtercfg_min_vreldepart)))
       _filtercfg_min_vreldepart)))
  (:filtercfg_min_rcs
   (&rest __filtercfg_min_rcs)
   (if (keywordp (car __filtercfg_min_rcs))
       (send* _filtercfg_min_rcs __filtercfg_min_rcs)
     (progn
       (if __filtercfg_min_rcs (setq _filtercfg_min_rcs (car __filtercfg_min_rcs)))
       _filtercfg_min_rcs)))
  (:filtercfg_min_lifetime
   (&rest __filtercfg_min_lifetime)
   (if (keywordp (car __filtercfg_min_lifetime))
       (send* _filtercfg_min_lifetime __filtercfg_min_lifetime)
     (progn
       (if __filtercfg_min_lifetime (setq _filtercfg_min_lifetime (car __filtercfg_min_lifetime)))
       _filtercfg_min_lifetime)))
  (:filtercfg_min_size
   (&rest __filtercfg_min_size)
   (if (keywordp (car __filtercfg_min_size))
       (send* _filtercfg_min_size __filtercfg_min_size)
     (progn
       (if __filtercfg_min_size (setq _filtercfg_min_size (car __filtercfg_min_size)))
       _filtercfg_min_size)))
  (:filtercfg_min_probexists
   (&rest __filtercfg_min_probexists)
   (if (keywordp (car __filtercfg_min_probexists))
       (send* _filtercfg_min_probexists __filtercfg_min_probexists)
     (progn
       (if __filtercfg_min_probexists (setq _filtercfg_min_probexists (car __filtercfg_min_probexists)))
       _filtercfg_min_probexists)))
  (:filtercfg_min_y
   (&rest __filtercfg_min_y)
   (if (keywordp (car __filtercfg_min_y))
       (send* _filtercfg_min_y __filtercfg_min_y)
     (progn
       (if __filtercfg_min_y (setq _filtercfg_min_y (car __filtercfg_min_y)))
       _filtercfg_min_y)))
  (:filtercfg_min_x
   (&rest __filtercfg_min_x)
   (if (keywordp (car __filtercfg_min_x))
       (send* _filtercfg_min_x __filtercfg_min_x)
     (progn
       (if __filtercfg_min_x (setq _filtercfg_min_x (car __filtercfg_min_x)))
       _filtercfg_min_x)))
  (:filtercfg_min_vyrightleft
   (&rest __filtercfg_min_vyrightleft)
   (if (keywordp (car __filtercfg_min_vyrightleft))
       (send* _filtercfg_min_vyrightleft __filtercfg_min_vyrightleft)
     (progn
       (if __filtercfg_min_vyrightleft (setq _filtercfg_min_vyrightleft (car __filtercfg_min_vyrightleft)))
       _filtercfg_min_vyrightleft)))
  (:filtercfg_min_vxoncome
   (&rest __filtercfg_min_vxoncome)
   (if (keywordp (car __filtercfg_min_vxoncome))
       (send* _filtercfg_min_vxoncome __filtercfg_min_vxoncome)
     (progn
       (if __filtercfg_min_vxoncome (setq _filtercfg_min_vxoncome (car __filtercfg_min_vxoncome)))
       _filtercfg_min_vxoncome)))
  (:filtercfg_min_vyleftright
   (&rest __filtercfg_min_vyleftright)
   (if (keywordp (car __filtercfg_min_vyleftright))
       (send* _filtercfg_min_vyleftright __filtercfg_min_vyleftright)
     (progn
       (if __filtercfg_min_vyleftright (setq _filtercfg_min_vyleftright (car __filtercfg_min_vyleftright)))
       _filtercfg_min_vyleftright)))
  (:filtercfg_min_vxdepart
   (&rest __filtercfg_min_vxdepart)
   (if (keywordp (car __filtercfg_min_vxdepart))
       (send* _filtercfg_min_vxdepart __filtercfg_min_vxdepart)
     (progn
       (if __filtercfg_min_vxdepart (setq _filtercfg_min_vxdepart (car __filtercfg_min_vxdepart)))
       _filtercfg_min_vxdepart)))
  (:filtercfg_min_object_class
   (&rest __filtercfg_min_object_class)
   (if (keywordp (car __filtercfg_min_object_class))
       (send* _filtercfg_min_object_class __filtercfg_min_object_class)
     (progn
       (if __filtercfg_min_object_class (setq _filtercfg_min_object_class (car __filtercfg_min_object_class)))
       _filtercfg_min_object_class)))
  (:filtercfg_max_nofobj
   (&rest __filtercfg_max_nofobj)
   (if (keywordp (car __filtercfg_max_nofobj))
       (send* _filtercfg_max_nofobj __filtercfg_max_nofobj)
     (progn
       (if __filtercfg_max_nofobj (setq _filtercfg_max_nofobj (car __filtercfg_max_nofobj)))
       _filtercfg_max_nofobj)))
  (:filtercfg_max_distance
   (&rest __filtercfg_max_distance)
   (if (keywordp (car __filtercfg_max_distance))
       (send* _filtercfg_max_distance __filtercfg_max_distance)
     (progn
       (if __filtercfg_max_distance (setq _filtercfg_max_distance (car __filtercfg_max_distance)))
       _filtercfg_max_distance)))
  (:filtercfg_max_azimuth
   (&rest __filtercfg_max_azimuth)
   (if (keywordp (car __filtercfg_max_azimuth))
       (send* _filtercfg_max_azimuth __filtercfg_max_azimuth)
     (progn
       (if __filtercfg_max_azimuth (setq _filtercfg_max_azimuth (car __filtercfg_max_azimuth)))
       _filtercfg_max_azimuth)))
  (:filtercfg_max_vreloncome
   (&rest __filtercfg_max_vreloncome)
   (if (keywordp (car __filtercfg_max_vreloncome))
       (send* _filtercfg_max_vreloncome __filtercfg_max_vreloncome)
     (progn
       (if __filtercfg_max_vreloncome (setq _filtercfg_max_vreloncome (car __filtercfg_max_vreloncome)))
       _filtercfg_max_vreloncome)))
  (:filtercfg_max_vreldepart
   (&rest __filtercfg_max_vreldepart)
   (if (keywordp (car __filtercfg_max_vreldepart))
       (send* _filtercfg_max_vreldepart __filtercfg_max_vreldepart)
     (progn
       (if __filtercfg_max_vreldepart (setq _filtercfg_max_vreldepart (car __filtercfg_max_vreldepart)))
       _filtercfg_max_vreldepart)))
  (:filtercfg_max_rcs
   (&rest __filtercfg_max_rcs)
   (if (keywordp (car __filtercfg_max_rcs))
       (send* _filtercfg_max_rcs __filtercfg_max_rcs)
     (progn
       (if __filtercfg_max_rcs (setq _filtercfg_max_rcs (car __filtercfg_max_rcs)))
       _filtercfg_max_rcs)))
  (:filtercfg_max_lifetime
   (&rest __filtercfg_max_lifetime)
   (if (keywordp (car __filtercfg_max_lifetime))
       (send* _filtercfg_max_lifetime __filtercfg_max_lifetime)
     (progn
       (if __filtercfg_max_lifetime (setq _filtercfg_max_lifetime (car __filtercfg_max_lifetime)))
       _filtercfg_max_lifetime)))
  (:filtercfg_max_size
   (&rest __filtercfg_max_size)
   (if (keywordp (car __filtercfg_max_size))
       (send* _filtercfg_max_size __filtercfg_max_size)
     (progn
       (if __filtercfg_max_size (setq _filtercfg_max_size (car __filtercfg_max_size)))
       _filtercfg_max_size)))
  (:filtercfg_max_probexists
   (&rest __filtercfg_max_probexists)
   (if (keywordp (car __filtercfg_max_probexists))
       (send* _filtercfg_max_probexists __filtercfg_max_probexists)
     (progn
       (if __filtercfg_max_probexists (setq _filtercfg_max_probexists (car __filtercfg_max_probexists)))
       _filtercfg_max_probexists)))
  (:filtercfg_max_y
   (&rest __filtercfg_max_y)
   (if (keywordp (car __filtercfg_max_y))
       (send* _filtercfg_max_y __filtercfg_max_y)
     (progn
       (if __filtercfg_max_y (setq _filtercfg_max_y (car __filtercfg_max_y)))
       _filtercfg_max_y)))
  (:filtercfg_max_x
   (&rest __filtercfg_max_x)
   (if (keywordp (car __filtercfg_max_x))
       (send* _filtercfg_max_x __filtercfg_max_x)
     (progn
       (if __filtercfg_max_x (setq _filtercfg_max_x (car __filtercfg_max_x)))
       _filtercfg_max_x)))
  (:filtercfg_max_vyrightleft
   (&rest __filtercfg_max_vyrightleft)
   (if (keywordp (car __filtercfg_max_vyrightleft))
       (send* _filtercfg_max_vyrightleft __filtercfg_max_vyrightleft)
     (progn
       (if __filtercfg_max_vyrightleft (setq _filtercfg_max_vyrightleft (car __filtercfg_max_vyrightleft)))
       _filtercfg_max_vyrightleft)))
  (:filtercfg_max_vxoncome
   (&rest __filtercfg_max_vxoncome)
   (if (keywordp (car __filtercfg_max_vxoncome))
       (send* _filtercfg_max_vxoncome __filtercfg_max_vxoncome)
     (progn
       (if __filtercfg_max_vxoncome (setq _filtercfg_max_vxoncome (car __filtercfg_max_vxoncome)))
       _filtercfg_max_vxoncome)))
  (:filtercfg_max_vyleftright
   (&rest __filtercfg_max_vyleftright)
   (if (keywordp (car __filtercfg_max_vyleftright))
       (send* _filtercfg_max_vyleftright __filtercfg_max_vyleftright)
     (progn
       (if __filtercfg_max_vyleftright (setq _filtercfg_max_vyleftright (car __filtercfg_max_vyleftright)))
       _filtercfg_max_vyleftright)))
  (:filtercfg_max_vxdepart
   (&rest __filtercfg_max_vxdepart)
   (if (keywordp (car __filtercfg_max_vxdepart))
       (send* _filtercfg_max_vxdepart __filtercfg_max_vxdepart)
     (progn
       (if __filtercfg_max_vxdepart (setq _filtercfg_max_vxdepart (car __filtercfg_max_vxdepart)))
       _filtercfg_max_vxdepart)))
  (:filtercfg_max_object_class
   (&rest __filtercfg_max_object_class)
   (if (keywordp (car __filtercfg_max_object_class))
       (send* _filtercfg_max_object_class __filtercfg_max_object_class)
     (progn
       (if __filtercfg_max_object_class (setq _filtercfg_max_object_class (car __filtercfg_max_object_class)))
       _filtercfg_max_object_class)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_valid
    (send _filtercfg_valid :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_active
    (send _filtercfg_active :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_index
    (send _filtercfg_index :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_type
    (send _filtercfg_type :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_nofobj
    (send _filtercfg_min_nofobj :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_distance
    (send _filtercfg_min_distance :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_azimuth
    (send _filtercfg_min_azimuth :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_vreloncome
    (send _filtercfg_min_vreloncome :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_vreldepart
    (send _filtercfg_min_vreldepart :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_rcs
    (send _filtercfg_min_rcs :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_lifetime
    (send _filtercfg_min_lifetime :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_size
    (send _filtercfg_min_size :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_probexists
    (send _filtercfg_min_probexists :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_y
    (send _filtercfg_min_y :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_x
    (send _filtercfg_min_x :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_vyrightleft
    (send _filtercfg_min_vyrightleft :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_vxoncome
    (send _filtercfg_min_vxoncome :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_vyleftright
    (send _filtercfg_min_vyleftright :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_vxdepart
    (send _filtercfg_min_vxdepart :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_min_object_class
    (send _filtercfg_min_object_class :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_nofobj
    (send _filtercfg_max_nofobj :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_distance
    (send _filtercfg_max_distance :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_azimuth
    (send _filtercfg_max_azimuth :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_vreloncome
    (send _filtercfg_max_vreloncome :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_vreldepart
    (send _filtercfg_max_vreldepart :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_rcs
    (send _filtercfg_max_rcs :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_lifetime
    (send _filtercfg_max_lifetime :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_size
    (send _filtercfg_max_size :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_probexists
    (send _filtercfg_max_probexists :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_y
    (send _filtercfg_max_y :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_x
    (send _filtercfg_max_x :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_vyrightleft
    (send _filtercfg_max_vyrightleft :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_vxoncome
    (send _filtercfg_max_vxoncome :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_vyleftright
    (send _filtercfg_max_vyleftright :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_vxdepart
    (send _filtercfg_max_vxdepart :serialization-length)
    ;; std_msgs/UInt8 _filtercfg_max_object_class
    (send _filtercfg_max_object_class :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/UInt8 _filtercfg_valid
       (send _filtercfg_valid :serialize s)
     ;; std_msgs/UInt8 _filtercfg_active
       (send _filtercfg_active :serialize s)
     ;; std_msgs/UInt8 _filtercfg_index
       (send _filtercfg_index :serialize s)
     ;; std_msgs/UInt8 _filtercfg_type
       (send _filtercfg_type :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_nofobj
       (send _filtercfg_min_nofobj :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_distance
       (send _filtercfg_min_distance :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_azimuth
       (send _filtercfg_min_azimuth :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_vreloncome
       (send _filtercfg_min_vreloncome :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_vreldepart
       (send _filtercfg_min_vreldepart :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_rcs
       (send _filtercfg_min_rcs :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_lifetime
       (send _filtercfg_min_lifetime :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_size
       (send _filtercfg_min_size :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_probexists
       (send _filtercfg_min_probexists :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_y
       (send _filtercfg_min_y :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_x
       (send _filtercfg_min_x :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_vyrightleft
       (send _filtercfg_min_vyrightleft :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_vxoncome
       (send _filtercfg_min_vxoncome :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_vyleftright
       (send _filtercfg_min_vyleftright :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_vxdepart
       (send _filtercfg_min_vxdepart :serialize s)
     ;; std_msgs/UInt8 _filtercfg_min_object_class
       (send _filtercfg_min_object_class :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_nofobj
       (send _filtercfg_max_nofobj :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_distance
       (send _filtercfg_max_distance :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_azimuth
       (send _filtercfg_max_azimuth :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_vreloncome
       (send _filtercfg_max_vreloncome :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_vreldepart
       (send _filtercfg_max_vreldepart :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_rcs
       (send _filtercfg_max_rcs :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_lifetime
       (send _filtercfg_max_lifetime :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_size
       (send _filtercfg_max_size :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_probexists
       (send _filtercfg_max_probexists :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_y
       (send _filtercfg_max_y :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_x
       (send _filtercfg_max_x :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_vyrightleft
       (send _filtercfg_max_vyrightleft :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_vxoncome
       (send _filtercfg_max_vxoncome :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_vyleftright
       (send _filtercfg_max_vyleftright :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_vxdepart
       (send _filtercfg_max_vxdepart :serialize s)
     ;; std_msgs/UInt8 _filtercfg_max_object_class
       (send _filtercfg_max_object_class :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_valid
     (send _filtercfg_valid :deserialize buf ptr-) (incf ptr- (send _filtercfg_valid :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_active
     (send _filtercfg_active :deserialize buf ptr-) (incf ptr- (send _filtercfg_active :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_index
     (send _filtercfg_index :deserialize buf ptr-) (incf ptr- (send _filtercfg_index :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_type
     (send _filtercfg_type :deserialize buf ptr-) (incf ptr- (send _filtercfg_type :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_nofobj
     (send _filtercfg_min_nofobj :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_nofobj :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_distance
     (send _filtercfg_min_distance :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_distance :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_azimuth
     (send _filtercfg_min_azimuth :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_azimuth :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_vreloncome
     (send _filtercfg_min_vreloncome :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_vreloncome :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_vreldepart
     (send _filtercfg_min_vreldepart :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_vreldepart :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_rcs
     (send _filtercfg_min_rcs :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_rcs :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_lifetime
     (send _filtercfg_min_lifetime :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_lifetime :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_size
     (send _filtercfg_min_size :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_size :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_probexists
     (send _filtercfg_min_probexists :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_probexists :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_y
     (send _filtercfg_min_y :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_y :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_x
     (send _filtercfg_min_x :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_x :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_vyrightleft
     (send _filtercfg_min_vyrightleft :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_vyrightleft :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_vxoncome
     (send _filtercfg_min_vxoncome :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_vxoncome :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_vyleftright
     (send _filtercfg_min_vyleftright :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_vyleftright :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_vxdepart
     (send _filtercfg_min_vxdepart :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_vxdepart :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_min_object_class
     (send _filtercfg_min_object_class :deserialize buf ptr-) (incf ptr- (send _filtercfg_min_object_class :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_nofobj
     (send _filtercfg_max_nofobj :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_nofobj :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_distance
     (send _filtercfg_max_distance :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_distance :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_azimuth
     (send _filtercfg_max_azimuth :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_azimuth :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_vreloncome
     (send _filtercfg_max_vreloncome :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_vreloncome :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_vreldepart
     (send _filtercfg_max_vreldepart :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_vreldepart :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_rcs
     (send _filtercfg_max_rcs :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_rcs :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_lifetime
     (send _filtercfg_max_lifetime :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_lifetime :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_size
     (send _filtercfg_max_size :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_size :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_probexists
     (send _filtercfg_max_probexists :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_probexists :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_y
     (send _filtercfg_max_y :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_y :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_x
     (send _filtercfg_max_x :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_x :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_vyrightleft
     (send _filtercfg_max_vyrightleft :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_vyrightleft :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_vxoncome
     (send _filtercfg_max_vxoncome :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_vxoncome :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_vyleftright
     (send _filtercfg_max_vyleftright :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_vyleftright :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_vxdepart
     (send _filtercfg_max_vxdepart :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_vxdepart :serialization-length))
   ;; std_msgs/UInt8 _filtercfg_max_object_class
     (send _filtercfg_max_object_class :deserialize buf ptr-) (incf ptr- (send _filtercfg_max_object_class :serialization-length))
   ;;
   self)
  )

(setf (get radar_conti::FilterStateCfg :md5sum-) "f9f531568fe5dff4e54bf69af7e17849")
(setf (get radar_conti::FilterStateCfg :datatype-) "radar_conti/FilterStateCfg")
(setf (get radar_conti::FilterStateCfg :definition-)
      "std_msgs/Header header
std_msgs/UInt8 filtercfg_valid
std_msgs/UInt8 filtercfg_active
std_msgs/UInt8 filtercfg_index
std_msgs/UInt8 filtercfg_type
std_msgs/UInt8 filtercfg_min_nofobj
std_msgs/UInt8 filtercfg_min_distance
std_msgs/UInt8 filtercfg_min_azimuth
std_msgs/UInt8 filtercfg_min_vreloncome
std_msgs/UInt8 filtercfg_min_vreldepart
std_msgs/UInt8 filtercfg_min_rcs
std_msgs/UInt8 filtercfg_min_lifetime
std_msgs/UInt8 filtercfg_min_size
std_msgs/UInt8 filtercfg_min_probexists
std_msgs/UInt8 filtercfg_min_y
std_msgs/UInt8 filtercfg_min_x
std_msgs/UInt8 filtercfg_min_vyrightleft
std_msgs/UInt8 filtercfg_min_vxoncome
std_msgs/UInt8 filtercfg_min_vyleftright
std_msgs/UInt8 filtercfg_min_vxdepart
std_msgs/UInt8 filtercfg_min_object_class
std_msgs/UInt8 filtercfg_max_nofobj
std_msgs/UInt8 filtercfg_max_distance
std_msgs/UInt8 filtercfg_max_azimuth
std_msgs/UInt8 filtercfg_max_vreloncome
std_msgs/UInt8 filtercfg_max_vreldepart
std_msgs/UInt8 filtercfg_max_rcs
std_msgs/UInt8 filtercfg_max_lifetime
std_msgs/UInt8 filtercfg_max_size
std_msgs/UInt8 filtercfg_max_probexists
std_msgs/UInt8 filtercfg_max_y
std_msgs/UInt8 filtercfg_max_x
std_msgs/UInt8 filtercfg_max_vyrightleft
std_msgs/UInt8 filtercfg_max_vxoncome
std_msgs/UInt8 filtercfg_max_vyleftright
std_msgs/UInt8 filtercfg_max_vxdepart
std_msgs/UInt8 filtercfg_max_object_class


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



(provide :radar_conti/FilterStateCfg "f9f531568fe5dff4e54bf69af7e17849")


