;; Auto-generated. Do not edit!


(when (boundp 'lab_msgs::Speed)
  (if (not (find-package "LAB_MSGS"))
    (make-package "LAB_MSGS"))
  (shadow 'Speed (find-package "LAB_MSGS")))
(unless (find-package "LAB_MSGS::SPEED")
  (make-package "LAB_MSGS::SPEED"))

(in-package "ROS")
;;//! \htmlinclude Speed.msg.html


(defclass lab_msgs::Speed
  :super ros::object
  :slots (_data ))

(defmethod lab_msgs::Speed
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lab_msgs::Speed :md5sum-) "73fcbf46b49191e672908e50842a83d4")
(setf (get lab_msgs::Speed :datatype-) "lab_msgs/Speed")
(setf (get lab_msgs::Speed :definition-)
      "float32 data

")



(provide :lab_msgs/Speed "73fcbf46b49191e672908e50842a83d4")


