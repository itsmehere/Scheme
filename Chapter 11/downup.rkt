;;; Downup written using recursion

(define (downup wd)
  (if (equal? (count wd) 1)
      (se wd)
      (se wd (downup (bl wd)) wd)))