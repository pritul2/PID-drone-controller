;; Auto-generated. Do not edit!


(when (boundp 'pid_tune::PidTune)
  (if (not (find-package "PID_TUNE"))
    (make-package "PID_TUNE"))
  (shadow 'PidTune (find-package "PID_TUNE")))
(unless (find-package "PID_TUNE::PIDTUNE")
  (make-package "PID_TUNE::PIDTUNE"))

(in-package "ROS")
;;//! \htmlinclude PidTune.msg.html


(defclass pid_tune::PidTune
  :super ros::object
  :slots (_Kp _Kd _Ki _Kp_z ))

(defmethod pid_tune::PidTune
  (:init
   (&key
    ((:Kp __Kp) 0)
    ((:Kd __Kd) 0)
    ((:Ki __Ki) 0)
    ((:Kp_z __Kp_z) 0)
    )
   (send-super :init)
   (setq _Kp (round __Kp))
   (setq _Kd (round __Kd))
   (setq _Ki (round __Ki))
   (setq _Kp_z (round __Kp_z))
   self)
  (:Kp
   (&optional __Kp)
   (if __Kp (setq _Kp __Kp)) _Kp)
  (:Kd
   (&optional __Kd)
   (if __Kd (setq _Kd __Kd)) _Kd)
  (:Ki
   (&optional __Ki)
   (if __Ki (setq _Ki __Ki)) _Ki)
  (:Kp_z
   (&optional __Kp_z)
   (if __Kp_z (setq _Kp_z __Kp_z)) _Kp_z)
  (:serialization-length
   ()
   (+
    ;; int16 _Kp
    2
    ;; int16 _Kd
    2
    ;; int16 _Ki
    2
    ;; int16 _Kp_z
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _Kp
       (write-word _Kp s)
     ;; int16 _Kd
       (write-word _Kd s)
     ;; int16 _Ki
       (write-word _Ki s)
     ;; int16 _Kp_z
       (write-word _Kp_z s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _Kp
     (setq _Kp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Kd
     (setq _Kd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Ki
     (setq _Ki (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Kp_z
     (setq _Kp_z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get pid_tune::PidTune :md5sum-) "0c2da60e6140b798a4857caa11a7c01a")
(setf (get pid_tune::PidTune :datatype-) "pid_tune/PidTune")
(setf (get pid_tune::PidTune :definition-)
      "int16 Kp
int16 Kd
int16 Ki
int16 Kp_z

")



(provide :pid_tune/PidTune "0c2da60e6140b798a4857caa11a7c01a")


