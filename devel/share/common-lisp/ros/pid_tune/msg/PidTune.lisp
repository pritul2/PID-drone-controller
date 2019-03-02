; Auto-generated. Do not edit!


(cl:in-package pid_tune-msg)


;//! \htmlinclude PidTune.msg.html

(cl:defclass <PidTune> (roslisp-msg-protocol:ros-message)
  ((Kp
    :reader Kp
    :initarg :Kp
    :type cl:fixnum
    :initform 0)
   (Kd
    :reader Kd
    :initarg :Kd
    :type cl:fixnum
    :initform 0)
   (Ki
    :reader Ki
    :initarg :Ki
    :type cl:fixnum
    :initform 0)
   (Kp_z
    :reader Kp_z
    :initarg :Kp_z
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PidTune (<PidTune>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PidTune>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PidTune)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pid_tune-msg:<PidTune> is deprecated: use pid_tune-msg:PidTune instead.")))

(cl:ensure-generic-function 'Kp-val :lambda-list '(m))
(cl:defmethod Kp-val ((m <PidTune>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid_tune-msg:Kp-val is deprecated.  Use pid_tune-msg:Kp instead.")
  (Kp m))

(cl:ensure-generic-function 'Kd-val :lambda-list '(m))
(cl:defmethod Kd-val ((m <PidTune>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid_tune-msg:Kd-val is deprecated.  Use pid_tune-msg:Kd instead.")
  (Kd m))

(cl:ensure-generic-function 'Ki-val :lambda-list '(m))
(cl:defmethod Ki-val ((m <PidTune>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid_tune-msg:Ki-val is deprecated.  Use pid_tune-msg:Ki instead.")
  (Ki m))

(cl:ensure-generic-function 'Kp_z-val :lambda-list '(m))
(cl:defmethod Kp_z-val ((m <PidTune>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pid_tune-msg:Kp_z-val is deprecated.  Use pid_tune-msg:Kp_z instead.")
  (Kp_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PidTune>) ostream)
  "Serializes a message object of type '<PidTune>"
  (cl:let* ((signed (cl:slot-value msg 'Kp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Kd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Ki)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Kp_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PidTune>) istream)
  "Deserializes a message object of type '<PidTune>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Kp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Kd) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Ki) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Kp_z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PidTune>)))
  "Returns string type for a message object of type '<PidTune>"
  "pid_tune/PidTune")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PidTune)))
  "Returns string type for a message object of type 'PidTune"
  "pid_tune/PidTune")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PidTune>)))
  "Returns md5sum for a message object of type '<PidTune>"
  "0c2da60e6140b798a4857caa11a7c01a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PidTune)))
  "Returns md5sum for a message object of type 'PidTune"
  "0c2da60e6140b798a4857caa11a7c01a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PidTune>)))
  "Returns full string definition for message of type '<PidTune>"
  (cl:format cl:nil "int16 Kp~%int16 Kd~%int16 Ki~%int16 Kp_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PidTune)))
  "Returns full string definition for message of type 'PidTune"
  (cl:format cl:nil "int16 Kp~%int16 Kd~%int16 Ki~%int16 Kp_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PidTune>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PidTune>))
  "Converts a ROS message object to a list"
  (cl:list 'PidTune
    (cl:cons ':Kp (Kp msg))
    (cl:cons ':Kd (Kd msg))
    (cl:cons ':Ki (Ki msg))
    (cl:cons ':Kp_z (Kp_z msg))
))
