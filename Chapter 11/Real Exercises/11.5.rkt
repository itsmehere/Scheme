;;; Exercise 11.5

(define (initials sent)
  (if (equal? (count sent) 1)
      (first (first sent))
      (se (first (first sent)) (initials (butfirst sent)))))