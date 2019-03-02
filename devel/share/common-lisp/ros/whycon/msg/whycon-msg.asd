
(cl:in-package :asdf)

(defsystem "whycon-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Projection" :depends-on ("_package_Projection"))
    (:file "_package_Projection" :depends-on ("_package"))
  ))