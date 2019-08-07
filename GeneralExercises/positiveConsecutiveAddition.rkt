(define (consecutive x y)
  (define (consecutive_inner x y partial_sum)
    (if (< y 0)
        partial_sum
        (consecutive_inner x (- y 1) (+ partial_sum (+ x y)))))
  (consecutive_inner x y 0))