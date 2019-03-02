;; Auto-generated. Do not edit!


(when (boundp 'plutodrone::PlutoPilot)
  (if (not (find-package "PLUTODRONE"))
    (make-package "PLUTODRONE"))
  (shadow 'PlutoPilot (find-package "PLUTODRONE")))
(unless (find-package "PLUTODRONE::PLUTOPILOT")
  (make-package "PLUTODRONE::PLUTOPILOT"))
(unless (find-package "PLUTODRONE::PLUTOPILOTREQUEST")
  (make-package "PLUTODRONE::PLUTOPILOTREQUEST"))
(unless (find-package "PLUTODRONE::PLUTOPILOTRESPONSE")
  (make-package "PLUTODRONE::PLUTOPILOTRESPONSE"))

(in-package "ROS")





(defclass plutodrone::PlutoPilotRequest
  :super ros::object
  :slots (_roll _pitch _yaw _accX _accY _accZ _gyroX _gyroY _gyroZ _magX _magY _magZ _alt ))

(defmethod plutodrone::PlutoPilotRequest
  (:init
   (&key
    ((:roll __roll) 0)
    ((:pitch __pitch) 0)
    ((:yaw __yaw) 0)
    ((:accX __accX) 0.0)
    ((:accY __accY) 0.0)
    ((:accZ __accZ) 0.0)
    ((:gyroX __gyroX) 0.0)
    ((:gyroY __gyroY) 0.0)
    ((:gyroZ __gyroZ) 0.0)
    ((:magX __magX) 0.0)
    ((:magY __magY) 0.0)
    ((:magZ __magZ) 0.0)
    ((:alt __alt) 0.0)
    )
   (send-super :init)
   (setq _roll (round __roll))
   (setq _pitch (round __pitch))
   (setq _yaw (round __yaw))
   (setq _accX (float __accX))
   (setq _accY (float __accY))
   (setq _accZ (float __accZ))
   (setq _gyroX (float __gyroX))
   (setq _gyroY (float __gyroY))
   (setq _gyroZ (float __gyroZ))
   (setq _magX (float __magX))
   (setq _magY (float __magY))
   (setq _magZ (float __magZ))
   (setq _alt (float __alt))
   self)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:accX
   (&optional __accX)
   (if __accX (setq _accX __accX)) _accX)
  (:accY
   (&optional __accY)
   (if __accY (setq _accY __accY)) _accY)
  (:accZ
   (&optional __accZ)
   (if __accZ (setq _accZ __accZ)) _accZ)
  (:gyroX
   (&optional __gyroX)
   (if __gyroX (setq _gyroX __gyroX)) _gyroX)
  (:gyroY
   (&optional __gyroY)
   (if __gyroY (setq _gyroY __gyroY)) _gyroY)
  (:gyroZ
   (&optional __gyroZ)
   (if __gyroZ (setq _gyroZ __gyroZ)) _gyroZ)
  (:magX
   (&optional __magX)
   (if __magX (setq _magX __magX)) _magX)
  (:magY
   (&optional __magY)
   (if __magY (setq _magY __magY)) _magY)
  (:magZ
   (&optional __magZ)
   (if __magZ (setq _magZ __magZ)) _magZ)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:serialization-length
   ()
   (+
    ;; int32 _roll
    4
    ;; int32 _pitch
    4
    ;; int32 _yaw
    4
    ;; float32 _accX
    4
    ;; float32 _accY
    4
    ;; float32 _accZ
    4
    ;; float32 _gyroX
    4
    ;; float32 _gyroY
    4
    ;; float32 _gyroZ
    4
    ;; float32 _magX
    4
    ;; float32 _magY
    4
    ;; float32 _magZ
    4
    ;; float32 _alt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roll
       (write-long _roll s)
     ;; int32 _pitch
       (write-long _pitch s)
     ;; int32 _yaw
       (write-long _yaw s)
     ;; float32 _accX
       (sys::poke _accX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accY
       (sys::poke _accY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accZ
       (sys::poke _accZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyroX
       (sys::poke _gyroX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyroY
       (sys::poke _gyroY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyroZ
       (sys::poke _gyroZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _magX
       (sys::poke _magX (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _magY
       (sys::poke _magY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _magZ
       (sys::poke _magZ (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roll
     (setq _roll (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pitch
     (setq _pitch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _yaw
     (setq _yaw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _accX
     (setq _accX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accY
     (setq _accY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accZ
     (setq _accZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyroX
     (setq _gyroX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyroY
     (setq _gyroY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyroZ
     (setq _gyroZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _magX
     (setq _magX (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _magY
     (setq _magY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _magZ
     (setq _magZ (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alt
     (setq _alt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plutodrone::PlutoPilotResponse
  :super ros::object
  :slots (_rcRoll _rcPitch _rcYaw _rcThrottle _rcAUX1 _rcAUX2 _rcAUX3 _rcAUX4 ))

(defmethod plutodrone::PlutoPilotResponse
  (:init
   (&key
    ((:rcRoll __rcRoll) 0)
    ((:rcPitch __rcPitch) 0)
    ((:rcYaw __rcYaw) 0)
    ((:rcThrottle __rcThrottle) 0)
    ((:rcAUX1 __rcAUX1) 0)
    ((:rcAUX2 __rcAUX2) 0)
    ((:rcAUX3 __rcAUX3) 0)
    ((:rcAUX4 __rcAUX4) 0)
    )
   (send-super :init)
   (setq _rcRoll (round __rcRoll))
   (setq _rcPitch (round __rcPitch))
   (setq _rcYaw (round __rcYaw))
   (setq _rcThrottle (round __rcThrottle))
   (setq _rcAUX1 (round __rcAUX1))
   (setq _rcAUX2 (round __rcAUX2))
   (setq _rcAUX3 (round __rcAUX3))
   (setq _rcAUX4 (round __rcAUX4))
   self)
  (:rcRoll
   (&optional __rcRoll)
   (if __rcRoll (setq _rcRoll __rcRoll)) _rcRoll)
  (:rcPitch
   (&optional __rcPitch)
   (if __rcPitch (setq _rcPitch __rcPitch)) _rcPitch)
  (:rcYaw
   (&optional __rcYaw)
   (if __rcYaw (setq _rcYaw __rcYaw)) _rcYaw)
  (:rcThrottle
   (&optional __rcThrottle)
   (if __rcThrottle (setq _rcThrottle __rcThrottle)) _rcThrottle)
  (:rcAUX1
   (&optional __rcAUX1)
   (if __rcAUX1 (setq _rcAUX1 __rcAUX1)) _rcAUX1)
  (:rcAUX2
   (&optional __rcAUX2)
   (if __rcAUX2 (setq _rcAUX2 __rcAUX2)) _rcAUX2)
  (:rcAUX3
   (&optional __rcAUX3)
   (if __rcAUX3 (setq _rcAUX3 __rcAUX3)) _rcAUX3)
  (:rcAUX4
   (&optional __rcAUX4)
   (if __rcAUX4 (setq _rcAUX4 __rcAUX4)) _rcAUX4)
  (:serialization-length
   ()
   (+
    ;; int32 _rcRoll
    4
    ;; int32 _rcPitch
    4
    ;; int32 _rcYaw
    4
    ;; int32 _rcThrottle
    4
    ;; int32 _rcAUX1
    4
    ;; int32 _rcAUX2
    4
    ;; int32 _rcAUX3
    4
    ;; int32 _rcAUX4
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _rcRoll
       (write-long _rcRoll s)
     ;; int32 _rcPitch
       (write-long _rcPitch s)
     ;; int32 _rcYaw
       (write-long _rcYaw s)
     ;; int32 _rcThrottle
       (write-long _rcThrottle s)
     ;; int32 _rcAUX1
       (write-long _rcAUX1 s)
     ;; int32 _rcAUX2
       (write-long _rcAUX2 s)
     ;; int32 _rcAUX3
       (write-long _rcAUX3 s)
     ;; int32 _rcAUX4
       (write-long _rcAUX4 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _rcRoll
     (setq _rcRoll (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rcPitch
     (setq _rcPitch (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rcYaw
     (setq _rcYaw (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rcThrottle
     (setq _rcThrottle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rcAUX1
     (setq _rcAUX1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rcAUX2
     (setq _rcAUX2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rcAUX3
     (setq _rcAUX3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rcAUX4
     (setq _rcAUX4 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass plutodrone::PlutoPilot
  :super ros::object
  :slots ())

(setf (get plutodrone::PlutoPilot :md5sum-) "a9cb76ac323ce16acce1b8357e8cbb55")
(setf (get plutodrone::PlutoPilot :datatype-) "plutodrone/PlutoPilot")
(setf (get plutodrone::PlutoPilot :request) plutodrone::PlutoPilotRequest)
(setf (get plutodrone::PlutoPilot :response) plutodrone::PlutoPilotResponse)

(defmethod plutodrone::PlutoPilotRequest
  (:response () (instance plutodrone::PlutoPilotResponse :init)))

(setf (get plutodrone::PlutoPilotRequest :md5sum-) "a9cb76ac323ce16acce1b8357e8cbb55")
(setf (get plutodrone::PlutoPilotRequest :datatype-) "plutodrone/PlutoPilotRequest")
(setf (get plutodrone::PlutoPilotRequest :definition-)
      "

int32 roll
int32 pitch
int32 yaw
float32 accX
float32 accY
float32 accZ
float32 gyroX
float32 gyroY
float32 gyroZ
float32 magX
float32 magY
float32 magZ
float32 alt

---


int32 rcRoll
int32 rcPitch
int32 rcYaw
int32 rcThrottle
int32 rcAUX1
int32 rcAUX2
int32 rcAUX3
int32 rcAUX4

")

(setf (get plutodrone::PlutoPilotResponse :md5sum-) "a9cb76ac323ce16acce1b8357e8cbb55")
(setf (get plutodrone::PlutoPilotResponse :datatype-) "plutodrone/PlutoPilotResponse")
(setf (get plutodrone::PlutoPilotResponse :definition-)
      "

int32 roll
int32 pitch
int32 yaw
float32 accX
float32 accY
float32 accZ
float32 gyroX
float32 gyroY
float32 gyroZ
float32 magX
float32 magY
float32 magZ
float32 alt

---


int32 rcRoll
int32 rcPitch
int32 rcYaw
int32 rcThrottle
int32 rcAUX1
int32 rcAUX2
int32 rcAUX3
int32 rcAUX4

")



(provide :plutodrone/PlutoPilot "a9cb76ac323ce16acce1b8357e8cbb55")


