;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::Imu)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'Imu (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::IMU")
  (make-package "MORAI_MSGS::IMU"))

(in-package "ROS")
;;//! \htmlinclude Imu.msg.html


(defclass morai_msgs::Imu
  :super ros::object
  :slots (_yaw _pitch _roll ))

(defmethod morai_msgs::Imu
  (:init
   (&key
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    )
   (send-super :init)
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   self)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:serialization-length
   ()
   (+
    ;; float64 _yaw
    8
    ;; float64 _pitch
    8
    ;; float64 _roll
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get morai_msgs::Imu :md5sum-) "b6483fb20acb1cba981c486a35a1bdbd")
(setf (get morai_msgs::Imu :datatype-) "morai_msgs/Imu")
(setf (get morai_msgs::Imu :definition-)
      "float64 yaw
float64 pitch
float64 roll

")



(provide :morai_msgs/Imu "b6483fb20acb1cba981c486a35a1bdbd")


