#|
  This file is a part of dexador project.
  Copyright (c) 2015 Eitaro Fukamachi (e.arrows@gmail.com)
|#

(defsystem "dexador-test"
  :author "Eitaro Fukamachi"
  :license "MIT"
  :depends-on ("dexador"
               "rove"
               "lack-request"
               "clack-test"
               "babel"
               "cl-cookie")
  :components ((:module "t"
                :components
                ((:file "dexador"))))
  ;; Fail the test-op on a failing test, so CI (cl-repo test) goes red.
  :perform (test-op (op c)
             (unless (symbol-call '#:rove '#:run c)
               (error "dexador-test failed"))))
