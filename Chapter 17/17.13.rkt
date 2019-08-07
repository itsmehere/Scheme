;;; Exercise 17.13

(define (deep-count lst)
  (cond ((null? lst) 0)
        ((word? lst) 1)
        (else (reduce + (map (lambda (x) (deep-count x)) lst)))))