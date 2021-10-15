; Auto-generated. Do not edit!


(cl:in-package cardriver-msg)


;//! \htmlinclude control_rx.msg.html

(cl:defclass <control_rx> (roslisp-msg-protocol:ros-message)
  ((car_connected
    :reader car_connected
    :initarg :car_connected
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
   (steer_limit_left
    :reader steer_limit_left
    :initarg :steer_limit_left
    :type cl:integer
    :initform 0)
   (steer_limit_center
    :reader steer_limit_center
    :initarg :steer_limit_center
    :type cl:integer
    :initform 0)
   (steer_limit_right
    :reader steer_limit_right
    :initarg :steer_limit_right
    :type cl:integer
    :initform 0)
   (rotor_hall
    :reader rotor_hall
    :initarg :rotor_hall
    :type cl:integer
    :initform 0)
   (rotor_hall_l
    :reader rotor_hall_l
    :initarg :rotor_hall_l
    :type cl:integer
    :initform 0)
   (rotor_hall_r
    :reader rotor_hall_r
    :initarg :rotor_hall_r
    :type cl:integer
    :initform 0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:integer
    :initform 0)
   (current_charging
    :reader current_charging
    :initarg :current_charging
    :type cl:integer
    :initform 0)
   (current_discharging
    :reader current_discharging
    :initarg :current_discharging
    :type cl:integer
    :initform 0)
   (drv_temperature
    :reader drv_temperature
    :initarg :drv_temperature
    :type cl:integer
    :initform 0)
   (car_vector
    :reader car_vector
    :initarg :car_vector
    :type cl:integer
    :initform 0)
   (car_lamp
    :reader car_lamp
    :initarg :car_lamp
    :type cl:integer
    :initform 0)
   (car_signal
    :reader car_signal
    :initarg :car_signal
    :type cl:integer
    :initform 0)
   (car_solidbrk
    :reader car_solidbrk
    :initarg :car_solidbrk
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

(cl:defclass control_rx (<control_rx>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <control_rx>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'control_rx)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cardriver-msg:<control_rx> is deprecated: use cardriver-msg:control_rx instead.")))

(cl:ensure-generic-function 'car_connected-val :lambda-list '(m))
(cl:defmethod car_connected-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:car_connected-val is deprecated.  Use cardriver-msg:car_connected instead.")
  (car_connected m))

(cl:ensure-generic-function 'steer_degree-val :lambda-list '(m))
(cl:defmethod steer_degree-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:steer_degree-val is deprecated.  Use cardriver-msg:steer_degree instead.")
  (steer_degree m))

(cl:ensure-generic-function 'steer_raw-val :lambda-list '(m))
(cl:defmethod steer_raw-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:steer_raw-val is deprecated.  Use cardriver-msg:steer_raw instead.")
  (steer_raw m))

(cl:ensure-generic-function 'steer_limit_left-val :lambda-list '(m))
(cl:defmethod steer_limit_left-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:steer_limit_left-val is deprecated.  Use cardriver-msg:steer_limit_left instead.")
  (steer_limit_left m))

(cl:ensure-generic-function 'steer_limit_center-val :lambda-list '(m))
(cl:defmethod steer_limit_center-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:steer_limit_center-val is deprecated.  Use cardriver-msg:steer_limit_center instead.")
  (steer_limit_center m))

(cl:ensure-generic-function 'steer_limit_right-val :lambda-list '(m))
(cl:defmethod steer_limit_right-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:steer_limit_right-val is deprecated.  Use cardriver-msg:steer_limit_right instead.")
  (steer_limit_right m))

(cl:ensure-generic-function 'rotor_hall-val :lambda-list '(m))
(cl:defmethod rotor_hall-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:rotor_hall-val is deprecated.  Use cardriver-msg:rotor_hall instead.")
  (rotor_hall m))

(cl:ensure-generic-function 'rotor_hall_l-val :lambda-list '(m))
(cl:defmethod rotor_hall_l-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:rotor_hall_l-val is deprecated.  Use cardriver-msg:rotor_hall_l instead.")
  (rotor_hall_l m))

(cl:ensure-generic-function 'rotor_hall_r-val :lambda-list '(m))
(cl:defmethod rotor_hall_r-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:rotor_hall_r-val is deprecated.  Use cardriver-msg:rotor_hall_r instead.")
  (rotor_hall_r m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:voltage-val is deprecated.  Use cardriver-msg:voltage instead.")
  (voltage m))

(cl:ensure-generic-function 'current_charging-val :lambda-list '(m))
(cl:defmethod current_charging-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:current_charging-val is deprecated.  Use cardriver-msg:current_charging instead.")
  (current_charging m))

(cl:ensure-generic-function 'current_discharging-val :lambda-list '(m))
(cl:defmethod current_discharging-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:current_discharging-val is deprecated.  Use cardriver-msg:current_discharging instead.")
  (current_discharging m))

(cl:ensure-generic-function 'drv_temperature-val :lambda-list '(m))
(cl:defmethod drv_temperature-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:drv_temperature-val is deprecated.  Use cardriver-msg:drv_temperature instead.")
  (drv_temperature m))

(cl:ensure-generic-function 'car_vector-val :lambda-list '(m))
(cl:defmethod car_vector-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:car_vector-val is deprecated.  Use cardriver-msg:car_vector instead.")
  (car_vector m))

(cl:ensure-generic-function 'car_lamp-val :lambda-list '(m))
(cl:defmethod car_lamp-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:car_lamp-val is deprecated.  Use cardriver-msg:car_lamp instead.")
  (car_lamp m))

(cl:ensure-generic-function 'car_signal-val :lambda-list '(m))
(cl:defmethod car_signal-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:car_signal-val is deprecated.  Use cardriver-msg:car_signal instead.")
  (car_signal m))

(cl:ensure-generic-function 'car_solidbrk-val :lambda-list '(m))
(cl:defmethod car_solidbrk-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:car_solidbrk-val is deprecated.  Use cardriver-msg:car_solidbrk instead.")
  (car_solidbrk m))

(cl:ensure-generic-function 'embed_custom_a-val :lambda-list '(m))
(cl:defmethod embed_custom_a-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:embed_custom_a-val is deprecated.  Use cardriver-msg:embed_custom_a instead.")
  (embed_custom_a m))

(cl:ensure-generic-function 'embed_custom_b-val :lambda-list '(m))
(cl:defmethod embed_custom_b-val ((m <control_rx>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cardriver-msg:embed_custom_b-val is deprecated.  Use cardriver-msg:embed_custom_b instead.")
  (embed_custom_b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <control_rx>) ostream)
  "Serializes a message object of type '<control_rx>"
  (cl:let* ((signed (cl:slot-value msg 'car_connected)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let* ((signed (cl:slot-value msg 'steer_limit_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'steer_limit_center)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'steer_limit_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rotor_hall)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rotor_hall_l)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rotor_hall_r)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'voltage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current_charging)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'current_discharging)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'drv_temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'car_vector)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'car_lamp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'car_signal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'car_solidbrk)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <control_rx>) istream)
  "Deserializes a message object of type '<control_rx>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_connected) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
      (cl:setf (cl:slot-value msg 'steer_limit_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steer_limit_center) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'steer_limit_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rotor_hall) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rotor_hall_l) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rotor_hall_r) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'voltage) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_charging) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'current_discharging) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'drv_temperature) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_vector) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_lamp) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_signal) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'car_solidbrk) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<control_rx>)))
  "Returns string type for a message object of type '<control_rx>"
  "cardriver/control_rx")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'control_rx)))
  "Returns string type for a message object of type 'control_rx"
  "cardriver/control_rx")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<control_rx>)))
  "Returns md5sum for a message object of type '<control_rx>"
  "0da4322d997508756a375365d6879e43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'control_rx)))
  "Returns md5sum for a message object of type 'control_rx"
  "0da4322d997508756a375365d6879e43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<control_rx>)))
  "Returns full string definition for message of type '<control_rx>"
  (cl:format cl:nil "int32 car_connected~%int32 steer_degree~%int32 steer_raw~%int32 steer_limit_left~%int32 steer_limit_center~%int32 steer_limit_right~%int32 rotor_hall~%int32 rotor_hall_l~%int32 rotor_hall_r~%int32 voltage~%int32 current_charging~%int32 current_discharging~%int32 drv_temperature~%int32 car_vector~%int32 car_lamp~%int32 car_signal~%int32 car_solidbrk~%int32 embed_custom_a~%int32 embed_custom_b~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'control_rx)))
  "Returns full string definition for message of type 'control_rx"
  (cl:format cl:nil "int32 car_connected~%int32 steer_degree~%int32 steer_raw~%int32 steer_limit_left~%int32 steer_limit_center~%int32 steer_limit_right~%int32 rotor_hall~%int32 rotor_hall_l~%int32 rotor_hall_r~%int32 voltage~%int32 current_charging~%int32 current_discharging~%int32 drv_temperature~%int32 car_vector~%int32 car_lamp~%int32 car_signal~%int32 car_solidbrk~%int32 embed_custom_a~%int32 embed_custom_b~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <control_rx>))
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
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <control_rx>))
  "Converts a ROS message object to a list"
  (cl:list 'control_rx
    (cl:cons ':car_connected (car_connected msg))
    (cl:cons ':steer_degree (steer_degree msg))
    (cl:cons ':steer_raw (steer_raw msg))
    (cl:cons ':steer_limit_left (steer_limit_left msg))
    (cl:cons ':steer_limit_center (steer_limit_center msg))
    (cl:cons ':steer_limit_right (steer_limit_right msg))
    (cl:cons ':rotor_hall (rotor_hall msg))
    (cl:cons ':rotor_hall_l (rotor_hall_l msg))
    (cl:cons ':rotor_hall_r (rotor_hall_r msg))
    (cl:cons ':voltage (voltage msg))
    (cl:cons ':current_charging (current_charging msg))
    (cl:cons ':current_discharging (current_discharging msg))
    (cl:cons ':drv_temperature (drv_temperature msg))
    (cl:cons ':car_vector (car_vector msg))
    (cl:cons ':car_lamp (car_lamp msg))
    (cl:cons ':car_signal (car_signal msg))
    (cl:cons ':car_solidbrk (car_solidbrk msg))
    (cl:cons ':embed_custom_a (embed_custom_a msg))
    (cl:cons ':embed_custom_b (embed_custom_b msg))
))
