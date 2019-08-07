;;; Count-ums written recursively

(define (count-ums sent)
  (if (empty? sent)
      0
      (if (equal? (first sent) 'um)
          (+ 1 (count-ums (butfirst sent)))
          (count-ums (butfirst sent)))))