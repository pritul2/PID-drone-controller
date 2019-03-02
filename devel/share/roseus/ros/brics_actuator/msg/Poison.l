;; Auto-generated. Do not edit!


(when (boundp 'brics_actuator::Poison)
  (if (not (find-package "BRICS_ACTUATOR"))
    (make-package "BRICS_ACTUATOR"))
  (shadow 'Poison (find-package "BRICS_ACTUATOR")))
(unless (find-package "BRICS_ACTUATOR::POISON")
  (make-package "BRICS_ACTUATOR::POISON"))

(in-package "ROS")
;;//! \htmlinclude Poison.msg.html


(defclass brics_actuator::Poison
  :super ros::object
  :slots (_originator _description _qos ))

(defmethod brics_actuator::Poison
  (:init
   (&key
    ((:originator __originator) "")
    ((:description __description) "")
    ((:qos __qos) 0.0)
    )
   (send-super :init)
   (setq _originator (string __originator))
   (setq _description (string __description))
   (setq _qos (float __qos))
   self)
  (:originator
   (&optional __originator)
   (if __originator (setq _originator __originator)) _originator)
  (:description
   (&optional __description)
   (if __description (setq _description __description)) _description)
  (:qos
   (&optional __qos)
   (if __qos (setq _qos __qos)) _qos)
  (:serialization-length
   ()
   (+
    ;; string _originator
    4 (length _originator)
    ;; string _description
    4 (length _description)
    ;; float32 _qos
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _originator
       (write-long (length _originator) s) (princ _originator s)
     ;; string _description
       (write-long (length _description) s) (princ _description s)
     ;; float32 _qos
       (sys::poke _qos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _originator
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _originator (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _description
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _description (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _qos
     (setq _qos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get brics_actuator::Poison :md5sum-) "b16420a6fd4cc18f64b776ee10e98bb0")
(setf (get brics_actuator::Poison :datatype-) "brics_actuator/Poison")
(setf (get brics_actuator::Poison :definition-)
      "string originator 		# node id
string description 		# encoding still an issue
float32 qos			# reliability of the channel
				# 0..1 where 1 means healthy

")



(provide :brics_actuator/Poison "b16420a6fd4cc18f64b776ee10e98bb0")


