;; Auto-generated. Do not edit!


(when (boundp 'cardriver::control_rx)
  (if (not (find-package "CARDRIVER"))
    (make-package "CARDRIVER"))
  (shadow 'control_rx (find-package "CARDRIVER")))
(unless (find-package "CARDRIVER::CONTROL_RX")
  (make-package "CARDRIVER::CONTROL_RX"))

(in-package "ROS")
;;//! \htmlinclude control_rx.msg.html


(defclass cardriver::control_rx
  :super ros::object
  :slots (_car_connected _steer_degree _steer_raw _steer_limit_left _steer_limit_center _steer_limit_right _rotor_hall _rotor_hall_l _rotor_hall_r _voltage _current_charging _current_discharging _drv_temperature _car_vector _car_lamp _car_signal _car_solidbrk _embed_custom_a _embed_custom_b ))

(defmethod cardriver::control_rx
  (:init
   (&key
    ((:car_connected __car_connected) 0)
    ((:steer_degree __steer_degree) 0)
    ((:steer_raw __steer_raw) 0)
    ((:steer_limit_left __steer_limit_left) 0)
    ((:steer_limit_center __steer_limit_center) 0)
    ((:steer_limit_right __steer_limit_right) 0)
    ((:rotor_hall __rotor_hall) 0)
    ((:rotor_hall_l __rotor_hall_l) 0)
    ((:rotor_hall_r __rotor_hall_r) 0)
    ((:voltage __voltage) 0)
    ((:current_charging __current_charging) 0)
    ((:current_discharging __current_discharging) 0)
    ((:drv_temperature __drv_temperature) 0)
    ((:car_vector __car_vector) 0)
    ((:car_lamp __car_lamp) 0)
    ((:car_signal __car_signal) 0)
    ((:car_solidbrk __car_solidbrk) 0)
    ((:embed_custom_a __embed_custom_a) 0)
    ((:embed_custom_b __embed_custom_b) 0)
    )
   (send-super :init)
   (setq _car_connected (round __car_connected))
   (setq _steer_degree (round __steer_degree))
   (setq _steer_raw (round __steer_raw))
   (setq _steer_limit_left (round __steer_limit_left))
   (setq _steer_limit_center (round __steer_limit_center))
   (setq _steer_limit_right (round __steer_limit_right))
   (setq _rotor_hall (round __rotor_hall))
   (setq _rotor_hall_l (round __rotor_hall_l))
   (setq _rotor_hall_r (round __rotor_hall_r))
   (setq _voltage (round __voltage))
   (setq _current_charging (round __current_charging))
   (setq _current_discharging (round __current_discharging))
   (setq _drv_temperature (round __drv_temperature))
   (setq _car_vector (round __car_vector))
   (setq _car_lamp (round __car_lamp))
   (setq _car_signal (round __car_signal))
   (setq _car_solidbrk (round __car_solidbrk))
   (setq _embed_custom_a (round __embed_custom_a))
   (setq _embed_custom_b (round __embed_custom_b))
   self)
  (:car_connected
   (&optional __car_connected)
   (if __car_connected (setq _car_connected __car_connected)) _car_connected)
  (:steer_degree
   (&optional __steer_degree)
   (if __steer_degree (setq _steer_degree __steer_degree)) _steer_degree)
  (:steer_raw
   (&optional __steer_raw)
   (if __steer_raw (setq _steer_raw __steer_raw)) _steer_raw)
  (:steer_limit_left
   (&optional __steer_limit_left)
   (if __steer_limit_left (setq _steer_limit_left __steer_limit_left)) _steer_limit_left)
  (:steer_limit_center
   (&optional __steer_limit_center)
   (if __steer_limit_center (setq _steer_limit_center __steer_limit_center)) _steer_limit_center)
  (:steer_limit_right
   (&optional __steer_limit_right)
   (if __steer_limit_right (setq _steer_limit_right __steer_limit_right)) _steer_limit_right)
  (:rotor_hall
   (&optional __rotor_hall)
   (if __rotor_hall (setq _rotor_hall __rotor_hall)) _rotor_hall)
  (:rotor_hall_l
   (&optional __rotor_hall_l)
   (if __rotor_hall_l (setq _rotor_hall_l __rotor_hall_l)) _rotor_hall_l)
  (:rotor_hall_r
   (&optional __rotor_hall_r)
   (if __rotor_hall_r (setq _rotor_hall_r __rotor_hall_r)) _rotor_hall_r)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current_charging
   (&optional __current_charging)
   (if __current_charging (setq _current_charging __current_charging)) _current_charging)
  (:current_discharging
   (&optional __current_discharging)
   (if __current_discharging (setq _current_discharging __current_discharging)) _current_discharging)
  (:drv_temperature
   (&optional __drv_temperature)
   (if __drv_temperature (setq _drv_temperature __drv_temperature)) _drv_temperature)
  (:car_vector
   (&optional __car_vector)
   (if __car_vector (setq _car_vector __car_vector)) _car_vector)
  (:car_lamp
   (&optional __car_lamp)
   (if __car_lamp (setq _car_lamp __car_lamp)) _car_lamp)
  (:car_signal
   (&optional __car_signal)
   (if __car_signal (setq _car_signal __car_signal)) _car_signal)
  (:car_solidbrk
   (&optional __car_solidbrk)
   (if __car_solidbrk (setq _car_solidbrk __car_solidbrk)) _car_solidbrk)
  (:embed_custom_a
   (&optional __embed_custom_a)
   (if __embed_custom_a (setq _embed_custom_a __embed_custom_a)) _embed_custom_a)
  (:embed_custom_b
   (&optional __embed_custom_b)
   (if __embed_custom_b (setq _embed_custom_b __embed_custom_b)) _embed_custom_b)
  (:serialization-length
   ()
   (+
    ;; int32 _car_connected
    4
    ;; int32 _steer_degree
    4
    ;; int32 _steer_raw
    4
    ;; int32 _steer_limit_left
    4
    ;; int32 _steer_limit_center
    4
    ;; int32 _steer_limit_right
    4
    ;; int32 _rotor_hall
    4
    ;; int32 _rotor_hall_l
    4
    ;; int32 _rotor_hall_r
    4
    ;; int32 _voltage
    4
    ;; int32 _current_charging
    4
    ;; int32 _current_discharging
    4
    ;; int32 _drv_temperature
    4
    ;; int32 _car_vector
    4
    ;; int32 _car_lamp
    4
    ;; int32 _car_signal
    4
    ;; int32 _car_solidbrk
    4
    ;; int32 _embed_custom_a
    4
    ;; int32 _embed_custom_b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _car_connected
       (write-long _car_connected s)
     ;; int32 _steer_degree
       (write-long _steer_degree s)
     ;; int32 _steer_raw
       (write-long _steer_raw s)
     ;; int32 _steer_limit_left
       (write-long _steer_limit_left s)
     ;; int32 _steer_limit_center
       (write-long _steer_limit_center s)
     ;; int32 _steer_limit_right
       (write-long _steer_limit_right s)
     ;; int32 _rotor_hall
       (write-long _rotor_hall s)
     ;; int32 _rotor_hall_l
       (write-long _rotor_hall_l s)
     ;; int32 _rotor_hall_r
       (write-long _rotor_hall_r s)
     ;; int32 _voltage
       (write-long _voltage s)
     ;; int32 _current_charging
       (write-long _current_charging s)
     ;; int32 _current_discharging
       (write-long _current_discharging s)
     ;; int32 _drv_temperature
       (write-long _drv_temperature s)
     ;; int32 _car_vector
       (write-long _car_vector s)
     ;; int32 _car_lamp
       (write-long _car_lamp s)
     ;; int32 _car_signal
       (write-long _car_signal s)
     ;; int32 _car_solidbrk
       (write-long _car_solidbrk s)
     ;; int32 _embed_custom_a
       (write-long _embed_custom_a s)
     ;; int32 _embed_custom_b
       (write-long _embed_custom_b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _car_connected
     (setq _car_connected (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _steer_degree
     (setq _steer_degree (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _steer_raw
     (setq _steer_raw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _steer_limit_left
     (setq _steer_limit_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _steer_limit_center
     (setq _steer_limit_center (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _steer_limit_right
     (setq _steer_limit_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rotor_hall
     (setq _rotor_hall (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rotor_hall_l
     (setq _rotor_hall_l (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rotor_hall_r
     (setq _rotor_hall_r (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _voltage
     (setq _voltage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current_charging
     (setq _current_charging (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _current_discharging
     (setq _current_discharging (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _drv_temperature
     (setq _drv_temperature (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _car_vector
     (setq _car_vector (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _car_lamp
     (setq _car_lamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _car_signal
     (setq _car_signal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _car_solidbrk
     (setq _car_solidbrk (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _embed_custom_a
     (setq _embed_custom_a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _embed_custom_b
     (setq _embed_custom_b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cardriver::control_rx :md5sum-) "0da4322d997508756a375365d6879e43")
(setf (get cardriver::control_rx :datatype-) "cardriver/control_rx")
(setf (get cardriver::control_rx :definition-)
      "int32 car_connected
int32 steer_degree
int32 steer_raw
int32 steer_limit_left
int32 steer_limit_center
int32 steer_limit_right
int32 rotor_hall
int32 rotor_hall_l
int32 rotor_hall_r
int32 voltage
int32 current_charging
int32 current_discharging
int32 drv_temperature
int32 car_vector
int32 car_lamp
int32 car_signal
int32 car_solidbrk
int32 embed_custom_a
int32 embed_custom_b
")



(provide :cardriver/control_rx "0da4322d997508756a375365d6879e43")


