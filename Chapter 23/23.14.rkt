;;; Exericse 23.14

(define (make-matrix x y)
  (make-matrix-helper x y (make-vector x) 0))

(define (make-matrix-helper x y newvect index)
  (if (equal? index (vector-length newvect))
      newvect
      (begin (vector-set! newvect index (make-vector y)) (make-matrix-helper x y newvect (+ index 1)))))

(define (matrix-set! m x y val)
  (matrix-set!-helper m x y val 0))

(define (matrix-set!-helper m x y val index)
  (let ((vect (vector-ref m x)))
    (if (equal? index y)
        (vector-set! vect index val)
        (matrix-set!-helper m x y val (+ index 1)))))

(define (matrix-ref m x y)
  (matrix-ref-helper m x y 0))

(define (matrix-ref-helper m x y index)
  (let ((vect (vector-ref m x)))
    (if (equal? index y)
        (show (vector-ref vect index))
        (matrix-ref-helper m x y (+ index 1)))))
  
  