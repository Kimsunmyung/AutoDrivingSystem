
(cl:in-package :asdf)

(defsystem "cardriver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "control_rx" :depends-on ("_package_control_rx"))
    (:file "_package_control_rx" :depends-on ("_package"))
    (:file "control_tx" :depends-on ("_package_control_tx"))
    (:file "_package_control_tx" :depends-on ("_package"))
  ))