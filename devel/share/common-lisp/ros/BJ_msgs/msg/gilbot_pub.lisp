; Auto-generated. Do not edit!


(cl:in-package BJ_msgs-msg)


;//! \htmlinclude gilbot_pub.msg.html

(cl:defclass <gilbot_pub> (roslisp-msg-protocol:ros-message)
  ((steer
    :reader steer
    :initarg :steer
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass gilbot_pub (<gilbot_pub>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gilbot_pub>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gilbot_pub)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BJ_msgs-msg:<gilbot_pub> is deprecated: use BJ_msgs-msg:gilbot_pub instead.")))

(cl:ensure-generic-function 'steer-val :lambda-list '(m))
(cl:defmethod steer-val ((m <gilbot_pub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BJ_msgs-msg:steer-val is deprecated.  Use BJ_msgs-msg:steer instead.")
  (steer m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <gilbot_pub>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BJ_msgs-msg:velocity-val is deprecated.  Use BJ_msgs-msg:velocity instead.")
  (velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gilbot_pub>) ostream)
  "Serializes a message object of type '<gilbot_pub>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gilbot_pub>) istream)
  "Deserializes a message object of type '<gilbot_pub>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gilbot_pub>)))
  "Returns string type for a message object of type '<gilbot_pub>"
  "BJ_msgs/gilbot_pub")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gilbot_pub)))
  "Returns string type for a message object of type 'gilbot_pub"
  "BJ_msgs/gilbot_pub")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gilbot_pub>)))
  "Returns md5sum for a message object of type '<gilbot_pub>"
  "1858a7b645a20933b4c523a3bd53310d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gilbot_pub)))
  "Returns md5sum for a message object of type 'gilbot_pub"
  "1858a7b645a20933b4c523a3bd53310d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gilbot_pub>)))
  "Returns full string definition for message of type '<gilbot_pub>"
  (cl:format cl:nil "float64 steer~%float64 velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gilbot_pub)))
  "Returns full string definition for message of type 'gilbot_pub"
  (cl:format cl:nil "float64 steer~%float64 velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gilbot_pub>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gilbot_pub>))
  "Converts a ROS message object to a list"
  (cl:list 'gilbot_pub
    (cl:cons ':steer (steer msg))
    (cl:cons ':velocity (velocity msg))
))
