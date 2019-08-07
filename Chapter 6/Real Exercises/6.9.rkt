;;; Exercise 6.9

(define (thismany x wd)
  (if (> x 1)
      (se x (word wd 's))
      (se x wd)))