;;; Exercise 23.6

(define (vector-map func vec)
  (vector-map-helper func vec 0))

(define (vector-map-helper func vec index)
  (if (equal? index (vector-length vec))
      vec
      (begin (vector-set! vec index (func (vector-ref vec index))) (vector-map-helper func vec (+ index 1)))))
