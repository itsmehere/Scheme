;;; Exercise 17.11

(define (before-in-list? lst wd1 wd2)
  (cond ((null? lst) #f)
        ((equal? (car lst) wd1) (member? wd2 lst))
        (else (before-in-list? (cdr lst) wd1 wd2))))