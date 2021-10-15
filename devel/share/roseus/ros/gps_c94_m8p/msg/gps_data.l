;; Auto-generated. Do not edit!


(when (boundp 'gps_c94_m8p::gps_data)
  (if (not (find-package "GPS_C94_M8P"))
    (make-package "GPS_C94_M8P"))
  (shadow 'gps_data (find-package "GPS_C94_M8P")))
(unless (find-package "GPS_C94_M8P::GPS_DATA")
  (make-package "GPS_C94_M8P::GPS_DATA"))

(in-package "ROS")
;;//! \htmlinclude gps_data.msg.html


(defclass gps_c94_m8p::gps_data
  :super ros::object
  :slots (_getTime _fixedstate _latitude _longitude _altitude _utm_x _utm_y _heading_rad _heading_pi _heading_degrees _position_error ))

(defmethod gps_c94_m8p::gps_data
  (:init
   (&key
    ((:getTime __getTime) "")
    ((:fixedstate __fixedstate) 0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:utm_x __utm_x) 0.0)
    ((:utm_y __utm_y) 0.0)
    ((:heading_rad __heading_rad) 0.0)
    ((:heading_pi __heading_pi) 0.0)
    ((:heading_degrees __heading_degrees) 0.0)
    ((:position_error __position_error) 0.0)
    )
   (send-super :init)
   (setq _getTime (string __getTime))
   (setq _fixedstate (round __fixedstate))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _utm_x (float __utm_x))
   (setq _utm_y (float __utm_y))
   (setq _heading_rad (float __heading_rad))
   (setq _heading_pi (float __heading_pi))
   (setq _heading_degrees (float __heading_degrees))
   (setq _position_error (float __position_error))
   self)
  (:getTime
   (&optional __getTime)
   (if __getTime (setq _getTime __getTime)) _getTime)
  (:fixedstate
   (&optional __fixedstate)
   (if __fixedstate (setq _fixedstate __fixedstate)) _fixedstate)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:utm_x
   (&optional __utm_x)
   (if __utm_x (setq _utm_x __utm_x)) _utm_x)
  (:utm_y
   (&optional __utm_y)
   (if __utm_y (setq _utm_y __utm_y)) _utm_y)
  (:heading_rad
   (&optional __heading_rad)
   (if __heading_rad (setq _heading_rad __heading_rad)) _heading_rad)
  (:heading_pi
   (&optional __heading_pi)
   (if __heading_pi (setq _heading_pi __heading_pi)) _heading_pi)
  (:heading_degrees
   (&optional __heading_degrees)
   (if __heading_degrees (setq _heading_degrees __heading_degrees)) _heading_degrees)
  (:position_error
   (&optional __position_error)
   (if __position_error (setq _position_error __position_error)) _position_error)
  (:serialization-length
   ()
   (+
    ;; string _getTime
    4 (length _getTime)
    ;; int32 _fixedstate
    4
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _utm_x
    8
    ;; float64 _utm_y
    8
    ;; float64 _heading_rad
    8
    ;; float64 _heading_pi
    8
    ;; float64 _heading_degrees
    8
    ;; float64 _position_error
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _getTime
       (write-long (length _getTime) s) (princ _getTime s)
     ;; int32 _fixedstate
       (write-long _fixedstate s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _utm_x
       (sys::poke _utm_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _utm_y
       (sys::poke _utm_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_rad
       (sys::poke _heading_rad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_pi
       (sys::poke _heading_pi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_degrees
       (sys::poke _heading_degrees (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _position_error
       (sys::poke _position_error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _getTime
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _getTime (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _fixedstate
     (setq _fixedstate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _utm_x
     (setq _utm_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _utm_y
     (setq _utm_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_rad
     (setq _heading_rad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_pi
     (setq _heading_pi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_degrees
     (setq _heading_degrees (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _position_error
     (setq _position_error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gps_c94_m8p::gps_data :md5sum-) "0e79e5fcae5f58ad42f8ae61b301f630")
(setf (get gps_c94_m8p::gps_data :datatype-) "gps_c94_m8p/gps_data")
(setf (get gps_c94_m8p::gps_data :definition-)
      "string getTime

int32 fixedstate

float64 latitude
float64 longitude
float64 altitude

float64 utm_x
float64 utm_y

float64 heading_rad
float64 heading_pi
float64 heading_degrees

float64 position_error
")



(provide :gps_c94_m8p/gps_data "0e79e5fcae5f58ad42f8ae61b301f630")


