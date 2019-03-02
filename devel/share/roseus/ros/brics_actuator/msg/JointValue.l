;; Auto-generated. Do not edit!


(when (boundp 'brics_actuator::JointValue)
  (if (not (find-package "BRICS_ACTUATOR"))
    (make-package "BRICS_ACTUATOR"))
  (shadow 'JointValue (find-package "BRICS_ACTUATOR")))
(unless (find-package "BRICS_ACTUATOR::JOINTVALUE")
  (make-package "BRICS_ACTUATOR::JOINTVALUE"))

(in-package "ROS")
;;//! \htmlinclude JointValue.msg.html


(defclass brics_actuator::JointValue
  :super ros::object
  :slots (_timeStamp _joint_uri _unit _value ))

(defmethod brics_actuator::JointValue
  (:init
   (&key
    ((:timeStamp __timeStamp) (instance ros::time :init))
    ((:joint_uri __joint_uri) "")
    ((:unit __unit) "")
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _timeStamp __timeStamp)
   (setq _joint_uri (string __joint_uri))
   (setq _unit (string __unit))
   (setq _value (float __value))
   self)
  (:timeStamp
   (&optional __timeStamp)
   (if __timeStamp (setq _timeStamp __timeStamp)) _timeStamp)
  (:joint_uri
   (&optional __joint_uri)
   (if __joint_uri (setq _joint_uri __joint_uri)) _joint_uri)
  (:unit
   (&optional __unit)
   (if __unit (setq _unit __unit)) _unit)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; time _timeStamp
    8
    ;; string _joint_uri
    4 (length _joint_uri)
    ;; string _unit
    4 (length _unit)
    ;; float64 _value
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _timeStamp
       (write-long (send _timeStamp :sec) s) (write-long (send _timeStamp :nsec) s)
     ;; string _joint_uri
       (write-long (length _joint_uri) s) (princ _joint_uri s)
     ;; string _unit
       (write-long (length _unit) s) (princ _unit s)
     ;; float64 _value
       (sys::poke _value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _timeStamp
     (send _timeStamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timeStamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _joint_uri
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_uri (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _unit
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _unit (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _value
     (setq _value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get brics_actuator::JointValue :md5sum-) "c8dad5a006889ad7de711a684999f0c6")
(setf (get brics_actuator::JointValue :datatype-) "brics_actuator/JointValue")
(setf (get brics_actuator::JointValue :definition-)
      "time timeStamp 		#time of the data 
string joint_uri
string unit 		#if empy expects si units, you can use boost::unit
float64 value

")



(provide :brics_actuator/JointValue "c8dad5a006889ad7de711a684999f0c6")


