;;; Exercise 9.9

(define (appearances sent1 sent2)
  (keep (lambda (x) (member? x sent2)) sent1))