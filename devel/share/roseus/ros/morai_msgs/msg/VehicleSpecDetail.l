;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::VehicleSpecDetail)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'VehicleSpecDetail (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::VEHICLESPECDETAIL")
  (make-package "MORAI_MSGS::VEHICLESPECDETAIL"))

(in-package "ROS")
;;//! \htmlinclude VehicleSpecDetail.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::VehicleSpecDetail
  :super ros::object
  :slots (_header _vehicle_name _length _width _height _wheelbase _front_overhang _rear_overhang ))

(defmethod morai_msgs::VehicleSpecDetail
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicle_name __vehicle_name) "")
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:wheelbase __wheelbase) 0.0)
    ((:front_overhang __front_overhang) 0.0)
    ((:rear_overhang __rear_overhang) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicle_name (string __vehicle_name))
   (setq _length (float __length))
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _wheelbase (float __wheelbase))
   (setq _front_overhang (float __front_overhang))
   (setq _rear_overhang (float __rear_overhang))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehicle_name
   (&optional __vehicle_name)
   (if __vehicle_name (setq _vehicle_name __vehicle_name)) _vehicle_name)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:wheelbase
   (&optional __wheelbase)
   (if __wheelbase (setq _wheelbase __wheelbase)) _wheelbase)
  (:front_overhang
   (&optional __front_overhang)
   (if __front_overhang (setq _front_overhang __front_overhang)) _front_overhang)
  (:rear_overhang
   (&optional __rear_overhang)
   (if __rear_overhang (setq _rear_overhang __rear_overhang)) _rear_overhang)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _vehicle_name
    4 (length _vehicle_name)
    ;; float32 _length
    4
    ;; float32 _width
    4
    ;; float32 _height
    4
    ;; float32 _wheelbase
    4
    ;; float32 _front_overhang
    4
    ;; float32 _rear_overhang
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _vehicle_name
       (write-long (length _vehicle_name) s) (princ _vehicle_name s)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheelbase
       (sys::poke _wheelbase (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _front_overhang
       (sys::poke _front_overhang (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rear_overhang
       (sys::poke _rear_overhang (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _vehicle_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _vehicle_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheelbase
     (setq _wheelbase (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _front_overhang
     (setq _front_overhang (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rear_overhang
     (setq _rear_overhang (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::VehicleSpecDetail :md5sum-) "c068a372b804d7e798ef8a7c1b0cd3e3")
(setf (get morai_msgs::VehicleSpecDetail :datatype-) "morai_msgs/VehicleSpecDetail")
(setf (get morai_msgs::VehicleSpecDetail :definition-)
      "# frame and time stamp
Header header

# vehicle name
string vehicle_name

# vehicle spec
float32 length
float32 width
float32 height

float32 wheelbase
float32 front_overhang
float32 rear_overhang
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

")



(provide :morai_msgs/VehicleSpecDetail "c068a372b804d7e798ef8a7c1b0cd3e3")


