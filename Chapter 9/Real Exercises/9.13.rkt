;;; Exercise 9.13

(define (compose func1 func2)
  (lambda (x) (func1 (func2 x))))