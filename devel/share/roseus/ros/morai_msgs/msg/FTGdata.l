;; Auto-generated. Do not edit!


(when (boundp 'morai_msgs::FTGdata)
  (if (not (find-package "MORAI_MSGS"))
    (make-package "MORAI_MSGS"))
  (shadow 'FTGdata (find-package "MORAI_MSGS")))
(unless (find-package "MORAI_MSGS::FTGDATA")
  (make-package "MORAI_MSGS::FTGDATA"))

(in-package "ROS")
;;//! \htmlinclude FTGdata.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass morai_msgs::FTGdata
  :super ros::object
  :slots (_header _do_ca _ca_const_alpha _ca_const_beta _ca_distance _phi_gap ))

(defmethod morai_msgs::FTGdata
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:do_ca __do_ca) nil)
    ((:ca_const_alpha __ca_const_alpha) 0.0)
    ((:ca_const_beta __ca_const_beta) 0.0)
    ((:ca_distance __ca_distance) 0.0)
    ((:phi_gap __phi_gap) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _do_ca __do_ca)
   (setq _ca_const_alpha (float __ca_const_alpha))
   (setq _ca_const_beta (float __ca_const_beta))
   (setq _ca_distance (float __ca_distance))
   (setq _phi_gap (float __phi_gap))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:do_ca
   (&optional __do_ca)
   (if __do_ca (setq _do_ca __do_ca)) _do_ca)
  (:ca_const_alpha
   (&optional __ca_const_alpha)
   (if __ca_const_alpha (setq _ca_const_alpha __ca_const_alpha)) _ca_const_alpha)
  (:ca_const_beta
   (&optional __ca_const_beta)
   (if __ca_const_beta (setq _ca_const_beta __ca_const_beta)) _ca_const_beta)
  (:ca_distance
   (&optional __ca_distance)
   (if __ca_distance (setq _ca_distance __ca_distance)) _ca_distance)
  (:phi_gap
   (&optional __phi_gap)
   (if __phi_gap (setq _phi_gap __phi_gap)) _phi_gap)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _do_ca
    1
    ;; float32 _ca_const_alpha
    4
    ;; float32 _ca_const_beta
    4
    ;; float32 _ca_distance
    4
    ;; float32 _phi_gap
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _do_ca
       (if _do_ca (write-byte -1 s) (write-byte 0 s))
     ;; float32 _ca_const_alpha
       (sys::poke _ca_const_alpha (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ca_const_beta
       (sys::poke _ca_const_beta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ca_distance
       (sys::poke _ca_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _phi_gap
       (sys::poke _phi_gap (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _do_ca
     (setq _do_ca (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _ca_const_alpha
     (setq _ca_const_alpha (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ca_const_beta
     (setq _ca_const_beta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ca_distance
     (setq _ca_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _phi_gap
     (setq _phi_gap (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get morai_msgs::FTGdata :md5sum-) "832e1533a2882488fefe13ba032e8348")
(setf (get morai_msgs::FTGdata :datatype-) "morai_msgs/FTGdata")
(setf (get morai_msgs::FTGdata :definition-)
      "# frame and time stamp
Header header

# should we do collision avoidance
bool do_ca

float32 ca_const_alpha
float32 ca_const_beta
float32 ca_distance

float32 phi_gap

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



(provide :morai_msgs/FTGdata "832e1533a2882488fefe13ba032e8348")


