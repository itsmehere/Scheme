;;; Exercise 14.2

(define (up wd)
  (if (empty? wd)
      '()
      (se (up (bl wd)) wd)))