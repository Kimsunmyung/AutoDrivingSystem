; Auto-generated. Do not edit!


(cl:in-package cardriver-msg)


;//! \htmlinclude control_tx.msg.html

(cl:defclass <control_tx> (roslisp-msg-protocol:ros-message)
  ((aimode
    :reader aimode
    :initarg :aimode
    :type cl:integer
    :initform 0)
   (drive_vector
    :reader drive_vector
    :initarg :drive_vector
    :type cl:integer
    :initform 0)
   (drive_throttle
    :reader drive_throttle
    :initarg :drive_throttle
    :type cl:integer
    :initform 0)
   (steer_degree
    :reader steer_degree
    :initarg :steer_degree
    :type cl:integer
    :initform 0)
   (steer_raw
    :reader steer_raw
    :initarg :steer_raw
    :type cl:integer
    :initform 0)
   (signal
    :reader signal
    :initarg :signal
    :type cl:integer
    :initform 0)
   (lamp
    :reader lamp
    :initarg :lamp
    :type cl:integer
    :initform 0)
   (horn
    :reader horn
    :initarg :horn
    :type cl:integer
    :initform 0)
   (embed_custom_a
    :reader embed_custom_a
    :initarg :embed_custom_a
    :type cl:integer
    :initform 0)
   (embed_custom_b
    :reader embed_custom_b
    :initarg :embed_custom_b
    :type cl:integer
    :initform 0))
)

(cl:defclass control_tx (<control_tx>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <control_tx>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'control_tx)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cardriver-msg:<control_tx> is deprecated: use cardriver-msg:control_tx instead.")))

(cl:ensure-generic-function 'aimode-val :lambda-list '(m))
(cl:defmethod aimode-val ((m <control_tx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:aimode-val is deprecated.  Use cardriver-msg:aimode instead.")
  (aimode m))

(cl:ensure-generic-function 'drive_vector-val :lambda-list '(m))
(cl:defmethod drive_vector-val ((m <control_tx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:drive_vector-val is deprecated.  Use cardriver-msg:drive_vector instead.")
  (drive_vector m))

(cl:ensure-generic-function 'drive_throttle-val :lambda-list '(m))
(cl:defmethod drive_throttle-val ((m <control_tx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:drive_throttle-val is deprecated.  Use cardriver-msg:drive_throttle instead.")
  (drive_throttle m))

(cl:ensure-generic-function 'steer_degree-val :lambda-list '(m))
(cl:defmethod steer_degree-val ((m <control_tx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:steer_degree-val is deprecated.  Use cardriver-msg:steer_degree instead.")
  (steer_degree m))

(cl:ensure-generic-function 'steer_raw-val :lambda-list '(m))
(cl:defmethod steer_raw-val ((m <control_tx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:steer_raw-val is deprecated.  Use cardriver-msg:steer_raw instead.")
  (steer_raw m))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <control_tx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:signal-val is deprecated.  Use cardriver-msg:signal instead.")
  (signal m))

(cl:ensure-generic-function 'lamp-val :lambda-list '(m))
(cl:defmethod lamp-val ((m <control_tx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:lamp-val is deprecated.  Use cardriver-msg:lamp instead.")
  (lamp m))

(cl:ensure-generic-function 'horn-val :lambda-list '(m))
(cl:defmethod horn-val ((m <control_tx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:horn-val is deprecated.  Use cardriver-msg:horn instead.")
  (horn m))

(cl:ensure-generic-function 'embed_custom_a-val :lambda-list '(m))
(cl:defmethod embed_custom_a-val ((m <control_tx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:embed_custom_a-val is deprecated.  Use cardriver-msg:embed_custom_a instead.")
  (embed_custom_a m))

(cl:ensure-generic-function 'embed_custom_b-val :lambda-list '(m))
(cl:defmethod embed_custom_b-val ((m <control_tx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:embed_custom_b-val is deprecated.  Use cardriver-msg:embed_custom_b instead.")
  (embed_custom_b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <control_tx>) ostream)
  "Serializes a message object of type '<control_tx>"
  (cl:let* ((signed (cl:slot-value msg 'aimode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'drive_vector)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'drive_throttle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'steer_degree)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'steer_raw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'signal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'lamp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'horn)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'embed_custom_a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'embed_custom_b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <control_tx>) istream)
  "Deserializes a message object of type '<control_tx>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'aimode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drive_vector) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drive_throttle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steer_degree) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steer_raw) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lamp) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'horn) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'embed_custom_a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'embed_custom_b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<control_tx>)))
  "Returns string type for a message object of type '<control_tx>"
  "cardriver/control_tx")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'control_tx)))
  "Returns string type for a message object of type 'control_tx"
  "cardriver/control_tx")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<control_tx>)))
  "Returns md5sum for a message object of type '<control_tx>"
  "7ba485599b2b943484c8d738d06c7fb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'control_tx)))
  "Returns md5sum for a message object of type 'control_tx"
  "7ba485599b2b943484c8d738d06c7fb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<control_tx>)))
  "Returns full string definition for message of type '<control_tx>"
  (cl:format cl:nil "int32 aimode~%int32 drive_vector~%int32 drive_throttle~%int32 steer_degree~%int32 steer_raw~%int32 signal~%int32 lamp~%int32 horn~%int32 embed_custom_a~%int32 embed_custom_b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'control_tx)))
  "Returns full string definition for message of type 'control_tx"
  (cl:format cl:nil "int32 aimode~%int32 drive_vector~%int32 drive_throttle~%int32 steer_degree~%int32 steer_raw~%int32 signal~%int32 lamp~%int32 horn~%int32 embed_custom_a~%int32 embed_custom_b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <control_tx>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <control_tx>))
  "Converts a ROS message object to a list"
  (cl:list 'control_tx
    (cl:cons ':aimode (aimode msg))
    (cl:cons ':drive_vector (drive_vector msg))
    (cl:cons ':drive_throttle (drive_throttle msg))
    (cl:cons ':steer_degree (steer_degree msg))
    (cl:cons ':steer_raw (steer_raw msg))
    (cl:cons ':signal (signal msg))
    (cl:cons ':lamp (lamp msg))
    (cl:cons ':horn (horn msg))
    (cl:cons ':embed_custom_a (embed_custom_a msg))
    (cl:cons ':embed_custom_b (embed_custom_b msg))
))
