;;; Length of a string

(define (strlen x)
  (if (empty? x)
      0
      (if (word? x)
          (+ 1 (strlen (butfirst x)))
          (strlen (accumulate word x)))))
      
          