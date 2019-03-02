; Auto-generated. Do not edit!


(cl:in-package brics_actuator-msg)


;//! \htmlinclude JointImpedances.msg.html

(cl:defclass <JointImpedances> (roslisp-msg-protocol:ros-message)
  ((poisonStamp
    :reader poisonStamp
    :initarg :poisonStamp
    :type brics_actuator-msg:Poison
    :initform (cl:make-instance 'brics_actuator-msg:Poison))
   (dampings
    :reader dampings
    :initarg :dampings
    :type (cl:vector brics_actuator-msg:JointValue)
   :initform (cl:make-array 0 :element-type 'brics_actuator-msg:JointValue :initial-element (cl:make-instance 'brics_actuator-msg:JointValue)))
   (stiffnesses
    :reader stiffnesses
    :initarg :stiffnesses
    :type (cl:vector brics_actuator-msg:JointValue)
   :initform (cl:make-array 0 :element-type 'brics_actuator-msg:JointValue :initial-element (cl:make-instance 'brics_actuator-msg:JointValue))))
)

(cl:defclass JointImpedances (<JointImpedances>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointImpedances>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointImpedances)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name brics_actuator-msg:<JointImpedances> is deprecated: use brics_actuator-msg:JointImpedances instead.")))

(cl:ensure-generic-function 'poisonStamp-val :lambda-list '(m))
(cl:defmethod poisonStamp-val ((m <JointImpedances>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:poisonStamp-val is deprecated.  Use brics_actuator-msg:poisonStamp instead.")
  (poisonStamp m))

(cl:ensure-generic-function 'dampings-val :lambda-list '(m))
(cl:defmethod dampings-val ((m <JointImpedances>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:dampings-val is deprecated.  Use brics_actuator-msg:dampings instead.")
  (dampings m))

(cl:ensure-generic-function 'stiffnesses-val :lambda-list '(m))
(cl:defmethod stiffnesses-val ((m <JointImpedances>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:stiffnesses-val is deprecated.  Use brics_actuator-msg:stiffnesses instead.")
  (stiffnesses m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointImpedances>) ostream)
  "Serializes a message object of type '<JointImpedances>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poisonStamp) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dampings))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dampings))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stiffnesses))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'stiffnesses))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointImpedances>) istream)
  "Deserializes a message object of type '<JointImpedances>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poisonStamp) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dampings) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dampings)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'brics_actuator-msg:JointValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stiffnesses) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stiffnesses)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'brics_actuator-msg:JointValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointImpedances>)))
  "Returns string type for a message object of type '<JointImpedances>"
  "brics_actuator/JointImpedances")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointImpedances)))
  "Returns string type for a message object of type 'JointImpedances"
  "brics_actuator/JointImpedances")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointImpedances>)))
  "Returns md5sum for a message object of type '<JointImpedances>"
  "14fdbb76121290f17525acd99e7242c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointImpedances)))
  "Returns md5sum for a message object of type 'JointImpedances"
  "14fdbb76121290f17525acd99e7242c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointImpedances>)))
  "Returns full string definition for message of type '<JointImpedances>"
  (cl:format cl:nil "Poison poisonStamp~%JointValue[] dampings~%JointValue[] stiffnesses~%~%================================================================================~%MSG: brics_actuator/Poison~%string originator 		# node id~%string description 		# encoding still an issue~%float32 qos			# reliability of the channel~%				# 0..1 where 1 means healthy~%~%================================================================================~%MSG: brics_actuator/JointValue~%time timeStamp 		#time of the data ~%string joint_uri~%string unit 		#if empy expects si units, you can use boost::unit~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointImpedances)))
  "Returns full string definition for message of type 'JointImpedances"
  (cl:format cl:nil "Poison poisonStamp~%JointValue[] dampings~%JointValue[] stiffnesses~%~%================================================================================~%MSG: brics_actuator/Poison~%string originator 		# node id~%string description 		# encoding still an issue~%float32 qos			# reliability of the channel~%				# 0..1 where 1 means healthy~%~%================================================================================~%MSG: brics_actuator/JointValue~%time timeStamp 		#time of the data ~%string joint_uri~%string unit 		#if empy expects si units, you can use boost::unit~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointImpedances>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poisonStamp))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dampings) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stiffnesses) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointImpedances>))
  "Converts a ROS message object to a list"
  (cl:list 'JointImpedances
    (cl:cons ':poisonStamp (poisonStamp msg))
    (cl:cons ':dampings (dampings msg))
    (cl:cons ':stiffnesses (stiffnesses msg))
))
