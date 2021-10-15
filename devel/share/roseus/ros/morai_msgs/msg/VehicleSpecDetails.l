;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::VehicleSpecDetails)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'VehicleSpecDetails (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::VEHICLESPECDETAILS")
  (make-package "MORAI_MSGS::VEHICLESPECDETAILS"))

(in-package "ROS")
;;//! \htmlinclude VehicleSpecDetails.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::VehicleSpecDetails
  :super ros::object
  :slots (_header _specs ))

(defmethod morai_msgs::VehicleSpecDetails
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:specs __specs) (let (r) (dotimes (i 0) (push (instance morai_msgs::VehicleSpecDetail :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _specs __specs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:specs
   (&rest __specs)
   (if (keywordp (car __specs))
       (send* _specs __specs)
     (progn
       (if __specs (setq _specs (car __specs)))
       _specs)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; morai_msgs/VehicleSpecDetail[] _specs
    (apply #'+ (send-all _specs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; morai_msgs/VehicleSpecDetail[] _specs
     (write-long (length _specs) s)
     (dolist (elem _specs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; morai_msgs/VehicleSpecDetail[] _specs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _specs (let (r) (dotimes (i n) (push (instance morai_msgs::VehicleSpecDetail :init) r)) r))
     (dolist (elem- _specs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get morai_msgs::VehicleSpecDetails :md5sum-) "c8a38f8f7239dedd3095eb3a43a095b9")
(setf (get morai_msgs::VehicleSpecDetails :datatype-) "morai_msgs/VehicleSpecDetails")
(setf (get morai_msgs::VehicleSpecDetails :definition-)
      "# frame and time stamp
Header header

# vehicle spec list
VehicleSpecDetail[] specs
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

================================================================================
MSG: morai_msgs/VehicleSpecDetail
# frame and time stamp
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
")



(provide :morai_msgs/VehicleSpecDetails "c8a38f8f7239dedd3095eb3a43a095b9")


