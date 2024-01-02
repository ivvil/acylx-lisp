;;;; aluminum.asd

(asdf:defsystem #:acylx-lisp
  :description "Port of my personal web page (acylx)"
  :author "Iván Villagrasa<ivvil412@gmail.com>"
  :license  "GPL V3"
  :version "0.0.1"
  :serial t
  :pathname "src"
  :depends-on (#:spinneret
			   #:parenscript
			   #:clack)
  :components ((:file "package")
			   (:file "acylx")))
