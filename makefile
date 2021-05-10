LISP ?= sbcl

build:
	$(LISP) --load helloworld.asd \
			--eval '(ql:quickload :helloworld)' \
			--eval '(asdf:make :helloworld)' \
			--eval '(quit)'

