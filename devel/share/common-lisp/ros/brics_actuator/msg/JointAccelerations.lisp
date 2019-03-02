; Auto-generated. Do not edit!


(cl:in-package brics_actuator-msg)


;//! \htmlinclude JointAccelerations.msg.html

(cl:defclass <JointAccelerations> (roslisp-msg-protocol:ros-message)
  ((poisonStamp
    :reader poisonStamp
    :initarg :poisonStamp
    :type brics_actuator-msg:Poison
    :initform (cl:make-instance 'brics_actuator-msg:Poison))
   (accelerations
    :reader accelerations
    :initarg :accelerations
    :type (cl:vector brics_actuator-msg:JointValue)
   :initform (cl:make-array 0 :element-type 'brics_actuator-msg:JointValue :initial-element (cl:make-instance 'brics_actuator-msg:JointValue))))
)

(cl:defclass JointAccelerations (<JointAccelerations>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointAccelerations>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointAccelerations)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name brics_actuator-msg:<JointAccelerations> is deprecated: use brics_actuator-msg:JointAccelerations instead.")))

(cl:ensure-generic-function 'poisonStamp-val :lambda-list '(m))
(cl:defmethod poisonStamp-val ((m <JointAccelerations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:poisonStamp-val is deprecated.  Use brics_actuator-msg:poisonStamp instead.")
  (poisonStamp m))

(cl:ensure-generic-function 'accelerations-val :lambda-list '(m))
(cl:defmethod accelerations-val ((m <JointAccelerations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:accelerations-val is deprecated.  Use brics_actuator-msg:accelerations instead.")
  (accelerations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointAccelerations>) ostream)
  "Serializes a message object of type '<JointAccelerations>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poisonStamp) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'accelerations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'accelerations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointAccelerations>) istream)
  "Deserializes a message object of type '<JointAccelerations>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poisonStamp) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'accelerations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'accelerations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'brics_actuator-msg:JointValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointAccelerations>)))
  "Returns string type for a message object of type '<JointAccelerations>"
  "brics_actuator/JointAccelerations")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointAccelerations)))
  "Returns string type for a message object of type 'JointAccelerations"
  "brics_actuator/JointAccelerations")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointAccelerations>)))
  "Returns md5sum for a message object of type '<JointAccelerations>"
  "f904d45aa2c1d97ea9e99a3ba4e3610e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointAccelerations)))
  "Returns md5sum for a message object of type 'JointAccelerations"
  "f904d45aa2c1d97ea9e99a3ba4e3610e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointAccelerations>)))
  "Returns full string definition for message of type '<JointAccelerations>"
  (cl:format cl:nil "Poison poisonStamp~%JointValue[] accelerations~%~%================================================================================~%MSG: brics_actuator/Poison~%string originator 		# node id~%string description 		# encoding still an issue~%float32 qos			# reliability of the channel~%				# 0..1 where 1 means healthy~%~%================================================================================~%MSG: brics_actuator/JointValue~%time timeStamp 		#time of the data ~%string joint_uri~%string unit 		#if empy expects si units, you can use boost::unit~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointAccelerations)))
  "Returns full string definition for message of type 'JointAccelerations"
  (cl:format cl:nil "Poison poisonStamp~%JointValue[] accelerations~%~%================================================================================~%MSG: brics_actuator/Poison~%string originator 		# node id~%string description 		# encoding still an issue~%float32 qos			# reliability of the channel~%				# 0..1 where 1 means healthy~%~%================================================================================~%MSG: brics_actuator/JointValue~%time timeStamp 		#time of the data ~%string joint_uri~%string unit 		#if empy expects si units, you can use boost::unit~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointAccelerations>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poisonStamp))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'accelerations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointAccelerations>))
  "Converts a ROS message object to a list"
  (cl:list 'JointAccelerations
    (cl:cons ':poisonStamp (poisonStamp msg))
    (cl:cons ':accelerations (accelerations msg))
))
