;;; Exercise 17.8

(define (member x lst)
  (if (null? lst)
      #f
      (if (equal? x (car lst)) #t (member x (cdr lst)))))