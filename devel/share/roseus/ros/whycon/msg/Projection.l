;; Auto-generated. Do not edit!


(when (boundp 'whycon::Projection)
  (if (not (find-package "WHYCON"))
    (make-package "WHYCON"))
  (shadow 'Projection (find-package "WHYCON")))
(unless (find-package "WHYCON::PROJECTION")
  (make-package "WHYCON::PROJECTION"))

(in-package "ROS")
;;//! \htmlinclude Projection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass whycon::Projection
  :super ros::object
  :slots (_header _projection ))

(defmethod whycon::Projection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:projection __projection) (make-array 9 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _projection __projection)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:projection
   (&optional __projection)
   (if __projection (setq _projection __projection)) _projection)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[9] _projection
    (* 8    9)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[9] _projection
     (dotimes (i 9)
       (sys::poke (elt _projection i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[9] _projection
   (dotimes (i (length _projection))
     (setf (elt _projection i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get whycon::Projection :md5sum-) "f8f0ec7b4ddd16195597a2d3ca529821")
(setf (get whycon::Projection :datatype-) "whycon/Projection")
(setf (get whycon::Projection :definition-)
      "Header header
float64[9] projection

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :whycon/Projection "f8f0ec7b4ddd16195597a2d3ca529821")


