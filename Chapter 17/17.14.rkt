;;; Exercise 17.14

(define (branch numlst lst)
  (cond ((null? numlst) lst)
        ((> (car numlst) (length lst)) #f)
        (else (branch (cdr numlst) (branch-helper (car numlst) lst)))))

(define (branch-helper num lst)
  (if (equal? num 1)
      (car lst)
      (branch-helper (- num 1) (cdr lst))))