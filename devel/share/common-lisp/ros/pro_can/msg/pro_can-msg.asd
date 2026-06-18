
(cl:in-package :asdf)

(defsystem "pro_can-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "VCU" :depends-on ("_package_VCU"))
    (:file "_package_VCU" :depends-on ("_package"))
    (:file "control_data" :depends-on ("_package_control_data"))
    (:file "_package_control_data" :depends-on ("_package"))
  ))