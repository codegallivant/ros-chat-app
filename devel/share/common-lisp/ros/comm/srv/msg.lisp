; Auto-generated. Do not edit!


(cl:in-package comm-srv)


;//! \htmlinclude msg-request.msg.html

(cl:defclass <msg-request> (roslisp-msg-protocol:ros-message)
  ((msgtext
    :reader msgtext
    :initarg :msgtext
    :type cl:string
    :initform ""))
)

(cl:defclass msg-request (<msg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name comm-srv:<msg-request> is deprecated: use comm-srv:msg-request instead.")))

(cl:ensure-generic-function 'msgtext-val :lambda-list '(m))
(cl:defmethod msgtext-val ((m <msg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comm-srv:msgtext-val is deprecated.  Use comm-srv:msgtext instead.")
  (msgtext m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg-request>) ostream)
  "Serializes a message object of type '<msg-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msgtext))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msgtext))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg-request>) istream)
  "Deserializes a message object of type '<msg-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msgtext) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msgtext) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg-request>)))
  "Returns string type for a service object of type '<msg-request>"
  "comm/msgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg-request)))
  "Returns string type for a service object of type 'msg-request"
  "comm/msgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg-request>)))
  "Returns md5sum for a message object of type '<msg-request>"
  "92dbf11d0f5c2f55765d5af241617435")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg-request)))
  "Returns md5sum for a message object of type 'msg-request"
  "92dbf11d0f5c2f55765d5af241617435")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg-request>)))
  "Returns full string definition for message of type '<msg-request>"
  (cl:format cl:nil "string msgtext~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg-request)))
  "Returns full string definition for message of type 'msg-request"
  (cl:format cl:nil "string msgtext~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msgtext))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'msg-request
    (cl:cons ':msgtext (msgtext msg))
))
;//! \htmlinclude msg-response.msg.html

(cl:defclass <msg-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass msg-response (<msg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name comm-srv:<msg-response> is deprecated: use comm-srv:msg-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <msg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader comm-srv:status-val is deprecated.  Use comm-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg-response>) ostream)
  "Serializes a message object of type '<msg-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg-response>) istream)
  "Deserializes a message object of type '<msg-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg-response>)))
  "Returns string type for a service object of type '<msg-response>"
  "comm/msgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg-response)))
  "Returns string type for a service object of type 'msg-response"
  "comm/msgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg-response>)))
  "Returns md5sum for a message object of type '<msg-response>"
  "92dbf11d0f5c2f55765d5af241617435")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg-response)))
  "Returns md5sum for a message object of type 'msg-response"
  "92dbf11d0f5c2f55765d5af241617435")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg-response>)))
  "Returns full string definition for message of type '<msg-response>"
  (cl:format cl:nil "int64 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg-response)))
  "Returns full string definition for message of type 'msg-response"
  (cl:format cl:nil "int64 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'msg-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'msg)))
  'msg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'msg)))
  'msg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg)))
  "Returns string type for a service object of type '<msg>"
  "comm/msg")