;;; letter pairs

(define (letter-pairs wd)
  (if (<= (count wd) 1)
      '()
      (se (first-two wd) (letter-pairs (butfirst wd)))))

(define (first-two wd)
  (word (first wd) (first (butfirst wd))))