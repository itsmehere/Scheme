;;; Exercise 9.6

; Using lambda
(define (sentence-version func)
  (lambda (sent) (every func sent)))

; Without lambda
(define (sentence-version2 func sent)
  (every func sent))