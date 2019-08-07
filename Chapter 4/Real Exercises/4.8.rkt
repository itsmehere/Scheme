;;;Exercise 4.8

;Scientific Notation:

(define (scientific x y)
  (if (equal? 0 y)
      x
    (if (positive? y)  
      (scientific (* 10 x) (- y 1))
      (scientific (* (/ 1 10) x) (+ 1 y)))))