; Auto-generated. Do not edit!


(cl:in-package whycon-msg)


;//! \htmlinclude Projection.msg.html

(cl:defclass <Projection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (projection
    :reader projection
    :initarg :projection
    :type (cl:vector cl:float)
   :initform (cl:make-array 9 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Projection (<Projection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Projection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Projection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name whycon-msg:<Projection> is deprecated: use whycon-msg:Projection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Projection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whycon-msg:header-val is deprecated.  Use whycon-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'projection-val :lambda-list '(m))
(cl:defmethod projection-val ((m <Projection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader whycon-msg:projection-val is deprecated.  Use whycon-msg:projection instead.")
  (projection m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Projection>) ostream)
  "Serializes a message object of type '<Projection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'projection))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Projection>) istream)
  "Deserializes a message object of type '<Projection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'projection) (cl:make-array 9))
  (cl:let ((vals (cl:slot-value msg 'projection)))
    (cl:dotimes (i 9)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Projection>)))
  "Returns string type for a message object of type '<Projection>"
  "whycon/Projection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Projection)))
  "Returns string type for a message object of type 'Projection"
  "whycon/Projection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Projection>)))
  "Returns md5sum for a message object of type '<Projection>"
  "f8f0ec7b4ddd16195597a2d3ca529821")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Projection)))
  "Returns md5sum for a message object of type 'Projection"
  "f8f0ec7b4ddd16195597a2d3ca529821")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Projection>)))
  "Returns full string definition for message of type '<Projection>"
  (cl:format cl:nil "Header header~%float64[9] projection~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Projection)))
  "Returns full string definition for message of type 'Projection"
  (cl:format cl:nil "Header header~%float64[9] projection~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Projection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'projection) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Projection>))
  "Converts a ROS message object to a list"
  (cl:list 'Projection
    (cl:cons ':header (header msg))
    (cl:cons ':projection (projection msg))
))
