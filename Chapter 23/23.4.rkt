;;; Exercise 23.4

(define (vector->list v)
  (vector-list-helper v 0))

(define (vector-list-helper v index)
  (if (equal? index (vector-length v))
      '()
      (every append (list (vector-ref v index) (vector-list-helper v (+ 1 index))))))