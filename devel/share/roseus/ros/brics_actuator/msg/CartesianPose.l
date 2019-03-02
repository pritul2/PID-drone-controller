;; Auto-generated. Do not edit!


(when (boundp 'brics_actuator::CartesianPose)
  (if (not (find-package "BRICS_ACTUATOR"))
    (make-package "BRICS_ACTUATOR"))
  (shadow 'CartesianPose (find-package "BRICS_ACTUATOR")))
(unless (find-package "BRICS_ACTUATOR::CARTESIANPOSE")
  (make-package "BRICS_ACTUATOR::CARTESIANPOSE"))

(in-package "ROS")
;;//! \htmlinclude CartesianPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass brics_actuator::CartesianPose
  :super ros::object
  :slots (_timeStamp _poisonStamp _base_frame_uri _target_frame_uri _position _orientation ))

(defmethod brics_actuator::CartesianPose
  (:init
   (&key
    ((:timeStamp __timeStamp) (instance ros::time :init))
    ((:poisonStamp __poisonStamp) (instance brics_actuator::Poison :init))
    ((:base_frame_uri __base_frame_uri) "")
    ((:target_frame_uri __target_frame_uri) "")
    ((:position __position) (instance brics_actuator::CartesianVector :init))
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _timeStamp __timeStamp)
   (setq _poisonStamp __poisonStamp)
   (setq _base_frame_uri (string __base_frame_uri))
   (setq _target_frame_uri (string __target_frame_uri))
   (setq _position __position)
   (setq _orientation __orientation)
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
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
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
    ;; brics_actuator/CartesianVector _position
    (send _position :serialization-length)
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
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
     ;; brics_actuator/CartesianVector _position
       (send _position :serialize s)
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
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
   ;; brics_actuator/CartesianVector _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;;
   self)
  )

(setf (get brics_actuator::CartesianPose :md5sum-) "0fe287468091771914ed98dea2d2a5a5")
(setf (get brics_actuator::CartesianPose :datatype-) "brics_actuator/CartesianPose")
(setf (get brics_actuator::CartesianPose :definition-)
      "time timeStamp
Poison poisonStamp
string base_frame_uri
string target_frame_uri
CartesianVector position
geometry_msgs/Quaternion orientation

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

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :brics_actuator/CartesianPose "0fe287468091771914ed98dea2d2a5a5")


