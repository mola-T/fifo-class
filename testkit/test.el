(require 'fifo-class)

(defclass testclass (fifo-class)
  ((testlist
    :initform nil)))

(defvar my-object (make-instance 'testclass))



;; Testing push
(fifo-class-push my-object 'testlist 0)
(eieio-oref my-object 'testlist)
;; testlist = '(0)

(fifo-class-push my-object 'testlist 1)
(eieio-oref my-object 'testlist)
;; testlist = '(0 1)

(fifo-class-push my-object 'testlist 2)
(eieio-oref my-object 'testlist)
;; testlist = '(0 1 2)

(fifo-class-push my-object 'testlist 3)
(eieio-oref my-object 'testlist)
;; testlist = '(0 1 2 3)




;; Testing first

(fifo-class-first my-object 'testlist)
;; ==> 0
;; testlist = '(0 1 2 3)

(fifo-class-first my-object 'testlist)
;; ==> 0
;; testlist = '(0 1 2 3)





;; Testing pop

(setq a (fifo-class-pop my-object 'testlist))
(eieio-oref my-object 'testlist)
;; a = 0
;; testlist = '(1 2 3)

(setq b (fifo-class-pop my-object 'testlist))
(eieio-oref my-object 'testlist)
;; b = 1
;; testlist = '(2 3)

(setq c (fifo-class-pop my-object 'testlist))
(eieio-oref my-object 'testlist)
;; c = 2
;; testlist = '(3)

(setq d (fifo-class-pop my-object 'testlist))
(eieio-oref my-object 'testlist)
;; d = 3
;; testlist = nil

(setq e (fifo-class-pop my-object 'testlist))
(eieio-oref my-object 'testlist)
;; d = nil
;; testlist = nil
