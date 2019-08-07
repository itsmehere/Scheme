;;; Explode word

(define (explode wd)
  (if (empty? wd)
      '()
      (se (first wd) (explode (butfirst wd)))))