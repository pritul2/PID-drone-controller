;; Auto-generated. Do not edit!


(when (boundp 'brics_actuator::CartesianWrench)
  (if (not (find-package "BRICS_ACTUATOR"))
    (make-package "BRICS_ACTUATOR"))
  (shadow 'CartesianWrench (find-package "BRICS_ACTUATOR")))
(unless (find-package "BRICS_ACTUATOR::CARTESIANWRENCH")
  (make-package "BRICS_ACTUATOR::CARTESIANWRENCH"))

(in-package "ROS")
;;//! \htmlinclude CartesianWrench.msg.html


(defclass brics_actuator::CartesianWrench
  :super ros::object
  :slots (_timeStamp _poisonStamp _base_frame_uri _target_frame_uri _force _torque ))

(defmethod brics_actuator::CartesianWrench
  (:init
   (&key
    ((:timeStamp __timeStamp) (instance ros::time :init))
    ((:poisonStamp __poisonStamp) (instance brics_actuator::Poison :init))
    ((:base_frame_uri __base_frame_uri) "")
    ((:target_frame_uri __target_frame_uri) "")
    ((:force __force) (instance brics_actuator::CartesianVector :init))
    ((:torque __torque) (instance brics_actuator::CartesianVector :init))
    )
   (send-super :init)
   (setq _timeStamp __timeStamp)
   (setq _poisonStamp __poisonStamp)
   (setq _base_frame_uri (string __base_frame_uri))
   (setq _target_frame_uri (string __target_frame_uri))
   (setq _force __force)
   (setq _torque __torque)
   self)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:poisonStamp
   (&rest __poisonStamp)
   (if (keywordp (car __poisonStamp))
       (send* _poisonStamp __poisonStamp)
     (progn
       (if __poisonStamp (setq _poisonStamp (car __poisonStamp)))
       _poisonStamp)))
  (:base_frame_uri
   (&optional __base_frame_uri)
   (if __base_frame_uri (setq _base_frame_uri __base_frame_uri)) _base_frame_uri)
  (:target_frame_uri
   (&optional __target_frame_uri)
   (if __target_frame_uri (setq _target_frame_uri __target_frame_uri)) _target_frame_uri)
  (:force
   (&rest __force)
   (if (keywordp (car __force))
       (send* _force __force)
     (progn
       (if __force (setq _force (car __force)))
       _force)))
  (:torque
   (&rest __torque)
   (if (keywordp (car __torque))
       (send* _torque __torque)
     (progn
       (if __torque (setq _torque (car __torque)))
       _torque)))
  (:serialization-length
   ()
   (+
    ;; time _timeStamp
    8
    ;; brics_actuator/Poison _poisonStamp
    (send _poisonStamp :serialization-length)
    ;; string _base_frame_uri
    4 (length _base_frame_uri)
    ;; string _target_frame_uri
    4 (length _target_frame_uri)
    ;; brics_actuator/CartesianVector _force
    (send _force :serialization-length)
    ;; brics_actuator/CartesianVector _torque
    (send _torque :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _timeStamp
       (write-long (send _timeStamp :sec) s) (write-long (send _timeStamp :nsec) s)
     ;; brics_actuator/Poison _poisonStamp
       (send _poisonStamp :serialize s)
     ;; string _base_frame_uri
       (write-long (length _base_frame_uri) s) (princ _base_frame_uri s)
     ;; string _target_frame_uri
       (write-long (length _target_frame_uri) s) (princ _target_frame_uri s)
     ;; brics_actuator/CartesianVector _force
       (send _force :serialize s)
     ;; brics_actuator/CartesianVector _torque
       (send _torque :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _timeStamp
     (send _timeStamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timeStamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; brics_actuator/Poison _poisonStamp
     (send _poisonStamp :deserialize buf ptr-) (incf ptr- (send _poisonStamp :serialization-length))
   ;; string _base_frame_uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_frame_uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_frame_uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_frame_uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; brics_actuator/CartesianVector _force
     (send _force :deserialize buf ptr-) (incf ptr- (send _force :serialization-length))
   ;; brics_actuator/CartesianVector _torque
     (send _torque :deserialize buf ptr-) (incf ptr- (send _torque :serialization-length))
   ;;
   self)
  )

(setf (get brics_actuator::CartesianWrench :md5sum-) "9db8d24ea10e69de8feff86a9b0fa93d")
(setf (get brics_actuator::CartesianWrench :datatype-) "brics_actuator/CartesianWrench")
(setf (get brics_actuator::CartesianWrench :definition-)
      "time timeStamp
Poison poisonStamp
string base_frame_uri
string target_frame_uri
# need some more frames?	
CartesianVector force
CartesianVector torque	

================================================================================
MSG: brics_actuator/Poison
string originator 		# node id
string description 		# encoding still an issue
float32 qos			# reliability of the channel
				# 0..1 where 1 means healthy

================================================================================
MSG: brics_actuator/CartesianVector
string unit
float64 x
float64 y
float64 z

")



(provide :brics_actuator/CartesianWrench "9db8d24ea10e69de8feff86a9b0fa93d")


