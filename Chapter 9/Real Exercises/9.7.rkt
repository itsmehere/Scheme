;;; Exercise 9.6

;;; Method 1: using keep
(define (letterwords letter sent)
  (keep (lambda (x) (member? letter x)) sent))

;;; Method 2: using every
(define (letterwords2 letter sent)
  (every (lambda (x) (if (member? letter x) x '())) sent))
