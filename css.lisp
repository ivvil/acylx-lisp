;;;; css.lisp

(in-package #:acylx-lisp)

(defparameter *main-css*
  '(body
	:background-color "red"
	:font-family "Starbirl"))

;; @font-face {
;; 	font-family: "Starbirl";
;; 	src: url(assets/fonts/Starbirl.otf);
;; }

(defparameter *font-css*
  '(:font-face))

(defun cut-string-at-dot (input-string)
  (if (position #\. input-string)
      (subseq input-string 0 (position #\. input-string))
      input-string))

(defparameter *font-dir* #P"assets/fonts/")

;; (defun get-fonts (path)
;;   (dolist (file (uiop:directory-files path))
;; 	(let ((name (cut-string-at-dot (file-namestring file))))
;; 	  (add-font file name))))

;; (defun get-fonts (path)
;;   (loop for file in (uiop:directory-files path) collect (let ((name (cut-string-at-dot (file-namestring file))))
;; 																			  (lass:compile-and-write (add-font file name)))))

(defun get-fonts (path) "Gets all font declarations for a given folder"
  (loop for file in (uiop:directory-files path) collect (let ((name (cut-string-at-dot (file-namestring file)))) (add-font file name))))

;; TODO Return lass code instead of css
;; TODO Return a string instead of an array of string
;; TODO Use local paths instead of global paths

(defun add-font (path name)
  `(:font-face :font-family ,name :src (url ,(lass:resolve (namestring path)))))


