; Auto-generated. Do not edit!


(cl:in-package brics_actuator-msg)


;//! \htmlinclude Poison.msg.html

(cl:defclass <Poison> (roslisp-msg-protocol:ros-message)
  ((originator
    :reader originator
    :initarg :originator
    :type cl:string
    :initform "")
   (description
    :reader description
    :initarg :description
    :type cl:string
    :initform "")
   (qos
    :reader qos
    :initarg :qos
    :type cl:float
    :initform 0.0))
)

(cl:defclass Poison (<Poison>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Poison>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Poison)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name brics_actuator-msg:<Poison> is deprecated: use brics_actuator-msg:Poison instead.")))

(cl:ensure-generic-function 'originator-val :lambda-list '(m))
(cl:defmethod originator-val ((m <Poison>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:originator-val is deprecated.  Use brics_actuator-msg:originator instead.")
  (originator m))

(cl:ensure-generic-function 'description-val :lambda-list '(m))
(cl:defmethod description-val ((m <Poison>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:description-val is deprecated.  Use brics_actuator-msg:description instead.")
  (description m))

(cl:ensure-generic-function 'qos-val :lambda-list '(m))
(cl:defmethod qos-val ((m <Poison>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:qos-val is deprecated.  Use brics_actuator-msg:qos instead.")
  (qos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Poison>) ostream)
  "Serializes a message object of type '<Poison>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'originator))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'originator))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'description))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'description))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'qos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Poison>) istream)
  "Deserializes a message object of type '<Poison>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'originator) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'originator) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'description) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'description) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'qos) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Poison>)))
  "Returns string type for a message object of type '<Poison>"
  "brics_actuator/Poison")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Poison)))
  "Returns string type for a message object of type 'Poison"
  "brics_actuator/Poison")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Poison>)))
  "Returns md5sum for a message object of type '<Poison>"
  "b16420a6fd4cc18f64b776ee10e98bb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Poison)))
  "Returns md5sum for a message object of type 'Poison"
  "b16420a6fd4cc18f64b776ee10e98bb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Poison>)))
  "Returns full string definition for message of type '<Poison>"
  (cl:format cl:nil "string originator 		# node id~%string description 		# encoding still an issue~%float32 qos			# reliability of the channel~%				# 0..1 where 1 means healthy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Poison)))
  "Returns full string definition for message of type 'Poison"
  (cl:format cl:nil "string originator 		# node id~%string description 		# encoding still an issue~%float32 qos			# reliability of the channel~%				# 0..1 where 1 means healthy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Poison>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'originator))
     4 (cl:length (cl:slot-value msg 'description))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Poison>))
  "Converts a ROS message object to a list"
  (cl:list 'Poison
    (cl:cons ':originator (originator msg))
    (cl:cons ':description (description msg))
    (cl:cons ':qos (qos msg))
))
