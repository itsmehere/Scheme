;;; Exercise 9.16

(define (aplize f)
  (lambda (n) (if (sentence? n) (every f n) (f n))))