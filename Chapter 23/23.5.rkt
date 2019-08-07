;;; Exercise 23.5

(define (vector-map func vec)
  (vector-map-helper func vec (make-vector (vector-length vec)) 0))

(define (vector-map-helper func vec newvec index)
  (if (equal? index (vector-length vec))
      newvec
      (begin (vector-set! newvec index (func (vector-ref vec index))) (vector-map-helper func vec newvec (+ index 1)))))