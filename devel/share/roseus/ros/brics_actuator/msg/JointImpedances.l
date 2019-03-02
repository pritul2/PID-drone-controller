;; Auto-generated. Do not edit!


(when (boundp 'brics_actuator::JointImpedances)
  (if (not (find-package "BRICS_ACTUATOR"))
    (make-package "BRICS_ACTUATOR"))
  (shadow 'JointImpedances (find-package "BRICS_ACTUATOR")))
(unless (find-package "BRICS_ACTUATOR::JOINTIMPEDANCES")
  (make-package "BRICS_ACTUATOR::JOINTIMPEDANCES"))

(in-package "ROS")
;;//! \htmlinclude JointImpedances.msg.html


(defclass brics_actuator::JointImpedances
  :super ros::object
  :slots (_poisonStamp _dampings _stiffnesses ))

(defmethod brics_actuator::JointImpedances
  (:init
   (&key
    ((:poisonStamp __poisonStamp) (instance brics_actuator::Poison :init))
    ((:dampings __dampings) (let (r) (dotimes (i 0) (push (instance brics_actuator::JointValue :init) r)) r))
    ((:stiffnesses __stiffnesses) (let (r) (dotimes (i 0) (push (instance brics_actuator::JointValue :init) r)) r))
    )
   (send-super :init)
   (setq _poisonStamp __poisonStamp)
   (setq _dampings __dampings)
   (setq _stiffnesses __stiffnesses)
   self)
  (:poisonStamp
   (&rest __poisonStamp)
   (if (keywordp (car __poisonStamp))
       (send* _poisonStamp __poisonStamp)
     (progn
       (if __poisonStamp (setq _poisonStamp (car __poisonStamp)))
       _poisonStamp)))
  (:dampings
   (&rest __dampings)
   (if (keywordp (car __dampings))
       (send* _dampings __dampings)
     (progn
       (if __dampings (setq _dampings (car __dampings)))
       _dampings)))
  (:stiffnesses
   (&rest __stiffnesses)
   (if (keywordp (car __stiffnesses))
       (send* _stiffnesses __stiffnesses)
     (progn
       (if __stiffnesses (setq _stiffnesses (car __stiffnesses)))
       _stiffnesses)))
  (:serialization-length
   ()
   (+
    ;; brics_actuator/Poison _poisonStamp
    (send _poisonStamp :serialization-length)
    ;; brics_actuator/JointValue[] _dampings
    (apply #'+ (send-all _dampings :serialization-length)) 4
    ;; brics_actuator/JointValue[] _stiffnesses
    (apply #'+ (send-all _stiffnesses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; brics_actuator/Poison _poisonStamp
       (send _poisonStamp :serialize s)
     ;; brics_actuator/JointValue[] _dampings
     (write-long (length _dampings) s)
     (dolist (elem _dampings)
       (send elem :serialize s)
       )
     ;; brics_actuator/JointValue[] _stiffnesses
     (write-long (length _stiffnesses) s)
     (dolist (elem _stiffnesses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; brics_actuator/Poison _poisonStamp
     (send _poisonStamp :deserialize buf ptr-) (incf ptr- (send _poisonStamp :serialization-length))
   ;; brics_actuator/JointValue[] _dampings
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dampings (let (r) (dotimes (i n) (push (instance brics_actuator::JointValue :init) r)) r))
     (dolist (elem- _dampings)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; brics_actuator/JointValue[] _stiffnesses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stiffnesses (let (r) (dotimes (i n) (push (instance brics_actuator::JointValue :init) r)) r))
     (dolist (elem- _stiffnesses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get brics_actuator::JointImpedances :md5sum-) "14fdbb76121290f17525acd99e7242c6")
(setf (get brics_actuator::JointImpedances :datatype-) "brics_actuator/JointImpedances")
(setf (get brics_actuator::JointImpedances :definition-)
      "Poison poisonStamp
JointValue[] dampings
JointValue[] stiffnesses

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



(provide :brics_actuator/JointImpedances "14fdbb76121290f17525acd99e7242c6")


