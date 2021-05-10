;;;; helloworld.asd

#+sb-core-compression
(defmethod asdf:perform ((o asdf:image-op) (c asdf:system))
  (uiop:dump-image (asdf:output-file o c) :executable t :compression t))

(asdf:defsystem #:helloworld
  :description "Describe helloworld here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :build-operation "program-op"
  :build-pathname "helloworld"
  :entry-point "helloworld:main"
  :depends-on (#:rutilsx #:bordeaux-threads #:cl-ppcre)
  :components ((:file "package")
               (:file "helloworld" :depends-on ("package"))))
