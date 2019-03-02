; Auto-generated. Do not edit!


(cl:in-package brics_actuator-msg)


;//! \htmlinclude JointValue.msg.html

(cl:defclass <JointValue> (roslisp-msg-protocol:ros-message)
  ((timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:real
    :initform 0)
   (joint_uri
    :reader joint_uri
    :initarg :joint_uri
    :type cl:string
    :initform "")
   (unit
    :reader unit
    :initarg :unit
    :type cl:string
    :initform "")
   (value
    :reader value
    :initarg :value
    :type cl:float
    :initform 0.0))
)

(cl:defclass JointValue (<JointValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name brics_actuator-msg:<JointValue> is deprecated: use brics_actuator-msg:JointValue instead.")))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <JointValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:timeStamp-val is deprecated.  Use brics_actuator-msg:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'joint_uri-val :lambda-list '(m))
(cl:defmethod joint_uri-val ((m <JointValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:joint_uri-val is deprecated.  Use brics_actuator-msg:joint_uri instead.")
  (joint_uri m))

(cl:ensure-generic-function 'unit-val :lambda-list '(m))
(cl:defmethod unit-val ((m <JointValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:unit-val is deprecated.  Use brics_actuator-msg:unit instead.")
  (unit m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <JointValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:value-val is deprecated.  Use brics_actuator-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointValue>) ostream)
  "Serializes a message object of type '<JointValue>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'timeStamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'timeStamp) (cl:floor (cl:slot-value msg 'timeStamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_uri))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'unit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'unit))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointValue>) istream)
  "Deserializes a message object of type '<JointValue>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeStamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'unit) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'unit) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'value) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointValue>)))
  "Returns string type for a message object of type '<JointValue>"
  "brics_actuator/JointValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointValue)))
  "Returns string type for a message object of type 'JointValue"
  "brics_actuator/JointValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointValue>)))
  "Returns md5sum for a message object of type '<JointValue>"
  "c8dad5a006889ad7de711a684999f0c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointValue)))
  "Returns md5sum for a message object of type 'JointValue"
  "c8dad5a006889ad7de711a684999f0c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointValue>)))
  "Returns full string definition for message of type '<JointValue>"
  (cl:format cl:nil "time timeStamp 		#time of the data ~%string joint_uri~%string unit 		#if empy expects si units, you can use boost::unit~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointValue)))
  "Returns full string definition for message of type 'JointValue"
  (cl:format cl:nil "time timeStamp 		#time of the data ~%string joint_uri~%string unit 		#if empy expects si units, you can use boost::unit~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointValue>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'joint_uri))
     4 (cl:length (cl:slot-value msg 'unit))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointValue>))
  "Converts a ROS message object to a list"
  (cl:list 'JointValue
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':joint_uri (joint_uri msg))
    (cl:cons ':unit (unit msg))
    (cl:cons ':value (value msg))
))
