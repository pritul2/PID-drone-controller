;; Auto-generated. Do not edit!


(when (boundp 'brics_actuator::JointConstraint)
  (if (not (find-package "BRICS_ACTUATOR"))
    (make-package "BRICS_ACTUATOR"))
  (shadow 'JointConstraint (find-package "BRICS_ACTUATOR")))
(unless (find-package "BRICS_ACTUATOR::JOINTCONSTRAINT")
  (make-package "BRICS_ACTUATOR::JOINTCONSTRAINT"))

(in-package "ROS")
;;//! \htmlinclude JointConstraint.msg.html


(defclass brics_actuator::JointConstraint
  :super ros::object
  :slots (_type _value ))

(defmethod brics_actuator::JointConstraint
  (:init
   (&key
    ((:type __type) "")
    ((:value __value) (instance brics_actuator::JointValue :init))
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _value __value)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:value
   (&rest __value)
   (if (keywordp (car __value))
       (send* _value __value)
     (progn
       (if __value (setq _value (car __value)))
       _value)))
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; brics_actuator/JointValue _value
    (send _value :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; brics_actuator/JointValue _value
       (send _value :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; brics_actuator/JointValue _value
     (send _value :deserialize buf ptr-) (incf ptr- (send _value :serialization-length))
   ;;
   self)
  )

(setf (get brics_actuator::JointConstraint :md5sum-) "f77db04949b26b64f80564df22f00ecb")
(setf (get brics_actuator::JointConstraint :datatype-) "brics_actuator/JointConstraint")
(setf (get brics_actuator::JointConstraint :definition-)
      "string type  		#smaller, greater, equal or <, >, =
JointValue value

================================================================================
MSG: brics_actuator/JointValue
time timeStamp 		#time of the data 
string joint_uri
string unit 		#if empy expects si units, you can use boost::unit
float64 value

")



(provide :brics_actuator/JointConstraint "f77db04949b26b64f80564df22f00ecb")


