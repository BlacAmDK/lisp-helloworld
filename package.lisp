;;;; package.lisp

(defpackage #:helloworld
  (:use #:cl #:rutilsx #:bordeaux-threads #:cl-ppcre)
  (:shadowing-import-from #:cl-ppcre :split)
  (:export #:main))
