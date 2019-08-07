;;; Exercise 23.2

(define (vector-fill! v anything)
  (vector-fill-helper v anything 0))

(define (vector-fill-helper v anything index)
  (if (equal? index (vector-length v))
      v
      (begin (vector-set! v index anything) (vector-fill-helper v anything (+ index 1)))))