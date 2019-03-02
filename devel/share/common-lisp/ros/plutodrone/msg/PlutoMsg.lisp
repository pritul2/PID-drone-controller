; Auto-generated. Do not edit!


(cl:in-package plutodrone-msg)


;//! \htmlinclude PlutoMsg.msg.html

(cl:defclass <PlutoMsg> (roslisp-msg-protocol:ros-message)
  ((rcRoll
    :reader rcRoll
    :initarg :rcRoll
    :type cl:integer
    :initform 0)
   (rcPitch
    :reader rcPitch
    :initarg :rcPitch
    :type cl:integer
    :initform 0)
   (rcYaw
    :reader rcYaw
    :initarg :rcYaw
    :type cl:integer
    :initform 0)
   (rcThrottle
    :reader rcThrottle
    :initarg :rcThrottle
    :type cl:integer
    :initform 0)
   (rcAUX1
    :reader rcAUX1
    :initarg :rcAUX1
    :type cl:integer
    :initform 0)
   (rcAUX2
    :reader rcAUX2
    :initarg :rcAUX2
    :type cl:integer
    :initform 0)
   (rcAUX3
    :reader rcAUX3
    :initarg :rcAUX3
    :type cl:integer
    :initform 0)
   (rcAUX4
    :reader rcAUX4
    :initarg :rcAUX4
    :type cl:integer
    :initform 0)
   (plutoIndex
    :reader plutoIndex
    :initarg :plutoIndex
    :type cl:integer
    :initform 0))
)

(cl:defclass PlutoMsg (<PlutoMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlutoMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlutoMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plutodrone-msg:<PlutoMsg> is deprecated: use plutodrone-msg:PlutoMsg instead.")))

(cl:ensure-generic-function 'rcRoll-val :lambda-list '(m))
(cl:defmethod rcRoll-val ((m <PlutoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-msg:rcRoll-val is deprecated.  Use plutodrone-msg:rcRoll instead.")
  (rcRoll m))

(cl:ensure-generic-function 'rcPitch-val :lambda-list '(m))
(cl:defmethod rcPitch-val ((m <PlutoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-msg:rcPitch-val is deprecated.  Use plutodrone-msg:rcPitch instead.")
  (rcPitch m))

(cl:ensure-generic-function 'rcYaw-val :lambda-list '(m))
(cl:defmethod rcYaw-val ((m <PlutoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-msg:rcYaw-val is deprecated.  Use plutodrone-msg:rcYaw instead.")
  (rcYaw m))

(cl:ensure-generic-function 'rcThrottle-val :lambda-list '(m))
(cl:defmethod rcThrottle-val ((m <PlutoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-msg:rcThrottle-val is deprecated.  Use plutodrone-msg:rcThrottle instead.")
  (rcThrottle m))

(cl:ensure-generic-function 'rcAUX1-val :lambda-list '(m))
(cl:defmethod rcAUX1-val ((m <PlutoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-msg:rcAUX1-val is deprecated.  Use plutodrone-msg:rcAUX1 instead.")
  (rcAUX1 m))

(cl:ensure-generic-function 'rcAUX2-val :lambda-list '(m))
(cl:defmethod rcAUX2-val ((m <PlutoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-msg:rcAUX2-val is deprecated.  Use plutodrone-msg:rcAUX2 instead.")
  (rcAUX2 m))

(cl:ensure-generic-function 'rcAUX3-val :lambda-list '(m))
(cl:defmethod rcAUX3-val ((m <PlutoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-msg:rcAUX3-val is deprecated.  Use plutodrone-msg:rcAUX3 instead.")
  (rcAUX3 m))

(cl:ensure-generic-function 'rcAUX4-val :lambda-list '(m))
(cl:defmethod rcAUX4-val ((m <PlutoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-msg:rcAUX4-val is deprecated.  Use plutodrone-msg:rcAUX4 instead.")
  (rcAUX4 m))

(cl:ensure-generic-function 'plutoIndex-val :lambda-list '(m))
(cl:defmethod plutoIndex-val ((m <PlutoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-msg:plutoIndex-val is deprecated.  Use plutodrone-msg:plutoIndex instead.")
  (plutoIndex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlutoMsg>) ostream)
  "Serializes a message object of type '<PlutoMsg>"
  (cl:let* ((signed (cl:slot-value msg 'rcRoll)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcPitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcYaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcThrottle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcAUX1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcAUX2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcAUX3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcAUX4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'plutoIndex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlutoMsg>) istream)
  "Deserializes a message object of type '<PlutoMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcRoll) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcPitch) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcYaw) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcThrottle) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcAUX1) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcAUX2) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcAUX3) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcAUX4) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'plutoIndex) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlutoMsg>)))
  "Returns string type for a message object of type '<PlutoMsg>"
  "plutodrone/PlutoMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlutoMsg)))
  "Returns string type for a message object of type 'PlutoMsg"
  "plutodrone/PlutoMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlutoMsg>)))
  "Returns md5sum for a message object of type '<PlutoMsg>"
  "f7fa0d15465731dd6d5e23cfeac6edf4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlutoMsg)))
  "Returns md5sum for a message object of type 'PlutoMsg"
  "f7fa0d15465731dd6d5e23cfeac6edf4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlutoMsg>)))
  "Returns full string definition for message of type '<PlutoMsg>"
  (cl:format cl:nil "int64 rcRoll~%int64 rcPitch~%int64 rcYaw~%int64 rcThrottle~%int64 rcAUX1~%int64 rcAUX2~%int64 rcAUX3~%int64 rcAUX4~%int64 plutoIndex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlutoMsg)))
  "Returns full string definition for message of type 'PlutoMsg"
  (cl:format cl:nil "int64 rcRoll~%int64 rcPitch~%int64 rcYaw~%int64 rcThrottle~%int64 rcAUX1~%int64 rcAUX2~%int64 rcAUX3~%int64 rcAUX4~%int64 plutoIndex~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlutoMsg>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlutoMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'PlutoMsg
    (cl:cons ':rcRoll (rcRoll msg))
    (cl:cons ':rcPitch (rcPitch msg))
    (cl:cons ':rcYaw (rcYaw msg))
    (cl:cons ':rcThrottle (rcThrottle msg))
    (cl:cons ':rcAUX1 (rcAUX1 msg))
    (cl:cons ':rcAUX2 (rcAUX2 msg))
    (cl:cons ':rcAUX3 (rcAUX3 msg))
    (cl:cons ':rcAUX4 (rcAUX4 msg))
    (cl:cons ':plutoIndex (plutoIndex msg))
))
