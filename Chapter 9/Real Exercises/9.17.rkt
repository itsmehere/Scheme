;;; Exercise 9.17

(define (keep1 func sent)
  (accumulate sent (every (lambda (x) (if (func x) x '())) sent)))