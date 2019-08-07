;;; Exercise 23.1

(define (sum-vector v)
  (sum-vector-helper v 0))

(define (sum-vector-helper v index)
  (if (equal? index (vector-length v))
      0
      (+ (vector-ref v index) (sum-vector-helper v (+ index 1)))))