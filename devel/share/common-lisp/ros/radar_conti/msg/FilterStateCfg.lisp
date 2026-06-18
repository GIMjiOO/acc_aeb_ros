; Auto-generated. Do not edit!


(cl:in-package radar_conti-msg)


;//! \htmlinclude FilterStateCfg.msg.html

(cl:defclass <FilterStateCfg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (filtercfg_valid
    :reader filtercfg_valid
    :initarg :filtercfg_valid
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_active
    :reader filtercfg_active
    :initarg :filtercfg_active
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_index
    :reader filtercfg_index
    :initarg :filtercfg_index
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_type
    :reader filtercfg_type
    :initarg :filtercfg_type
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_nofobj
    :reader filtercfg_min_nofobj
    :initarg :filtercfg_min_nofobj
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_distance
    :reader filtercfg_min_distance
    :initarg :filtercfg_min_distance
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_azimuth
    :reader filtercfg_min_azimuth
    :initarg :filtercfg_min_azimuth
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_vreloncome
    :reader filtercfg_min_vreloncome
    :initarg :filtercfg_min_vreloncome
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_vreldepart
    :reader filtercfg_min_vreldepart
    :initarg :filtercfg_min_vreldepart
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_rcs
    :reader filtercfg_min_rcs
    :initarg :filtercfg_min_rcs
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_lifetime
    :reader filtercfg_min_lifetime
    :initarg :filtercfg_min_lifetime
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_size
    :reader filtercfg_min_size
    :initarg :filtercfg_min_size
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_probexists
    :reader filtercfg_min_probexists
    :initarg :filtercfg_min_probexists
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_y
    :reader filtercfg_min_y
    :initarg :filtercfg_min_y
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_x
    :reader filtercfg_min_x
    :initarg :filtercfg_min_x
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_vyrightleft
    :reader filtercfg_min_vyrightleft
    :initarg :filtercfg_min_vyrightleft
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_vxoncome
    :reader filtercfg_min_vxoncome
    :initarg :filtercfg_min_vxoncome
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_vyleftright
    :reader filtercfg_min_vyleftright
    :initarg :filtercfg_min_vyleftright
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_vxdepart
    :reader filtercfg_min_vxdepart
    :initarg :filtercfg_min_vxdepart
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_min_object_class
    :reader filtercfg_min_object_class
    :initarg :filtercfg_min_object_class
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_nofobj
    :reader filtercfg_max_nofobj
    :initarg :filtercfg_max_nofobj
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_distance
    :reader filtercfg_max_distance
    :initarg :filtercfg_max_distance
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_azimuth
    :reader filtercfg_max_azimuth
    :initarg :filtercfg_max_azimuth
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_vreloncome
    :reader filtercfg_max_vreloncome
    :initarg :filtercfg_max_vreloncome
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_vreldepart
    :reader filtercfg_max_vreldepart
    :initarg :filtercfg_max_vreldepart
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_rcs
    :reader filtercfg_max_rcs
    :initarg :filtercfg_max_rcs
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_lifetime
    :reader filtercfg_max_lifetime
    :initarg :filtercfg_max_lifetime
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_size
    :reader filtercfg_max_size
    :initarg :filtercfg_max_size
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_probexists
    :reader filtercfg_max_probexists
    :initarg :filtercfg_max_probexists
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_y
    :reader filtercfg_max_y
    :initarg :filtercfg_max_y
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_x
    :reader filtercfg_max_x
    :initarg :filtercfg_max_x
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_vyrightleft
    :reader filtercfg_max_vyrightleft
    :initarg :filtercfg_max_vyrightleft
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_vxoncome
    :reader filtercfg_max_vxoncome
    :initarg :filtercfg_max_vxoncome
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_vyleftright
    :reader filtercfg_max_vyleftright
    :initarg :filtercfg_max_vyleftright
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_vxdepart
    :reader filtercfg_max_vxdepart
    :initarg :filtercfg_max_vxdepart
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8))
   (filtercfg_max_object_class
    :reader filtercfg_max_object_class
    :initarg :filtercfg_max_object_class
    :type std_msgs-msg:UInt8
    :initform (cl:make-instance 'std_msgs-msg:UInt8)))
)

(cl:defclass FilterStateCfg (<FilterStateCfg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilterStateCfg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilterStateCfg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name radar_conti-msg:<FilterStateCfg> is deprecated: use radar_conti-msg:FilterStateCfg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:header-val is deprecated.  Use radar_conti-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'filtercfg_valid-val :lambda-list '(m))
(cl:defmethod filtercfg_valid-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_valid-val is deprecated.  Use radar_conti-msg:filtercfg_valid instead.")
  (filtercfg_valid m))

(cl:ensure-generic-function 'filtercfg_active-val :lambda-list '(m))
(cl:defmethod filtercfg_active-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_active-val is deprecated.  Use radar_conti-msg:filtercfg_active instead.")
  (filtercfg_active m))

(cl:ensure-generic-function 'filtercfg_index-val :lambda-list '(m))
(cl:defmethod filtercfg_index-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_index-val is deprecated.  Use radar_conti-msg:filtercfg_index instead.")
  (filtercfg_index m))

(cl:ensure-generic-function 'filtercfg_type-val :lambda-list '(m))
(cl:defmethod filtercfg_type-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_type-val is deprecated.  Use radar_conti-msg:filtercfg_type instead.")
  (filtercfg_type m))

(cl:ensure-generic-function 'filtercfg_min_nofobj-val :lambda-list '(m))
(cl:defmethod filtercfg_min_nofobj-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_nofobj-val is deprecated.  Use radar_conti-msg:filtercfg_min_nofobj instead.")
  (filtercfg_min_nofobj m))

(cl:ensure-generic-function 'filtercfg_min_distance-val :lambda-list '(m))
(cl:defmethod filtercfg_min_distance-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_distance-val is deprecated.  Use radar_conti-msg:filtercfg_min_distance instead.")
  (filtercfg_min_distance m))

(cl:ensure-generic-function 'filtercfg_min_azimuth-val :lambda-list '(m))
(cl:defmethod filtercfg_min_azimuth-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_azimuth-val is deprecated.  Use radar_conti-msg:filtercfg_min_azimuth instead.")
  (filtercfg_min_azimuth m))

(cl:ensure-generic-function 'filtercfg_min_vreloncome-val :lambda-list '(m))
(cl:defmethod filtercfg_min_vreloncome-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_vreloncome-val is deprecated.  Use radar_conti-msg:filtercfg_min_vreloncome instead.")
  (filtercfg_min_vreloncome m))

(cl:ensure-generic-function 'filtercfg_min_vreldepart-val :lambda-list '(m))
(cl:defmethod filtercfg_min_vreldepart-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_vreldepart-val is deprecated.  Use radar_conti-msg:filtercfg_min_vreldepart instead.")
  (filtercfg_min_vreldepart m))

(cl:ensure-generic-function 'filtercfg_min_rcs-val :lambda-list '(m))
(cl:defmethod filtercfg_min_rcs-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_rcs-val is deprecated.  Use radar_conti-msg:filtercfg_min_rcs instead.")
  (filtercfg_min_rcs m))

(cl:ensure-generic-function 'filtercfg_min_lifetime-val :lambda-list '(m))
(cl:defmethod filtercfg_min_lifetime-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_lifetime-val is deprecated.  Use radar_conti-msg:filtercfg_min_lifetime instead.")
  (filtercfg_min_lifetime m))

(cl:ensure-generic-function 'filtercfg_min_size-val :lambda-list '(m))
(cl:defmethod filtercfg_min_size-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_size-val is deprecated.  Use radar_conti-msg:filtercfg_min_size instead.")
  (filtercfg_min_size m))

(cl:ensure-generic-function 'filtercfg_min_probexists-val :lambda-list '(m))
(cl:defmethod filtercfg_min_probexists-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_probexists-val is deprecated.  Use radar_conti-msg:filtercfg_min_probexists instead.")
  (filtercfg_min_probexists m))

(cl:ensure-generic-function 'filtercfg_min_y-val :lambda-list '(m))
(cl:defmethod filtercfg_min_y-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_y-val is deprecated.  Use radar_conti-msg:filtercfg_min_y instead.")
  (filtercfg_min_y m))

(cl:ensure-generic-function 'filtercfg_min_x-val :lambda-list '(m))
(cl:defmethod filtercfg_min_x-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_x-val is deprecated.  Use radar_conti-msg:filtercfg_min_x instead.")
  (filtercfg_min_x m))

(cl:ensure-generic-function 'filtercfg_min_vyrightleft-val :lambda-list '(m))
(cl:defmethod filtercfg_min_vyrightleft-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_vyrightleft-val is deprecated.  Use radar_conti-msg:filtercfg_min_vyrightleft instead.")
  (filtercfg_min_vyrightleft m))

(cl:ensure-generic-function 'filtercfg_min_vxoncome-val :lambda-list '(m))
(cl:defmethod filtercfg_min_vxoncome-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_vxoncome-val is deprecated.  Use radar_conti-msg:filtercfg_min_vxoncome instead.")
  (filtercfg_min_vxoncome m))

(cl:ensure-generic-function 'filtercfg_min_vyleftright-val :lambda-list '(m))
(cl:defmethod filtercfg_min_vyleftright-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_vyleftright-val is deprecated.  Use radar_conti-msg:filtercfg_min_vyleftright instead.")
  (filtercfg_min_vyleftright m))

(cl:ensure-generic-function 'filtercfg_min_vxdepart-val :lambda-list '(m))
(cl:defmethod filtercfg_min_vxdepart-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_vxdepart-val is deprecated.  Use radar_conti-msg:filtercfg_min_vxdepart instead.")
  (filtercfg_min_vxdepart m))

(cl:ensure-generic-function 'filtercfg_min_object_class-val :lambda-list '(m))
(cl:defmethod filtercfg_min_object_class-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_min_object_class-val is deprecated.  Use radar_conti-msg:filtercfg_min_object_class instead.")
  (filtercfg_min_object_class m))

(cl:ensure-generic-function 'filtercfg_max_nofobj-val :lambda-list '(m))
(cl:defmethod filtercfg_max_nofobj-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_nofobj-val is deprecated.  Use radar_conti-msg:filtercfg_max_nofobj instead.")
  (filtercfg_max_nofobj m))

(cl:ensure-generic-function 'filtercfg_max_distance-val :lambda-list '(m))
(cl:defmethod filtercfg_max_distance-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_distance-val is deprecated.  Use radar_conti-msg:filtercfg_max_distance instead.")
  (filtercfg_max_distance m))

(cl:ensure-generic-function 'filtercfg_max_azimuth-val :lambda-list '(m))
(cl:defmethod filtercfg_max_azimuth-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_azimuth-val is deprecated.  Use radar_conti-msg:filtercfg_max_azimuth instead.")
  (filtercfg_max_azimuth m))

(cl:ensure-generic-function 'filtercfg_max_vreloncome-val :lambda-list '(m))
(cl:defmethod filtercfg_max_vreloncome-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_vreloncome-val is deprecated.  Use radar_conti-msg:filtercfg_max_vreloncome instead.")
  (filtercfg_max_vreloncome m))

(cl:ensure-generic-function 'filtercfg_max_vreldepart-val :lambda-list '(m))
(cl:defmethod filtercfg_max_vreldepart-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_vreldepart-val is deprecated.  Use radar_conti-msg:filtercfg_max_vreldepart instead.")
  (filtercfg_max_vreldepart m))

(cl:ensure-generic-function 'filtercfg_max_rcs-val :lambda-list '(m))
(cl:defmethod filtercfg_max_rcs-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_rcs-val is deprecated.  Use radar_conti-msg:filtercfg_max_rcs instead.")
  (filtercfg_max_rcs m))

(cl:ensure-generic-function 'filtercfg_max_lifetime-val :lambda-list '(m))
(cl:defmethod filtercfg_max_lifetime-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_lifetime-val is deprecated.  Use radar_conti-msg:filtercfg_max_lifetime instead.")
  (filtercfg_max_lifetime m))

(cl:ensure-generic-function 'filtercfg_max_size-val :lambda-list '(m))
(cl:defmethod filtercfg_max_size-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_size-val is deprecated.  Use radar_conti-msg:filtercfg_max_size instead.")
  (filtercfg_max_size m))

(cl:ensure-generic-function 'filtercfg_max_probexists-val :lambda-list '(m))
(cl:defmethod filtercfg_max_probexists-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_probexists-val is deprecated.  Use radar_conti-msg:filtercfg_max_probexists instead.")
  (filtercfg_max_probexists m))

(cl:ensure-generic-function 'filtercfg_max_y-val :lambda-list '(m))
(cl:defmethod filtercfg_max_y-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_y-val is deprecated.  Use radar_conti-msg:filtercfg_max_y instead.")
  (filtercfg_max_y m))

(cl:ensure-generic-function 'filtercfg_max_x-val :lambda-list '(m))
(cl:defmethod filtercfg_max_x-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_x-val is deprecated.  Use radar_conti-msg:filtercfg_max_x instead.")
  (filtercfg_max_x m))

(cl:ensure-generic-function 'filtercfg_max_vyrightleft-val :lambda-list '(m))
(cl:defmethod filtercfg_max_vyrightleft-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_vyrightleft-val is deprecated.  Use radar_conti-msg:filtercfg_max_vyrightleft instead.")
  (filtercfg_max_vyrightleft m))

(cl:ensure-generic-function 'filtercfg_max_vxoncome-val :lambda-list '(m))
(cl:defmethod filtercfg_max_vxoncome-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_vxoncome-val is deprecated.  Use radar_conti-msg:filtercfg_max_vxoncome instead.")
  (filtercfg_max_vxoncome m))

(cl:ensure-generic-function 'filtercfg_max_vyleftright-val :lambda-list '(m))
(cl:defmethod filtercfg_max_vyleftright-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_vyleftright-val is deprecated.  Use radar_conti-msg:filtercfg_max_vyleftright instead.")
  (filtercfg_max_vyleftright m))

(cl:ensure-generic-function 'filtercfg_max_vxdepart-val :lambda-list '(m))
(cl:defmethod filtercfg_max_vxdepart-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_vxdepart-val is deprecated.  Use radar_conti-msg:filtercfg_max_vxdepart instead.")
  (filtercfg_max_vxdepart m))

(cl:ensure-generic-function 'filtercfg_max_object_class-val :lambda-list '(m))
(cl:defmethod filtercfg_max_object_class-val ((m <FilterStateCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader radar_conti-msg:filtercfg_max_object_class-val is deprecated.  Use radar_conti-msg:filtercfg_max_object_class instead.")
  (filtercfg_max_object_class m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilterStateCfg>) ostream)
  "Serializes a message object of type '<FilterStateCfg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_valid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_active) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_index) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_type) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_nofobj) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_distance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_azimuth) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_vreloncome) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_vreldepart) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_rcs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_lifetime) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_size) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_probexists) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_vyrightleft) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_vxoncome) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_vyleftright) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_vxdepart) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_min_object_class) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_nofobj) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_distance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_azimuth) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_vreloncome) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_vreldepart) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_rcs) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_lifetime) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_size) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_probexists) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_vyrightleft) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_vxoncome) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_vyleftright) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_vxdepart) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtercfg_max_object_class) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilterStateCfg>) istream)
  "Deserializes a message object of type '<FilterStateCfg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_valid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_active) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_index) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_type) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_nofobj) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_distance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_azimuth) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_vreloncome) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_vreldepart) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_rcs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_lifetime) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_size) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_probexists) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_vyrightleft) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_vxoncome) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_vyleftright) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_vxdepart) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_min_object_class) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_nofobj) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_distance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_azimuth) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_vreloncome) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_vreldepart) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_rcs) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_lifetime) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_size) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_probexists) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_vyrightleft) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_vxoncome) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_vyleftright) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_vxdepart) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtercfg_max_object_class) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilterStateCfg>)))
  "Returns string type for a message object of type '<FilterStateCfg>"
  "radar_conti/FilterStateCfg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilterStateCfg)))
  "Returns string type for a message object of type 'FilterStateCfg"
  "radar_conti/FilterStateCfg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilterStateCfg>)))
  "Returns md5sum for a message object of type '<FilterStateCfg>"
  "f9f531568fe5dff4e54bf69af7e17849")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilterStateCfg)))
  "Returns md5sum for a message object of type 'FilterStateCfg"
  "f9f531568fe5dff4e54bf69af7e17849")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilterStateCfg>)))
  "Returns full string definition for message of type '<FilterStateCfg>"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/UInt8 filtercfg_valid~%std_msgs/UInt8 filtercfg_active~%std_msgs/UInt8 filtercfg_index~%std_msgs/UInt8 filtercfg_type~%std_msgs/UInt8 filtercfg_min_nofobj~%std_msgs/UInt8 filtercfg_min_distance~%std_msgs/UInt8 filtercfg_min_azimuth~%std_msgs/UInt8 filtercfg_min_vreloncome~%std_msgs/UInt8 filtercfg_min_vreldepart~%std_msgs/UInt8 filtercfg_min_rcs~%std_msgs/UInt8 filtercfg_min_lifetime~%std_msgs/UInt8 filtercfg_min_size~%std_msgs/UInt8 filtercfg_min_probexists~%std_msgs/UInt8 filtercfg_min_y~%std_msgs/UInt8 filtercfg_min_x~%std_msgs/UInt8 filtercfg_min_vyrightleft~%std_msgs/UInt8 filtercfg_min_vxoncome~%std_msgs/UInt8 filtercfg_min_vyleftright~%std_msgs/UInt8 filtercfg_min_vxdepart~%std_msgs/UInt8 filtercfg_min_object_class~%std_msgs/UInt8 filtercfg_max_nofobj~%std_msgs/UInt8 filtercfg_max_distance~%std_msgs/UInt8 filtercfg_max_azimuth~%std_msgs/UInt8 filtercfg_max_vreloncome~%std_msgs/UInt8 filtercfg_max_vreldepart~%std_msgs/UInt8 filtercfg_max_rcs~%std_msgs/UInt8 filtercfg_max_lifetime~%std_msgs/UInt8 filtercfg_max_size~%std_msgs/UInt8 filtercfg_max_probexists~%std_msgs/UInt8 filtercfg_max_y~%std_msgs/UInt8 filtercfg_max_x~%std_msgs/UInt8 filtercfg_max_vyrightleft~%std_msgs/UInt8 filtercfg_max_vxoncome~%std_msgs/UInt8 filtercfg_max_vyleftright~%std_msgs/UInt8 filtercfg_max_vxdepart~%std_msgs/UInt8 filtercfg_max_object_class~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilterStateCfg)))
  "Returns full string definition for message of type 'FilterStateCfg"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/UInt8 filtercfg_valid~%std_msgs/UInt8 filtercfg_active~%std_msgs/UInt8 filtercfg_index~%std_msgs/UInt8 filtercfg_type~%std_msgs/UInt8 filtercfg_min_nofobj~%std_msgs/UInt8 filtercfg_min_distance~%std_msgs/UInt8 filtercfg_min_azimuth~%std_msgs/UInt8 filtercfg_min_vreloncome~%std_msgs/UInt8 filtercfg_min_vreldepart~%std_msgs/UInt8 filtercfg_min_rcs~%std_msgs/UInt8 filtercfg_min_lifetime~%std_msgs/UInt8 filtercfg_min_size~%std_msgs/UInt8 filtercfg_min_probexists~%std_msgs/UInt8 filtercfg_min_y~%std_msgs/UInt8 filtercfg_min_x~%std_msgs/UInt8 filtercfg_min_vyrightleft~%std_msgs/UInt8 filtercfg_min_vxoncome~%std_msgs/UInt8 filtercfg_min_vyleftright~%std_msgs/UInt8 filtercfg_min_vxdepart~%std_msgs/UInt8 filtercfg_min_object_class~%std_msgs/UInt8 filtercfg_max_nofobj~%std_msgs/UInt8 filtercfg_max_distance~%std_msgs/UInt8 filtercfg_max_azimuth~%std_msgs/UInt8 filtercfg_max_vreloncome~%std_msgs/UInt8 filtercfg_max_vreldepart~%std_msgs/UInt8 filtercfg_max_rcs~%std_msgs/UInt8 filtercfg_max_lifetime~%std_msgs/UInt8 filtercfg_max_size~%std_msgs/UInt8 filtercfg_max_probexists~%std_msgs/UInt8 filtercfg_max_y~%std_msgs/UInt8 filtercfg_max_x~%std_msgs/UInt8 filtercfg_max_vyrightleft~%std_msgs/UInt8 filtercfg_max_vxoncome~%std_msgs/UInt8 filtercfg_max_vyleftright~%std_msgs/UInt8 filtercfg_max_vxdepart~%std_msgs/UInt8 filtercfg_max_object_class~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/UInt8~%uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilterStateCfg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_valid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_active))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_index))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_nofobj))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_distance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_azimuth))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_vreloncome))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_vreldepart))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_rcs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_lifetime))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_size))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_probexists))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_vyrightleft))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_vxoncome))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_vyleftright))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_vxdepart))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_min_object_class))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_nofobj))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_distance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_azimuth))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_vreloncome))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_vreldepart))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_rcs))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_lifetime))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_size))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_probexists))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_vyrightleft))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_vxoncome))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_vyleftright))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_vxdepart))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtercfg_max_object_class))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilterStateCfg>))
  "Converts a ROS message object to a list"
  (cl:list 'FilterStateCfg
    (cl:cons ':header (header msg))
    (cl:cons ':filtercfg_valid (filtercfg_valid msg))
    (cl:cons ':filtercfg_active (filtercfg_active msg))
    (cl:cons ':filtercfg_index (filtercfg_index msg))
    (cl:cons ':filtercfg_type (filtercfg_type msg))
    (cl:cons ':filtercfg_min_nofobj (filtercfg_min_nofobj msg))
    (cl:cons ':filtercfg_min_distance (filtercfg_min_distance msg))
    (cl:cons ':filtercfg_min_azimuth (filtercfg_min_azimuth msg))
    (cl:cons ':filtercfg_min_vreloncome (filtercfg_min_vreloncome msg))
    (cl:cons ':filtercfg_min_vreldepart (filtercfg_min_vreldepart msg))
    (cl:cons ':filtercfg_min_rcs (filtercfg_min_rcs msg))
    (cl:cons ':filtercfg_min_lifetime (filtercfg_min_lifetime msg))
    (cl:cons ':filtercfg_min_size (filtercfg_min_size msg))
    (cl:cons ':filtercfg_min_probexists (filtercfg_min_probexists msg))
    (cl:cons ':filtercfg_min_y (filtercfg_min_y msg))
    (cl:cons ':filtercfg_min_x (filtercfg_min_x msg))
    (cl:cons ':filtercfg_min_vyrightleft (filtercfg_min_vyrightleft msg))
    (cl:cons ':filtercfg_min_vxoncome (filtercfg_min_vxoncome msg))
    (cl:cons ':filtercfg_min_vyleftright (filtercfg_min_vyleftright msg))
    (cl:cons ':filtercfg_min_vxdepart (filtercfg_min_vxdepart msg))
    (cl:cons ':filtercfg_min_object_class (filtercfg_min_object_class msg))
    (cl:cons ':filtercfg_max_nofobj (filtercfg_max_nofobj msg))
    (cl:cons ':filtercfg_max_distance (filtercfg_max_distance msg))
    (cl:cons ':filtercfg_max_azimuth (filtercfg_max_azimuth msg))
    (cl:cons ':filtercfg_max_vreloncome (filtercfg_max_vreloncome msg))
    (cl:cons ':filtercfg_max_vreldepart (filtercfg_max_vreldepart msg))
    (cl:cons ':filtercfg_max_rcs (filtercfg_max_rcs msg))
    (cl:cons ':filtercfg_max_lifetime (filtercfg_max_lifetime msg))
    (cl:cons ':filtercfg_max_size (filtercfg_max_size msg))
    (cl:cons ':filtercfg_max_probexists (filtercfg_max_probexists msg))
    (cl:cons ':filtercfg_max_y (filtercfg_max_y msg))
    (cl:cons ':filtercfg_max_x (filtercfg_max_x msg))
    (cl:cons ':filtercfg_max_vyrightleft (filtercfg_max_vyrightleft msg))
    (cl:cons ':filtercfg_max_vxoncome (filtercfg_max_vxoncome msg))
    (cl:cons ':filtercfg_max_vyleftright (filtercfg_max_vyleftright msg))
    (cl:cons ':filtercfg_max_vxdepart (filtercfg_max_vxdepart msg))
    (cl:cons ':filtercfg_max_object_class (filtercfg_max_object_class msg))
))
