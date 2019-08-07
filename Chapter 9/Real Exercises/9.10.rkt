;;; Exercise 9.10

(define (appearances arg1 arg2)
  (count (keep (lambda (y) (equal? arg1 y)) arg2)))