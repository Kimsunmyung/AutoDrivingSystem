; Auto-generated. Do not edit!


(cl:in-package BJ_msgs-msg)


;//! \htmlinclude gps_utm.msg.html

(cl:defclass <gps_utm> (roslisp-msg-protocol:ros-message)
  ((easting
    :reader easting
    :initarg :easting
    :type cl:float
    :initform 0.0)
   (northing
    :reader northing
    :initarg :northing
    :type cl:float
    :initform 0.0)
   (covariance
    :reader covariance
    :initarg :covariance
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass gps_utm (<gps_utm>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gps_utm>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gps_utm)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name BJ_msgs-msg:<gps_utm> is deprecated: use BJ_msgs-msg:gps_utm instead.")))

(cl:ensure-generic-function 'easting-val :lambda-list '(m))
(cl:defmethod easting-val ((m <gps_utm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BJ_msgs-msg:easting-val is deprecated.  Use BJ_msgs-msg:easting instead.")
  (easting m))

(cl:ensure-generic-function 'northing-val :lambda-list '(m))
(cl:defmethod northing-val ((m <gps_utm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BJ_msgs-msg:northing-val is deprecated.  Use BJ_msgs-msg:northing instead.")
  (northing m))

(cl:ensure-generic-function 'covariance-val :lambda-list '(m))
(cl:defmethod covariance-val ((m <gps_utm>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader BJ_msgs-msg:covariance-val is deprecated.  Use BJ_msgs-msg:covariance instead.")
  (covariance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gps_utm>) ostream)
  "Serializes a message object of type '<gps_utm>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'easting))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'northing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'covariance))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gps_utm>) istream)
  "Deserializes a message object of type '<gps_utm>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'easting) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'northing) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'covariance) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'covariance)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gps_utm>)))
  "Returns string type for a message object of type '<gps_utm>"
  "BJ_msgs/gps_utm")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gps_utm)))
  "Returns string type for a message object of type 'gps_utm"
  "BJ_msgs/gps_utm")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gps_utm>)))
  "Returns md5sum for a message object of type '<gps_utm>"
  "9cec6c34a96ba0d56b1ca9b5d5580d06")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gps_utm)))
  "Returns md5sum for a message object of type 'gps_utm"
  "9cec6c34a96ba0d56b1ca9b5d5580d06")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gps_utm>)))
  "Returns full string definition for message of type '<gps_utm>"
  (cl:format cl:nil "float64 easting~%float64 northing~%float64[3] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gps_utm)))
  "Returns full string definition for message of type 'gps_utm"
  (cl:format cl:nil "float64 easting~%float64 northing~%float64[3] covariance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gps_utm>))
  (cl:+ 0
     8
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'covariance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gps_utm>))
  "Converts a ROS message object to a list"
  (cl:list 'gps_utm
    (cl:cons ':easting (easting msg))
    (cl:cons ':northing (northing msg))
    (cl:cons ':covariance (covariance msg))
))
