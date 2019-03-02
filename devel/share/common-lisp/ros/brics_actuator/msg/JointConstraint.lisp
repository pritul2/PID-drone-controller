; Auto-generated. Do not edit!


(cl:in-package brics_actuator-msg)


;//! \htmlinclude JointConstraint.msg.html

(cl:defclass <JointConstraint> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type brics_actuator-msg:JointValue
    :initform (cl:make-instance 'brics_actuator-msg:JointValue)))
)

(cl:defclass JointConstraint (<JointConstraint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointConstraint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointConstraint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name brics_actuator-msg:<JointConstraint> is deprecated: use brics_actuator-msg:JointConstraint instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <JointConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:type-val is deprecated.  Use brics_actuator-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <JointConstraint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:value-val is deprecated.  Use brics_actuator-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointConstraint>) ostream)
  "Serializes a message object of type '<JointConstraint>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'value) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointConstraint>) istream)
  "Deserializes a message object of type '<JointConstraint>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'value) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointConstraint>)))
  "Returns string type for a message object of type '<JointConstraint>"
  "brics_actuator/JointConstraint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointConstraint)))
  "Returns string type for a message object of type 'JointConstraint"
  "brics_actuator/JointConstraint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointConstraint>)))
  "Returns md5sum for a message object of type '<JointConstraint>"
  "f77db04949b26b64f80564df22f00ecb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointConstraint)))
  "Returns md5sum for a message object of type 'JointConstraint"
  "f77db04949b26b64f80564df22f00ecb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointConstraint>)))
  "Returns full string definition for message of type '<JointConstraint>"
  (cl:format cl:nil "string type  		#smaller, greater, equal or <, >, =~%JointValue value~%~%================================================================================~%MSG: brics_actuator/JointValue~%time timeStamp 		#time of the data ~%string joint_uri~%string unit 		#if empy expects si units, you can use boost::unit~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointConstraint)))
  "Returns full string definition for message of type 'JointConstraint"
  (cl:format cl:nil "string type  		#smaller, greater, equal or <, >, =~%JointValue value~%~%================================================================================~%MSG: brics_actuator/JointValue~%time timeStamp 		#time of the data ~%string joint_uri~%string unit 		#if empy expects si units, you can use boost::unit~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointConstraint>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'value))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointConstraint>))
  "Converts a ROS message object to a list"
  (cl:list 'JointConstraint
    (cl:cons ':type (type msg))
    (cl:cons ':value (value msg))
))
