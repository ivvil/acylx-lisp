;;;; acylx.lisp

(in-package #:acylx-lisp)

(defun acylx-head (title)
  (spinneret:with-html
	(:title title)
	;; (:link :rel "icon" :type "image/x-icon" :href "/assets/favicon.png")
	;; (:meta :name "viewport" :content "width=device-width, initial-scale=1.0")
	))

(defun acylx-background ()
  
  )

(defmacro display-page (&body body)
  `(spinneret:with-html-string
	 (:doctype)
	 (:html
	  (:head
	   (acylx-head "SHFT.dev")
	   (:style (lass:compile-and-write *main-css*)))
	  (:body
	   ,@body))))

(with-open-file (str "test.html"
                     :direction :output
                     :if-exists :supersede
                     :if-does-not-exist :create)
  (format str (display-page
				(:h1 "hello world"))))
