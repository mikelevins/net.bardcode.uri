;;;; net.bardcode.uri.asd

(asdf:defsystem #:net.bardcode.uri
  :description "Describe net.bardcode.uri here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (:quri)
  :components ((:file "package")
               (:file "uri")))

;;; (ql:quickload :net.bardcode.uri)
