;;;Exercise 4.8

;Scientific Notation Coefficient

(define (sci-coe x)
  (if (or (and (> x 0) (< x 1)) (and (< x 0) (> x -1)))
      (sci-coe (* x 10))
      (if (>= x 10)
          (sci-coe (/ x 10))
          (if (<= x -10)
              (sci-coe (/ x 10))
              x))))

;Scientific Notation Exponent

(define (sci-exp x)
  (round (/ (log (/ x (sci-coe x))) (log 10))))



  