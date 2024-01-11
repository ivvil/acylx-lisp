;;;; css.lisp

(in-package #:acylx-lisp)

(defparameter *main-css*
  '(body
	:background-color "red"
	(ul
	 :list-style none
	 (li
	  :margin 0 :padding 0
	  :display inline-block))))
