; Auto-generated. Do not edit!


(cl:in-package brics_actuator-msg)


;//! \htmlinclude CartesianWrench.msg.html

(cl:defclass <CartesianWrench> (roslisp-msg-protocol:ros-message)
  ((timeStamp
    :reader timeStamp
    :initarg :timeStamp
    :type cl:real
    :initform 0)
   (poisonStamp
    :reader poisonStamp
    :initarg :poisonStamp
    :type brics_actuator-msg:Poison
    :initform (cl:make-instance 'brics_actuator-msg:Poison))
   (base_frame_uri
    :reader base_frame_uri
    :initarg :base_frame_uri
    :type cl:string
    :initform "")
   (target_frame_uri
    :reader target_frame_uri
    :initarg :target_frame_uri
    :type cl:string
    :initform "")
   (force
    :reader force
    :initarg :force
    :type brics_actuator-msg:CartesianVector
    :initform (cl:make-instance 'brics_actuator-msg:CartesianVector))
   (torque
    :reader torque
    :initarg :torque
    :type brics_actuator-msg:CartesianVector
    :initform (cl:make-instance 'brics_actuator-msg:CartesianVector)))
)

(cl:defclass CartesianWrench (<CartesianWrench>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartesianWrench>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartesianWrench)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name brics_actuator-msg:<CartesianWrench> is deprecated: use brics_actuator-msg:CartesianWrench instead.")))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <CartesianWrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:timeStamp-val is deprecated.  Use brics_actuator-msg:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'poisonStamp-val :lambda-list '(m))
(cl:defmethod poisonStamp-val ((m <CartesianWrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:poisonStamp-val is deprecated.  Use brics_actuator-msg:poisonStamp instead.")
  (poisonStamp m))

(cl:ensure-generic-function 'base_frame_uri-val :lambda-list '(m))
(cl:defmethod base_frame_uri-val ((m <CartesianWrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:base_frame_uri-val is deprecated.  Use brics_actuator-msg:base_frame_uri instead.")
  (base_frame_uri m))

(cl:ensure-generic-function 'target_frame_uri-val :lambda-list '(m))
(cl:defmethod target_frame_uri-val ((m <CartesianWrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:target_frame_uri-val is deprecated.  Use brics_actuator-msg:target_frame_uri instead.")
  (target_frame_uri m))

(cl:ensure-generic-function 'force-val :lambda-list '(m))
(cl:defmethod force-val ((m <CartesianWrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:force-val is deprecated.  Use brics_actuator-msg:force instead.")
  (force m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <CartesianWrench>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:torque-val is deprecated.  Use brics_actuator-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartesianWrench>) ostream)
  "Serializes a message object of type '<CartesianWrench>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poisonStamp) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'base_frame_uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'base_frame_uri))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'target_frame_uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'target_frame_uri))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'force) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'torque) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartesianWrench>) istream)
  "Deserializes a message object of type '<CartesianWrench>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poisonStamp) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'base_frame_uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'base_frame_uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_frame_uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'target_frame_uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'force) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'torque) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartesianWrench>)))
  "Returns string type for a message object of type '<CartesianWrench>"
  "brics_actuator/CartesianWrench")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianWrench)))
  "Returns string type for a message object of type 'CartesianWrench"
  "brics_actuator/CartesianWrench")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartesianWrench>)))
  "Returns md5sum for a message object of type '<CartesianWrench>"
  "9db8d24ea10e69de8feff86a9b0fa93d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartesianWrench)))
  "Returns md5sum for a message object of type 'CartesianWrench"
  "9db8d24ea10e69de8feff86a9b0fa93d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartesianWrench>)))
  "Returns full string definition for message of type '<CartesianWrench>"
  (cl:format cl:nil "time timeStamp~%Poison poisonStamp~%string base_frame_uri~%string target_frame_uri~%# need some more frames?	~%CartesianVector force~%CartesianVector torque	~%~%================================================================================~%MSG: brics_actuator/Poison~%string originator 		# node id~%string description 		# encoding still an issue~%float32 qos			# reliability of the channel~%				# 0..1 where 1 means healthy~%~%================================================================================~%MSG: brics_actuator/CartesianVector~%string unit~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartesianWrench)))
  "Returns full string definition for message of type 'CartesianWrench"
  (cl:format cl:nil "time timeStamp~%Poison poisonStamp~%string base_frame_uri~%string target_frame_uri~%# need some more frames?	~%CartesianVector force~%CartesianVector torque	~%~%================================================================================~%MSG: brics_actuator/Poison~%string originator 		# node id~%string description 		# encoding still an issue~%float32 qos			# reliability of the channel~%				# 0..1 where 1 means healthy~%~%================================================================================~%MSG: brics_actuator/CartesianVector~%string unit~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartesianWrench>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poisonStamp))
     4 (cl:length (cl:slot-value msg 'base_frame_uri))
     4 (cl:length (cl:slot-value msg 'target_frame_uri))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'force))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'torque))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartesianWrench>))
  "Converts a ROS message object to a list"
  (cl:list 'CartesianWrench
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':poisonStamp (poisonStamp msg))
    (cl:cons ':base_frame_uri (base_frame_uri msg))
    (cl:cons ':target_frame_uri (target_frame_uri msg))
    (cl:cons ':force (force msg))
    (cl:cons ':torque (torque msg))
))
