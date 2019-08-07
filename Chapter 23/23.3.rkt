;;; Exercise 23.3

(define (vector-append v1 v2)
  (if (empty? v1)
      v2
      (vector-append-helper v1 v2 0)))

(define (vector-append-helper v1 v2 index)
  (if (equal? index (vector-length v2))
      v1
      (vector-append-helper (vector-add v1 (vector-ref v2 index)) v2 (+ 1 index))))

(define (vector-add v1 val)
  (apply vector (makevect (vector->list v1) val)))

(define (makevect lst val)
  (append lst (cons val '())))