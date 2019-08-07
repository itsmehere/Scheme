;;; Exercise 8.10

(define (true-for-all? pred sent)
  (if (equal? (count (keep pred sent)) (count sent))
      #t
      #f))