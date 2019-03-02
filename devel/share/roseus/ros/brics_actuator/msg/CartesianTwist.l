;; Auto-generated. Do not edit!


(when (boundp 'brics_actuator::CartesianTwist)
  (if (not (find-package "BRICS_ACTUATOR"))
    (make-package "BRICS_ACTUATOR"))
  (shadow 'CartesianTwist (find-package "BRICS_ACTUATOR")))
(unless (find-package "BRICS_ACTUATOR::CARTESIANTWIST")
  (make-package "BRICS_ACTUATOR::CARTESIANTWIST"))

(in-package "ROS")
;;//! \htmlinclude CartesianTwist.msg.html


(defclass brics_actuator::CartesianTwist
  :super ros::object
  :slots (_timeStamp _poisonStamp _base_frame_uri _target_frame_uri _translation _rotation ))

(defmethod brics_actuator::CartesianTwist
  (:init
   (&key
    ((:timeStamp __timeStamp) (instance ros::time :init))
    ((:poisonStamp __poisonStamp) (instance brics_actuator::Poison :init))
    ((:base_frame_uri __base_frame_uri) "")
    ((:target_frame_uri __target_frame_uri) "")
    ((:translation __translation) (instance brics_actuator::CartesianVector :init))
    ((:rotation __rotation) (instance brics_actuator::CartesianVector :init))
    )
   (send-super :init)
   (setq _timeStamp __timeStamp)
   (setq _poisonStamp __poisonStamp)
   (setq _base_frame_uri (string __base_frame_uri))
   (setq _target_frame_uri (string __target_frame_uri))
   (setq _translation __translation)
   (setq _rotation __rotation)
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
  (:translation
   (&rest __translation)
   (if (keywordp (car __translation))
       (send* _translation __translation)
     (progn
       (if __translation (setq _translation (car __translation)))
       _translation)))
  (:rotation
   (&rest __rotation)
   (if (keywordp (car __rotation))
       (send* _rotation __rotation)
     (progn
       (if __rotation (setq _rotation (car __rotation)))
       _rotation)))
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
    ;; brics_actuator/CartesianVector _translation
    (send _translation :serialization-length)
    ;; brics_actuator/CartesianVector _rotation
    (send _rotation :serialization-length)
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
     ;; brics_actuator/CartesianVector _translation
       (send _translation :serialize s)
     ;; brics_actuator/CartesianVector _rotation
       (send _rotation :serialize s)
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
   ;; brics_actuator/CartesianVector _translation
     (send _translation :deserialize buf ptr-) (incf ptr- (send _translation :serialization-length))
   ;; brics_actuator/CartesianVector _rotation
     (send _rotation :deserialize buf ptr-) (incf ptr- (send _rotation :serialization-length))
   ;;
   self)
  )

(setf (get brics_actuator::CartesianTwist :md5sum-) "e86336d0ca57e442a1f55b8cb29e1a22")
(setf (get brics_actuator::CartesianTwist :datatype-) "brics_actuator/CartesianTwist")
(setf (get brics_actuator::CartesianTwist :definition-)
      "time timeStamp
Poison poisonStamp
string base_frame_uri
string target_frame_uri
# need some more frames?	
CartesianVector translation 
CartesianVector rotation

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



(provide :brics_actuator/CartesianTwist "e86336d0ca57e442a1f55b8cb29e1a22")


