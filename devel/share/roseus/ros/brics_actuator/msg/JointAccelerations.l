;; Auto-generated. Do not edit!


(when (boundp 'brics_actuator::JointAccelerations)
  (if (not (find-package "BRICS_ACTUATOR"))
    (make-package "BRICS_ACTUATOR"))
  (shadow 'JointAccelerations (find-package "BRICS_ACTUATOR")))
(unless (find-package "BRICS_ACTUATOR::JOINTACCELERATIONS")
  (make-package "BRICS_ACTUATOR::JOINTACCELERATIONS"))

(in-package "ROS")
;;//! \htmlinclude JointAccelerations.msg.html


(defclass brics_actuator::JointAccelerations
  :super ros::object
  :slots (_poisonStamp _accelerations ))

(defmethod brics_actuator::JointAccelerations
  (:init
   (&key
    ((:poisonStamp __poisonStamp) (instance brics_actuator::Poison :init))
    ((:accelerations __accelerations) (let (r) (dotimes (i 0) (push (instance brics_actuator::JointValue :init) r)) r))
    )
   (send-super :init)
   (setq _poisonStamp __poisonStamp)
   (setq _accelerations __accelerations)
   self)
  (:poisonStamp
   (&rest __poisonStamp)
   (if (keywordp (car __poisonStamp))
       (send* _poisonStamp __poisonStamp)
     (progn
       (if __poisonStamp (setq _poisonStamp (car __poisonStamp)))
       _poisonStamp)))
  (:accelerations
   (&rest __accelerations)
   (if (keywordp (car __accelerations))
       (send* _accelerations __accelerations)
     (progn
       (if __accelerations (setq _accelerations (car __accelerations)))
       _accelerations)))
  (:serialization-length
   ()
   (+
    ;; brics_actuator/Poison _poisonStamp
    (send _poisonStamp :serialization-length)
    ;; brics_actuator/JointValue[] _accelerations
    (apply #'+ (send-all _accelerations :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; brics_actuator/Poison _poisonStamp
       (send _poisonStamp :serialize s)
     ;; brics_actuator/JointValue[] _accelerations
     (write-long (length _accelerations) s)
     (dolist (elem _accelerations)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; brics_actuator/Poison _poisonStamp
     (send _poisonStamp :deserialize buf ptr-) (incf ptr- (send _poisonStamp :serialization-length))
   ;; brics_actuator/JointValue[] _accelerations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _accelerations (let (r) (dotimes (i n) (push (instance brics_actuator::JointValue :init) r)) r))
     (dolist (elem- _accelerations)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get brics_actuator::JointAccelerations :md5sum-) "f904d45aa2c1d97ea9e99a3ba4e3610e")
(setf (get brics_actuator::JointAccelerations :datatype-) "brics_actuator/JointAccelerations")
(setf (get brics_actuator::JointAccelerations :definition-)
      "Poison poisonStamp
JointValue[] accelerations

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



(provide :brics_actuator/JointAccelerations "f904d45aa2c1d97ea9e99a3ba4e3610e")


