; Auto-generated. Do not edit!


(cl:in-package brics_actuator-msg)


;//! \htmlinclude CartesianPose.msg.html

(cl:defclass <CartesianPose> (roslisp-msg-protocol:ros-message)
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
   (position
    :reader position
    :initarg :position
    :type brics_actuator-msg:CartesianVector
    :initform (cl:make-instance 'brics_actuator-msg:CartesianVector))
   (orientation
    :reader orientation
    :initarg :orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion)))
)

(cl:defclass CartesianPose (<CartesianPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartesianPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartesianPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name brics_actuator-msg:<CartesianPose> is deprecated: use brics_actuator-msg:CartesianPose instead.")))

(cl:ensure-generic-function 'timeStamp-val :lambda-list '(m))
(cl:defmethod timeStamp-val ((m <CartesianPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:timeStamp-val is deprecated.  Use brics_actuator-msg:timeStamp instead.")
  (timeStamp m))

(cl:ensure-generic-function 'poisonStamp-val :lambda-list '(m))
(cl:defmethod poisonStamp-val ((m <CartesianPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:poisonStamp-val is deprecated.  Use brics_actuator-msg:poisonStamp instead.")
  (poisonStamp m))

(cl:ensure-generic-function 'base_frame_uri-val :lambda-list '(m))
(cl:defmethod base_frame_uri-val ((m <CartesianPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:base_frame_uri-val is deprecated.  Use brics_actuator-msg:base_frame_uri instead.")
  (base_frame_uri m))

(cl:ensure-generic-function 'target_frame_uri-val :lambda-list '(m))
(cl:defmethod target_frame_uri-val ((m <CartesianPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:target_frame_uri-val is deprecated.  Use brics_actuator-msg:target_frame_uri instead.")
  (target_frame_uri m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <CartesianPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:position-val is deprecated.  Use brics_actuator-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <CartesianPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:orientation-val is deprecated.  Use brics_actuator-msg:orientation instead.")
  (orientation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartesianPose>) ostream)
  "Serializes a message object of type '<CartesianPose>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartesianPose>) istream)
  "Deserializes a message object of type '<CartesianPose>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartesianPose>)))
  "Returns string type for a message object of type '<CartesianPose>"
  "brics_actuator/CartesianPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianPose)))
  "Returns string type for a message object of type 'CartesianPose"
  "brics_actuator/CartesianPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartesianPose>)))
  "Returns md5sum for a message object of type '<CartesianPose>"
  "0fe287468091771914ed98dea2d2a5a5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartesianPose)))
  "Returns md5sum for a message object of type 'CartesianPose"
  "0fe287468091771914ed98dea2d2a5a5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartesianPose>)))
  "Returns full string definition for message of type '<CartesianPose>"
  (cl:format cl:nil "time timeStamp~%Poison poisonStamp~%string base_frame_uri~%string target_frame_uri~%CartesianVector position~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: brics_actuator/Poison~%string originator 		# node id~%string description 		# encoding still an issue~%float32 qos			# reliability of the channel~%				# 0..1 where 1 means healthy~%~%================================================================================~%MSG: brics_actuator/CartesianVector~%string unit~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartesianPose)))
  "Returns full string definition for message of type 'CartesianPose"
  (cl:format cl:nil "time timeStamp~%Poison poisonStamp~%string base_frame_uri~%string target_frame_uri~%CartesianVector position~%geometry_msgs/Quaternion orientation~%~%================================================================================~%MSG: brics_actuator/Poison~%string originator 		# node id~%string description 		# encoding still an issue~%float32 qos			# reliability of the channel~%				# 0..1 where 1 means healthy~%~%================================================================================~%MSG: brics_actuator/CartesianVector~%string unit~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartesianPose>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poisonStamp))
     4 (cl:length (cl:slot-value msg 'base_frame_uri))
     4 (cl:length (cl:slot-value msg 'target_frame_uri))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartesianPose>))
  "Converts a ROS message object to a list"
  (cl:list 'CartesianPose
    (cl:cons ':timeStamp (timeStamp msg))
    (cl:cons ':poisonStamp (poisonStamp msg))
    (cl:cons ':base_frame_uri (base_frame_uri msg))
    (cl:cons ':target_frame_uri (target_frame_uri msg))
    (cl:cons ':position (position msg))
    (cl:cons ':orientation (orientation msg))
))
