;;; Factorial with iterative process

(define (factorial n)
  (define (init product x)
    (if (< x n)
        (init (* product (+ x 1)) (+ x 1))
        product))
  (init 1 1))