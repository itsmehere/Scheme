;;; Exericse 17.10

(define (length lst)
  (if (null? lst)
      0
      (+ 1 (length (cdr lst)))))