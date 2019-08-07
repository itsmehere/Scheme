;;; Exercise 17.9

(define (list-ref lst num)
  (cond ((null? lst) #f)
        ((equal? num 0) (car lst))
        (else (list-ref (cdr lst) (- num 1)))))
