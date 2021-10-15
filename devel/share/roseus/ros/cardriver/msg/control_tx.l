;; Auto-generated. Do not edit!


(when (boundp 'cardriver::control_tx)
  (if (not (find-package "CARDRIVER"))
    (make-package "CARDRIVER"))
  (shadow 'control_tx (find-package "CARDRIVER")))
(unless (find-package "CARDRIVER::CONTROL_TX")
  (make-package "CARDRIVER::CONTROL_TX"))

(in-package "ROS")
;;//! \htmlinclude control_tx.msg.html


(defclass cardriver::control_tx
  :super ros::object
  :slots (_aimode _drive_vector _drive_throttle _steer_degree _steer_raw _signal _lamp _horn _embed_custom_a _embed_custom_b ))

(defmethod cardriver::control_tx
  (:init
   (&key
    ((:aimode __aimode) 0)
    ((:drive_vector __drive_vector) 0)
    ((:drive_throttle __drive_throttle) 0)
    ((:steer_degree __steer_degree) 0)
    ((:steer_raw __steer_raw) 0)
    ((:signal __signal) 0)
    ((:lamp __lamp) 0)
    ((:horn __horn) 0)
    ((:embed_custom_a __embed_custom_a) 0)
    ((:embed_custom_b __embed_custom_b) 0)
    )
   (send-super :init)
   (setq _aimode (round __aimode))
   (setq _drive_vector (round __drive_vector))
   (setq _drive_throttle (round __drive_throttle))
   (setq _steer_degree (round __steer_degree))
   (setq _steer_raw (round __steer_raw))
   (setq _signal (round __signal))
   (setq _lamp (round __lamp))
   (setq _horn (round __horn))
   (setq _embed_custom_a (round __embed_custom_a))
   (setq _embed_custom_b (round __embed_custom_b))
   self)
  (:aimode
   (&optional __aimode)
   (if __aimode (setq _aimode __aimode)) _aimode)
  (:drive_vector
   (&optional __drive_vector)
   (if __drive_vector (setq _drive_vector __drive_vector)) _drive_vector)
  (:drive_throttle
   (&optional __drive_throttle)
   (if __drive_throttle (setq _drive_throttle __drive_throttle)) _drive_throttle)
  (:steer_degree
   (&optional __steer_degree)
   (if __steer_degree (setq _steer_degree __steer_degree)) _steer_degree)
  (:steer_raw
   (&optional __steer_raw)
   (if __steer_raw (setq _steer_raw __steer_raw)) _steer_raw)
  (:signal
   (&optional __signal)
   (if __signal (setq _signal __signal)) _signal)
  (:lamp
   (&optional __lamp)
   (if __lamp (setq _lamp __lamp)) _lamp)
  (:horn
   (&optional __horn)
   (if __horn (setq _horn __horn)) _horn)
  (:embed_custom_a
   (&optional __embed_custom_a)
   (if __embed_custom_a (setq _embed_custom_a __embed_custom_a)) _embed_custom_a)
  (:embed_custom_b
   (&optional __embed_custom_b)
   (if __embed_custom_b (setq _embed_custom_b __embed_custom_b)) _embed_custom_b)
  (:serialization-length
   ()
   (+
    ;; int32 _aimode
    4
    ;; int32 _drive_vector
    4
    ;; int32 _drive_throttle
    4
    ;; int32 _steer_degree
    4
    ;; int32 _steer_raw
    4
    ;; int32 _signal
    4
    ;; int32 _lamp
    4
    ;; int32 _horn
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
     ;; int32 _aimode
       (write-long _aimode s)
     ;; int32 _drive_vector
       (write-long _drive_vector s)
     ;; int32 _drive_throttle
       (write-long _drive_throttle s)
     ;; int32 _steer_degree
       (write-long _steer_degree s)
     ;; int32 _steer_raw
       (write-long _steer_raw s)
     ;; int32 _signal
       (write-long _signal s)
     ;; int32 _lamp
       (write-long _lamp s)
     ;; int32 _horn
       (write-long _horn s)
     ;; int32 _embed_custom_a
       (write-long _embed_custom_a s)
     ;; int32 _embed_custom_b
       (write-long _embed_custom_b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _aimode
     (setq _aimode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _drive_vector
     (setq _drive_vector (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _drive_throttle
     (setq _drive_throttle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _steer_degree
     (setq _steer_degree (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _steer_raw
     (setq _steer_raw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _signal
     (setq _signal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _lamp
     (setq _lamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _horn
     (setq _horn (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _embed_custom_a
     (setq _embed_custom_a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _embed_custom_b
     (setq _embed_custom_b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cardriver::control_tx :md5sum-) "7ba485599b2b943484c8d738d06c7fb7")
(setf (get cardriver::control_tx :datatype-) "cardriver/control_tx")
(setf (get cardriver::control_tx :definition-)
      "int32 aimode
int32 drive_vector
int32 drive_throttle
int32 steer_degree
int32 steer_raw
int32 signal
int32 lamp
int32 horn
int32 embed_custom_a
int32 embed_custom_b
")



(provide :cardriver/control_tx "7ba485599b2b943484c8d738d06c7fb7")


