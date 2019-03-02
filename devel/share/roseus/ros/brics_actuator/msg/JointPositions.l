;; Auto-generated. Do not edit!


(when (boundp 'brics_actuator::JointPositions)
  (if (not (find-package "BRICS_ACTUATOR"))
    (make-package "BRICS_ACTUATOR"))
  (shadow 'JointPositions (find-package "BRICS_ACTUATOR")))
(unless (find-package "BRICS_ACTUATOR::JOINTPOSITIONS")
  (make-package "BRICS_ACTUATOR::JOINTPOSITIONS"))

(in-package "ROS")
;;//! \htmlinclude JointPositions.msg.html


(defclass brics_actuator::JointPositions
  :super ros::object
  :slots (_poisonStamp _positions ))

(defmethod brics_actuator::JointPositions
  (:init
   (&key
    ((:poisonStamp __poisonStamp) (instance brics_actuator::Poison :init))
    ((:positions __positions) (let (r) (dotimes (i 0) (push (instance brics_actuator::JointValue :init) r)) r))
    )
   (send-super :init)
   (setq _poisonStamp __poisonStamp)
   (setq _positions __positions)
   self)
  (:poisonStamp
   (&rest __poisonStamp)
   (if (keywordp (car __poisonStamp))
       (send* _poisonStamp __poisonStamp)
     (progn
       (if __poisonStamp (setq _poisonStamp (car __poisonStamp)))
       _poisonStamp)))
  (:positions
   (&rest __positions)
   (if (keywordp (car __positions))
       (send* _positions __positions)
     (progn
       (if __positions (setq _positions (car __positions)))
       _positions)))
  (:serialization-length
   ()
   (+
    ;; brics_actuator/Poison _poisonStamp
    (send _poisonStamp :serialization-length)
    ;; brics_actuator/JointValue[] _positions
    (apply #'+ (send-all _positions :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; brics_actuator/Poison _poisonStamp
       (send _poisonStamp :serialize s)
     ;; brics_actuator/JointValue[] _positions
     (write-long (length _positions) s)
     (dolist (elem _positions)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; brics_actuator/Poison _poisonStamp
     (send _poisonStamp :deserialize buf ptr-) (incf ptr- (send _poisonStamp :serialization-length))
   ;; brics_actuator/JointValue[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (let (r) (dotimes (i n) (push (instance brics_actuator::JointValue :init) r)) r))
     (dolist (elem- _positions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get brics_actuator::JointPositions :md5sum-) "2b7638f5c85f5257bef140a00cd0eec3")
(setf (get brics_actuator::JointPositions :datatype-) "brics_actuator/JointPositions")
(setf (get brics_actuator::JointPositions :definition-)
      "Poison poisonStamp
JointValue[] positions

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



(provide :brics_actuator/JointPositions "2b7638f5c85f5257bef140a00cd0eec3")


