;;; Exercise 6.3

(define (sign number)
  (cond ((< number 0) 'negative)
        ((= number 0) 'zero)
        ((> number 0) 'positive)))