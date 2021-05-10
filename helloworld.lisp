;;;; helloworld.lisp

(in-package #:helloworld)
(named-readtables:in-readtable rutils.readtable:rutils-readtable)


(defun start-server ()
  (format t "Press any key to exit...~%")
  (read-char))

(defun main ()
  ;; (format t "~A~%~A~%" (split #\, "1,2,3,4,5") (cl-ppcre:split #/\d{1}/# "1jk2j3jk5"))
  (handler-case
      (start-server)
    (sb-sys:interactive-interrupt () (progn
                                       (format *error-output* "Abort.~&")
                                       (uiop:quit)))))

