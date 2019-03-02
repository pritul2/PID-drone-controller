; Auto-generated. Do not edit!


(cl:in-package brics_actuator-msg)


;//! \htmlinclude JointPositions.msg.html

(cl:defclass <JointPositions> (roslisp-msg-protocol:ros-message)
  ((poisonStamp
    :reader poisonStamp
    :initarg :poisonStamp
    :type brics_actuator-msg:Poison
    :initform (cl:make-instance 'brics_actuator-msg:Poison))
   (positions
    :reader positions
    :initarg :positions
    :type (cl:vector brics_actuator-msg:JointValue)
   :initform (cl:make-array 0 :element-type 'brics_actuator-msg:JointValue :initial-element (cl:make-instance 'brics_actuator-msg:JointValue))))
)

(cl:defclass JointPositions (<JointPositions>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointPositions>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointPositions)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name brics_actuator-msg:<JointPositions> is deprecated: use brics_actuator-msg:JointPositions instead.")))

(cl:ensure-generic-function 'poisonStamp-val :lambda-list '(m))
(cl:defmethod poisonStamp-val ((m <JointPositions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:poisonStamp-val is deprecated.  Use brics_actuator-msg:poisonStamp instead.")
  (poisonStamp m))

(cl:ensure-generic-function 'positions-val :lambda-list '(m))
(cl:defmethod positions-val ((m <JointPositions>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader brics_actuator-msg:positions-val is deprecated.  Use brics_actuator-msg:positions instead.")
  (positions m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointPositions>) ostream)
  "Serializes a message object of type '<JointPositions>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'poisonStamp) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'positions))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'positions))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointPositions>) istream)
  "Deserializes a message object of type '<JointPositions>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'poisonStamp) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'positions) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'positions)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'brics_actuator-msg:JointValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointPositions>)))
  "Returns string type for a message object of type '<JointPositions>"
  "brics_actuator/JointPositions")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointPositions)))
  "Returns string type for a message object of type 'JointPositions"
  "brics_actuator/JointPositions")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointPositions>)))
  "Returns md5sum for a message object of type '<JointPositions>"
  "2b7638f5c85f5257bef140a00cd0eec3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointPositions)))
  "Returns md5sum for a message object of type 'JointPositions"
  "2b7638f5c85f5257bef140a00cd0eec3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointPositions>)))
  "Returns full string definition for message of type '<JointPositions>"
  (cl:format cl:nil "Poison poisonStamp~%JointValue[] positions~%~%================================================================================~%MSG: brics_actuator/Poison~%string originator 		# node id~%string description 		# encoding still an issue~%float32 qos			# reliability of the channel~%				# 0..1 where 1 means healthy~%~%================================================================================~%MSG: brics_actuator/JointValue~%time timeStamp 		#time of the data ~%string joint_uri~%string unit 		#if empy expects si units, you can use boost::unit~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointPositions)))
  "Returns full string definition for message of type 'JointPositions"
  (cl:format cl:nil "Poison poisonStamp~%JointValue[] positions~%~%================================================================================~%MSG: brics_actuator/Poison~%string originator 		# node id~%string description 		# encoding still an issue~%float32 qos			# reliability of the channel~%				# 0..1 where 1 means healthy~%~%================================================================================~%MSG: brics_actuator/JointValue~%time timeStamp 		#time of the data ~%string joint_uri~%string unit 		#if empy expects si units, you can use boost::unit~%float64 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointPositions>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'poisonStamp))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'positions) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointPositions>))
  "Converts a ROS message object to a list"
  (cl:list 'JointPositions
    (cl:cons ':poisonStamp (poisonStamp msg))
    (cl:cons ':positions (positions msg))
))
