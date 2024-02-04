;; Auto-generated. Do not edit!


(when (boundp 'comm::msg)
  (if (not (find-package "COMM"))
    (make-package "COMM"))
  (shadow 'msg (find-package "COMM")))
(unless (find-package "COMM::MSG")
  (make-package "COMM::MSG"))
(unless (find-package "COMM::MSGREQUEST")
  (make-package "COMM::MSGREQUEST"))
(unless (find-package "COMM::MSGRESPONSE")
  (make-package "COMM::MSGRESPONSE"))

(in-package "ROS")





(defclass comm::msgRequest
  :super ros::object
  :slots (_msgtext ))

(defmethod comm::msgRequest
  (:init
   (&key
    ((:msgtext __msgtext) "")
    )
   (send-super :init)
   (setq _msgtext (string __msgtext))
   self)
  (:msgtext
   (&optional __msgtext)
   (if __msgtext (setq _msgtext __msgtext)) _msgtext)
  (:serialization-length
   ()
   (+
    ;; string _msgtext
    4 (length _msgtext)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msgtext
       (write-long (length _msgtext) s) (princ _msgtext s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msgtext
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msgtext (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass comm::msgResponse
  :super ros::object
  :slots (_status ))

(defmethod comm::msgResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; int64 _status
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _status) (= (length (_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_status . bv) 0) 0) s)
              (write-long (ash (elt (_status . bv) 1) -1) s))
             ((and (class _status) (= (length (_status . bv)) 1)) ;; big1
              (write-long (elt (_status . bv) 0) s)
              (write-long (if (>= _status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _status s)(write-long (if (>= _status 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _status
#+(or :alpha :irix6 :x86_64)
      (setf _status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass comm::msg
  :super ros::object
  :slots ())

(setf (get comm::msg :md5sum-) "92dbf11d0f5c2f55765d5af241617435")
(setf (get comm::msg :datatype-) "comm/msg")
(setf (get comm::msg :request) comm::msgRequest)
(setf (get comm::msg :response) comm::msgResponse)

(defmethod comm::msgRequest
  (:response () (instance comm::msgResponse :init)))

(setf (get comm::msgRequest :md5sum-) "92dbf11d0f5c2f55765d5af241617435")
(setf (get comm::msgRequest :datatype-) "comm/msgRequest")
(setf (get comm::msgRequest :definition-)
      "string msgtext
---
int64 status
")

(setf (get comm::msgResponse :md5sum-) "92dbf11d0f5c2f55765d5af241617435")
(setf (get comm::msgResponse :datatype-) "comm/msgResponse")
(setf (get comm::msgResponse :definition-)
      "string msgtext
---
int64 status
")



(provide :comm/msg "92dbf11d0f5c2f55765d5af241617435")


