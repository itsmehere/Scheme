;;; Exercise 11.7

(define (copies num wd)
  (if (equal? num 1)
      wd
      (se wd (copies (- num 1) wd))))