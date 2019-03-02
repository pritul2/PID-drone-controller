; Auto-generated. Do not edit!


(cl:in-package plutodrone-srv)


;//! \htmlinclude PlutoPilot-request.msg.html

(cl:defclass <PlutoPilot-request> (roslisp-msg-protocol:ros-message)
  ((roll
    :reader roll
    :initarg :roll
    :type cl:integer
    :initform 0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:integer
    :initform 0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:integer
    :initform 0)
   (accX
    :reader accX
    :initarg :accX
    :type cl:float
    :initform 0.0)
   (accY
    :reader accY
    :initarg :accY
    :type cl:float
    :initform 0.0)
   (accZ
    :reader accZ
    :initarg :accZ
    :type cl:float
    :initform 0.0)
   (gyroX
    :reader gyroX
    :initarg :gyroX
    :type cl:float
    :initform 0.0)
   (gyroY
    :reader gyroY
    :initarg :gyroY
    :type cl:float
    :initform 0.0)
   (gyroZ
    :reader gyroZ
    :initarg :gyroZ
    :type cl:float
    :initform 0.0)
   (magX
    :reader magX
    :initarg :magX
    :type cl:float
    :initform 0.0)
   (magY
    :reader magY
    :initarg :magY
    :type cl:float
    :initform 0.0)
   (magZ
    :reader magZ
    :initarg :magZ
    :type cl:float
    :initform 0.0)
   (alt
    :reader alt
    :initarg :alt
    :type cl:float
    :initform 0.0))
)

(cl:defclass PlutoPilot-request (<PlutoPilot-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlutoPilot-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlutoPilot-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plutodrone-srv:<PlutoPilot-request> is deprecated: use plutodrone-srv:PlutoPilot-request instead.")))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <PlutoPilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:roll-val is deprecated.  Use plutodrone-srv:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <PlutoPilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:pitch-val is deprecated.  Use plutodrone-srv:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <PlutoPilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:yaw-val is deprecated.  Use plutodrone-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'accX-val :lambda-list '(m))
(cl:defmethod accX-val ((m <PlutoPilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:accX-val is deprecated.  Use plutodrone-srv:accX instead.")
  (accX m))

(cl:ensure-generic-function 'accY-val :lambda-list '(m))
(cl:defmethod accY-val ((m <PlutoPilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:accY-val is deprecated.  Use plutodrone-srv:accY instead.")
  (accY m))

(cl:ensure-generic-function 'accZ-val :lambda-list '(m))
(cl:defmethod accZ-val ((m <PlutoPilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:accZ-val is deprecated.  Use plutodrone-srv:accZ instead.")
  (accZ m))

(cl:ensure-generic-function 'gyroX-val :lambda-list '(m))
(cl:defmethod gyroX-val ((m <PlutoPilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:gyroX-val is deprecated.  Use plutodrone-srv:gyroX instead.")
  (gyroX m))

(cl:ensure-generic-function 'gyroY-val :lambda-list '(m))
(cl:defmethod gyroY-val ((m <PlutoPilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:gyroY-val is deprecated.  Use plutodrone-srv:gyroY instead.")
  (gyroY m))

(cl:ensure-generic-function 'gyroZ-val :lambda-list '(m))
(cl:defmethod gyroZ-val ((m <PlutoPilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:gyroZ-val is deprecated.  Use plutodrone-srv:gyroZ instead.")
  (gyroZ m))

(cl:ensure-generic-function 'magX-val :lambda-list '(m))
(cl:defmethod magX-val ((m <PlutoPilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:magX-val is deprecated.  Use plutodrone-srv:magX instead.")
  (magX m))

(cl:ensure-generic-function 'magY-val :lambda-list '(m))
(cl:defmethod magY-val ((m <PlutoPilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:magY-val is deprecated.  Use plutodrone-srv:magY instead.")
  (magY m))

(cl:ensure-generic-function 'magZ-val :lambda-list '(m))
(cl:defmethod magZ-val ((m <PlutoPilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:magZ-val is deprecated.  Use plutodrone-srv:magZ instead.")
  (magZ m))

(cl:ensure-generic-function 'alt-val :lambda-list '(m))
(cl:defmethod alt-val ((m <PlutoPilot-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:alt-val is deprecated.  Use plutodrone-srv:alt instead.")
  (alt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlutoPilot-request>) ostream)
  "Serializes a message object of type '<PlutoPilot-request>"
  (cl:let* ((signed (cl:slot-value msg 'roll)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'yaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyroX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyroY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyroZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'magX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'magY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'magZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'alt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlutoPilot-request>) istream)
  "Deserializes a message object of type '<PlutoPilot-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roll) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pitch) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyroZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magX) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magY) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magZ) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'alt) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlutoPilot-request>)))
  "Returns string type for a service object of type '<PlutoPilot-request>"
  "plutodrone/PlutoPilotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlutoPilot-request)))
  "Returns string type for a service object of type 'PlutoPilot-request"
  "plutodrone/PlutoPilotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlutoPilot-request>)))
  "Returns md5sum for a message object of type '<PlutoPilot-request>"
  "a9cb76ac323ce16acce1b8357e8cbb55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlutoPilot-request)))
  "Returns md5sum for a message object of type 'PlutoPilot-request"
  "a9cb76ac323ce16acce1b8357e8cbb55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlutoPilot-request>)))
  "Returns full string definition for message of type '<PlutoPilot-request>"
  (cl:format cl:nil "~%~%int32 roll~%int32 pitch~%int32 yaw~%float32 accX~%float32 accY~%float32 accZ~%float32 gyroX~%float32 gyroY~%float32 gyroZ~%float32 magX~%float32 magY~%float32 magZ~%float32 alt~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlutoPilot-request)))
  "Returns full string definition for message of type 'PlutoPilot-request"
  (cl:format cl:nil "~%~%int32 roll~%int32 pitch~%int32 yaw~%float32 accX~%float32 accY~%float32 accZ~%float32 gyroX~%float32 gyroY~%float32 gyroZ~%float32 magX~%float32 magY~%float32 magZ~%float32 alt~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlutoPilot-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlutoPilot-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlutoPilot-request
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':accX (accX msg))
    (cl:cons ':accY (accY msg))
    (cl:cons ':accZ (accZ msg))
    (cl:cons ':gyroX (gyroX msg))
    (cl:cons ':gyroY (gyroY msg))
    (cl:cons ':gyroZ (gyroZ msg))
    (cl:cons ':magX (magX msg))
    (cl:cons ':magY (magY msg))
    (cl:cons ':magZ (magZ msg))
    (cl:cons ':alt (alt msg))
))
;//! \htmlinclude PlutoPilot-response.msg.html

(cl:defclass <PlutoPilot-response> (roslisp-msg-protocol:ros-message)
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
    :initform 0))
)

(cl:defclass PlutoPilot-response (<PlutoPilot-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlutoPilot-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlutoPilot-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name plutodrone-srv:<PlutoPilot-response> is deprecated: use plutodrone-srv:PlutoPilot-response instead.")))

(cl:ensure-generic-function 'rcRoll-val :lambda-list '(m))
(cl:defmethod rcRoll-val ((m <PlutoPilot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:rcRoll-val is deprecated.  Use plutodrone-srv:rcRoll instead.")
  (rcRoll m))

(cl:ensure-generic-function 'rcPitch-val :lambda-list '(m))
(cl:defmethod rcPitch-val ((m <PlutoPilot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:rcPitch-val is deprecated.  Use plutodrone-srv:rcPitch instead.")
  (rcPitch m))

(cl:ensure-generic-function 'rcYaw-val :lambda-list '(m))
(cl:defmethod rcYaw-val ((m <PlutoPilot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:rcYaw-val is deprecated.  Use plutodrone-srv:rcYaw instead.")
  (rcYaw m))

(cl:ensure-generic-function 'rcThrottle-val :lambda-list '(m))
(cl:defmethod rcThrottle-val ((m <PlutoPilot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:rcThrottle-val is deprecated.  Use plutodrone-srv:rcThrottle instead.")
  (rcThrottle m))

(cl:ensure-generic-function 'rcAUX1-val :lambda-list '(m))
(cl:defmethod rcAUX1-val ((m <PlutoPilot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:rcAUX1-val is deprecated.  Use plutodrone-srv:rcAUX1 instead.")
  (rcAUX1 m))

(cl:ensure-generic-function 'rcAUX2-val :lambda-list '(m))
(cl:defmethod rcAUX2-val ((m <PlutoPilot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:rcAUX2-val is deprecated.  Use plutodrone-srv:rcAUX2 instead.")
  (rcAUX2 m))

(cl:ensure-generic-function 'rcAUX3-val :lambda-list '(m))
(cl:defmethod rcAUX3-val ((m <PlutoPilot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:rcAUX3-val is deprecated.  Use plutodrone-srv:rcAUX3 instead.")
  (rcAUX3 m))

(cl:ensure-generic-function 'rcAUX4-val :lambda-list '(m))
(cl:defmethod rcAUX4-val ((m <PlutoPilot-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader plutodrone-srv:rcAUX4-val is deprecated.  Use plutodrone-srv:rcAUX4 instead.")
  (rcAUX4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlutoPilot-response>) ostream)
  "Serializes a message object of type '<PlutoPilot-response>"
  (cl:let* ((signed (cl:slot-value msg 'rcRoll)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcPitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcYaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcThrottle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcAUX1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcAUX2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcAUX3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rcAUX4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlutoPilot-response>) istream)
  "Deserializes a message object of type '<PlutoPilot-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcRoll) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcPitch) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcYaw) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcThrottle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcAUX1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcAUX2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcAUX3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rcAUX4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlutoPilot-response>)))
  "Returns string type for a service object of type '<PlutoPilot-response>"
  "plutodrone/PlutoPilotResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlutoPilot-response)))
  "Returns string type for a service object of type 'PlutoPilot-response"
  "plutodrone/PlutoPilotResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlutoPilot-response>)))
  "Returns md5sum for a message object of type '<PlutoPilot-response>"
  "a9cb76ac323ce16acce1b8357e8cbb55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlutoPilot-response)))
  "Returns md5sum for a message object of type 'PlutoPilot-response"
  "a9cb76ac323ce16acce1b8357e8cbb55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlutoPilot-response>)))
  "Returns full string definition for message of type '<PlutoPilot-response>"
  (cl:format cl:nil "~%~%int32 rcRoll~%int32 rcPitch~%int32 rcYaw~%int32 rcThrottle~%int32 rcAUX1~%int32 rcAUX2~%int32 rcAUX3~%int32 rcAUX4~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlutoPilot-response)))
  "Returns full string definition for message of type 'PlutoPilot-response"
  (cl:format cl:nil "~%~%int32 rcRoll~%int32 rcPitch~%int32 rcYaw~%int32 rcThrottle~%int32 rcAUX1~%int32 rcAUX2~%int32 rcAUX3~%int32 rcAUX4~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlutoPilot-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlutoPilot-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlutoPilot-response
    (cl:cons ':rcRoll (rcRoll msg))
    (cl:cons ':rcPitch (rcPitch msg))
    (cl:cons ':rcYaw (rcYaw msg))
    (cl:cons ':rcThrottle (rcThrottle msg))
    (cl:cons ':rcAUX1 (rcAUX1 msg))
    (cl:cons ':rcAUX2 (rcAUX2 msg))
    (cl:cons ':rcAUX3 (rcAUX3 msg))
    (cl:cons ':rcAUX4 (rcAUX4 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlutoPilot)))
  'PlutoPilot-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlutoPilot)))
  'PlutoPilot-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlutoPilot)))
  "Returns string type for a service object of type '<PlutoPilot>"
  "plutodrone/PlutoPilot")