
(cl:in-package :asdf)

(defsystem "gps_imu_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Imu" :depends-on ("_package_Imu"))
    (:file "_package_Imu" :depends-on ("_package"))
    (:file "gps_utm" :depends-on ("_package_gps_utm"))
    (:file "_package_gps_utm" :depends-on ("_package"))
  ))