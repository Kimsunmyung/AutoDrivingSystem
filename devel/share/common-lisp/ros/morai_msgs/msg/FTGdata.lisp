; Auto-generated. Do not edit!


(cl:in-package morai_msgs-msg)


;//! \htmlinclude FTGdata.msg.html

(cl:defclass <FTGdata> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (do_ca
    :reader do_ca
    :initarg :do_ca
    :type cl:boolean
    :initform cl:nil)
   (ca_const_alpha
    :reader ca_const_alpha
    :initarg :ca_const_alpha
    :type cl:float
    :initform 0.0)
   (ca_const_beta
    :reader ca_const_beta
    :initarg :ca_const_beta
    :type cl:float
    :initform 0.0)
   (ca_distance
    :reader ca_distance
    :initarg :ca_distance
    :type cl:float
    :initform 0.0)
   (phi_gap
    :reader phi_gap
    :initarg :phi_gap
    :type cl:float
    :initform 0.0))
)

(cl:defclass FTGdata (<FTGdata>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FTGdata>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FTGdata)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name morai_msgs-msg:<FTGdata> is deprecated: use morai_msgs-msg:FTGdata instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FTGdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:header-val is deprecated.  Use morai_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'do_ca-val :lambda-list '(m))
(cl:defmethod do_ca-val ((m <FTGdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:do_ca-val is deprecated.  Use morai_msgs-msg:do_ca instead.")
  (do_ca m))

(cl:ensure-generic-function 'ca_const_alpha-val :lambda-list '(m))
(cl:defmethod ca_const_alpha-val ((m <FTGdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:ca_const_alpha-val is deprecated.  Use morai_msgs-msg:ca_const_alpha instead.")
  (ca_const_alpha m))

(cl:ensure-generic-function 'ca_const_beta-val :lambda-list '(m))
(cl:defmethod ca_const_beta-val ((m <FTGdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:ca_const_beta-val is deprecated.  Use morai_msgs-msg:ca_const_beta instead.")
  (ca_const_beta m))

(cl:ensure-generic-function 'ca_distance-val :lambda-list '(m))
(cl:defmethod ca_distance-val ((m <FTGdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:ca_distance-val is deprecated.  Use morai_msgs-msg:ca_distance instead.")
  (ca_distance m))

(cl:ensure-generic-function 'phi_gap-val :lambda-list '(m))
(cl:defmethod phi_gap-val ((m <FTGdata>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader morai_msgs-msg:phi_gap-val is deprecated.  Use morai_msgs-msg:phi_gap instead.")
  (phi_gap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FTGdata>) ostream)
  "Serializes a message object of type '<FTGdata>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'do_ca) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ca_const_alpha))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ca_const_beta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ca_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'phi_gap))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FTGdata>) istream)
  "Deserializes a message object of type '<FTGdata>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'do_ca) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ca_const_alpha) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ca_const_beta) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ca_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'phi_gap) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FTGdata>)))
  "Returns string type for a message object of type '<FTGdata>"
  "morai_msgs/FTGdata")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FTGdata)))
  "Returns string type for a message object of type 'FTGdata"
  "morai_msgs/FTGdata")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FTGdata>)))
  "Returns md5sum for a message object of type '<FTGdata>"
  "832e1533a2882488fefe13ba032e8348")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FTGdata)))
  "Returns md5sum for a message object of type 'FTGdata"
  "832e1533a2882488fefe13ba032e8348")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FTGdata>)))
  "Returns full string definition for message of type '<FTGdata>"
  (cl:format cl:nil "# frame and time stamp~%Header header~%~%# should we do collision avoidance~%bool do_ca~%~%float32 ca_const_alpha~%float32 ca_const_beta~%float32 ca_distance~%~%float32 phi_gap~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FTGdata)))
  "Returns full string definition for message of type 'FTGdata"
  (cl:format cl:nil "# frame and time stamp~%Header header~%~%# should we do collision avoidance~%bool do_ca~%~%float32 ca_const_alpha~%float32 ca_const_beta~%float32 ca_distance~%~%float32 phi_gap~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FTGdata>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FTGdata>))
  "Converts a ROS message object to a list"
  (cl:list 'FTGdata
    (cl:cons ':header (header msg))
    (cl:cons ':do_ca (do_ca msg))
    (cl:cons ':ca_const_alpha (ca_const_alpha msg))
    (cl:cons ':ca_const_beta (ca_const_beta msg))
    (cl:cons ':ca_distance (ca_distance msg))
    (cl:cons ':phi_gap (phi_gap msg))
))
