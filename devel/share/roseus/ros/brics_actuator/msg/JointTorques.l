;; Auto-generated. Do not edit!


(when (boundp 'brics_actuator::JointTorques)
  (if (not (find-package "BRICS_ACTUATOR"))
    (make-package "BRICS_ACTUATOR"))
  (shadow 'JointTorques (find-package "BRICS_ACTUATOR")))
(unless (find-package "BRICS_ACTUATOR::JOINTTORQUES")
  (make-package "BRICS_ACTUATOR::JOINTTORQUES"))

(in-package "ROS")
;;//! \htmlinclude JointTorques.msg.html


(defclass brics_actuator::JointTorques
  :super ros::object
  :slots (_poisonStamp _torques ))

(defmethod brics_actuator::JointTorques
  (:init
   (&key
    ((:poisonStamp __poisonStamp) (instance brics_actuator::Poison :init))
    ((:torques __torques) (let (r) (dotimes (i 0) (push (instance brics_actuator::JointValue :init) r)) r))
    )
   (send-super :init)
   (setq _poisonStamp __poisonStamp)
   (setq _torques __torques)
   self)
  (:poisonStamp
   (&rest __poisonStamp)
   (if (keywordp (car __poisonStamp))
       (send* _poisonStamp __poisonStamp)
     (progn
       (if __poisonStamp (setq _poisonStamp (car __poisonStamp)))
       _poisonStamp)))
  (:torques
   (&rest __torques)
   (if (keywordp (car __torques))
       (send* _torques __torques)
     (progn
       (if __torques (setq _torques (car __torques)))
       _torques)))
  (:serialization-length
   ()
   (+
    ;; brics_actuator/Poison _poisonStamp
    (send _poisonStamp :serialization-length)
    ;; brics_actuator/JointValue[] _torques
    (apply #'+ (send-all _torques :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; brics_actuator/Poison _poisonStamp
       (send _poisonStamp :serialize s)
     ;; brics_actuator/JointValue[] _torques
     (write-long (length _torques) s)
     (dolist (elem _torques)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; brics_actuator/Poison _poisonStamp
     (send _poisonStamp :deserialize buf ptr-) (incf ptr- (send _poisonStamp :serialization-length))
   ;; brics_actuator/JointValue[] _torques
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _torques (let (r) (dotimes (i n) (push (instance brics_actuator::JointValue :init) r)) r))
     (dolist (elem- _torques)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get brics_actuator::JointTorques :md5sum-) "75ccec429fa95e6b178bb9f3d06583e1")
(setf (get brics_actuator::JointTorques :datatype-) "brics_actuator/JointTorques")
(setf (get brics_actuator::JointTorques :definition-)
      "Poison poisonStamp
JointValue[] torques

================================================================================
MSG: brics_actuator/Poison
string originator 		# node id
string description 		# encoding still an issue
float32 qos			# reliability of the channel
				# 0..1 where 1 means healthy

================================================================================
MSG: brics_actuator/JointValue
time timeStamp 		#time of the data 
string joint_uri
string unit 		#if empy expects si units, you can use boost::unit
float64 value

")



(provide :brics_actuator/JointTorques "75ccec429fa95e6b178bb9f3d06583e1")


