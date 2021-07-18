;;;; ***********************************************************************
;;;; 
;;;; Name:          uri.lisp
;;;; Project:       URI utilities
;;;; Purpose:       function definitions
;;;; Author:        mikel evins
;;;; Copyright:     2021 by mikel evins
;;;;
;;;; ***********************************************************************

(in-package #:net.bardcode.uri)

(defmethod uri->pathname ((uri quri:uri-file))
  (pathname (quri:uri-path uri)))

(defmethod uri->pathname ((uri string))
  (uri->pathname (string->uri uri)))

(defmethod uri->string ((uri quri:uri))
  (format nil "~A" uri))

(defmethod string->uri ((s string))
  (multiple-value-bind (scheme userinfo host port path query fragment)(quri:parse-uri s)
      (quri:make-uri :scheme scheme :userinfo userinfo :host host
                     :port port :path path :query query :fragment fragment)))

(defmethod pathname->uri ((path pathname))
  (quri:make-uri :scheme "file" :path path))

(defmethod pathname->uri-string ((path pathname))
  (uri->string (pathname->uri path)))
