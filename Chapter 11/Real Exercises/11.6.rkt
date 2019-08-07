;;; Exercise 11.6

(define (countdown num)
  (if (equal? num 0)
      'BLASTOFF!
      (se num (countdown (- num 1)))))