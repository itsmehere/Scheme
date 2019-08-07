;;; Exercise 17.12

(define (flatten lst)
  (if (null? lst)
      '()
      (if (word? lst)
          lst
          (reduce se (map (lambda (x) (flatten x)) lst)))))