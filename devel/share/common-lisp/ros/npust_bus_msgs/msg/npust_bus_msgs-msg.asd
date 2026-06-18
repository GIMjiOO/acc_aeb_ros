
(cl:in-package :asdf)

(defsystem "npust_bus_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LanePolynomial" :depends-on ("_package_LanePolynomial"))
    (:file "_package_LanePolynomial" :depends-on ("_package"))
    (:file "TrackedObject" :depends-on ("_package_TrackedObject"))
    (:file "_package_TrackedObject" :depends-on ("_package"))
    (:file "TrackedObjectArray" :depends-on ("_package_TrackedObjectArray"))
    (:file "_package_TrackedObjectArray" :depends-on ("_package"))
  ))