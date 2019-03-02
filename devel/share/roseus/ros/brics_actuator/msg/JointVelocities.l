;; Auto-generated. Do not edit!


(when (boundp 'brics_actuator::JointVelocities)
  (if (not (find-package "BRICS_ACTUATOR"))
    (make-package "BRICS_ACTUATOR"))
  (shadow 'JointVelocities (find-package "BRICS_ACTUATOR")))
(unless (find-package "BRICS_ACTUATOR::JOINTVELOCITIES")
  (make-package "BRICS_ACTUATOR::JOINTVELOCITIES"))

(in-package "ROS")
;;//! \htmlinclude JointVelocities.msg.html


(defclass brics_actuator::JointVelocities
  :super ros::object
  :slots (_poisonStamp _velocities ))

(defmethod brics_actuator::JointVelocities
  (:init
   (&key
    ((:poisonStamp __poisonStamp) (instance brics_actuator::Poison :init))
    ((:velocities __velocities) (let (r) (dotimes (i 0) (push (instance brics_actuator::JointValue :init) r)) r))
    )
   (send-super :init)
   (setq _poisonStamp __poisonStamp)
   (setq _velocities __velocities)
   self)
  (:poisonStamp
   (&rest __poisonStamp)
   (if (keywordp (car __poisonStamp))
       (send* _poisonStamp __poisonStamp)
     (progn
       (if __poisonStamp (setq _poisonStamp (car __poisonStamp)))
       _poisonStamp)))
  (:velocities
   (&rest __velocities)
   (if (keywordp (car __velocities))
       (send* _velocities __velocities)
     (progn
       (if __velocities (setq _velocities (car __velocities)))
       _velocities)))
  (:serialization-length
   ()
   (+
    ;; brics_actuator/Poison _poisonStamp
    (send _poisonStamp :serialization-length)
    ;; brics_actuator/JointValue[] _velocities
    (apply #'+ (send-all _velocities :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; brics_actuator/Poison _poisonStamp
       (send _poisonStamp :serialize s)
     ;; brics_actuator/JointValue[] _velocities
     (write-long (length _velocities) s)
     (dolist (elem _velocities)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; brics_actuator/Poison _poisonStamp
     (send _poisonStamp :deserialize buf ptr-) (incf ptr- (send _poisonStamp :serialization-length))
   ;; brics_actuator/JointValue[] _velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocities (let (r) (dotimes (i n) (push (instance brics_actuator::JointValue :init) r)) r))
     (dolist (elem- _velocities)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get brics_actuator::JointVelocities :md5sum-) "9786afc900be50b3ba4113fcb65c9363")
(setf (get brics_actuator::JointVelocities :datatype-) "brics_actuator/JointVelocities")
(setf (get brics_actuator::JointVelocities :definition-)
      "Poison poisonStamp
JointValue[] velocities

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



(provide :brics_actuator/JointVelocities "9786afc900be50b3ba4113fcb65c9363")


