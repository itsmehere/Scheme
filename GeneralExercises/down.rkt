;;; Half of the downup procedure

(define (down wd)
  (if (empty? wd)
      '()
      (se wd (down (butlast wd)))))