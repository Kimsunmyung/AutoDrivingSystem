;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::gps_utm)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'gps_utm (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::GPS_UTM")
  (make-package "MORAI_MSGS::GPS_UTM"))

(in-package "ROS")
;;//! \htmlinclude gps_utm.msg.html


(defclass morai_msgs::gps_utm
  :super ros::object
  :slots (_easting _northing _covariance ))

(defmethod morai_msgs::gps_utm
  (:init
   (&key
    ((:easting __easting) 0.0)
    ((:northing __northing) 0.0)
    ((:covariance __covariance) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _easting (float __easting))
   (setq _northing (float __northing))
   (setq _covariance __covariance)
   self)
  (:easting
   (&optional __easting)
   (if __easting (setq _easting __easting)) _easting)
  (:northing
   (&optional __northing)
   (if __northing (setq _northing __northing)) _northing)
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; float64 _easting
    8
    ;; float64 _northing
    8
    ;; float64[3] _covariance
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _easting
       (sys::poke _easting (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _northing
       (sys::poke _northing (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[3] _covariance
     (dotimes (i 3)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _easting
     (setq _easting (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _northing
     (setq _northing (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[3] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get morai_msgs::gps_utm :md5sum-) "9cec6c34a96ba0d56b1ca9b5d5580d06")
(setf (get morai_msgs::gps_utm :datatype-) "morai_msgs/gps_utm")
(setf (get morai_msgs::gps_utm :definition-)
      "float64 easting
float64 northing
float64[3] covariance

")



(provide :morai_msgs/gps_utm "9cec6c34a96ba0d56b1ca9b5d5580d06")


