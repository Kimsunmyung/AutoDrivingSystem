;; Auto-generated. Do not edit!


(when (boundp 'BJ_msgs::gilbot_pub)
  (if (not (find-package "BJ_MSGS"))
    (make-package "BJ_MSGS"))
  (shadow 'gilbot_pub (find-package "BJ_MSGS")))
(unless (find-package "BJ_MSGS::GILBOT_PUB")
  (make-package "BJ_MSGS::GILBOT_PUB"))

(in-package "ROS")
;;//! \htmlinclude gilbot_pub.msg.html


(defclass BJ_msgs::gilbot_pub
  :super ros::object
  :slots (_steer _velocity ))

(defmethod BJ_msgs::gilbot_pub
  (:init
   (&key
    ((:steer __steer) 0.0)
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _steer (float __steer))
   (setq _velocity (float __velocity))
   self)
  (:steer
   (&optional __steer)
   (if __steer (setq _steer __steer)) _steer)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; float64 _steer
    8
    ;; float64 _velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _steer
       (sys::poke _steer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _steer
     (setq _steer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get BJ_msgs::gilbot_pub :md5sum-) "1858a7b645a20933b4c523a3bd53310d")
(setf (get BJ_msgs::gilbot_pub :datatype-) "BJ_msgs/gilbot_pub")
(setf (get BJ_msgs::gilbot_pub :definition-)
      "float64 steer
float64 velocity

")



(provide :BJ_msgs/gilbot_pub "1858a7b645a20933b4c523a3bd53310d")


