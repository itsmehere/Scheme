;;; Exercise 18.3

(define (leaf? tree)
  (null? (children tree)))

(define (depth tree)
  (if (leaf? tree)
      1
      (find-depth tree 1)))

(define (find-depth tree d)
  (apply max (cons d (find-depth-helper (children tree) (+ 1 d)))))

(define (find-depth-helper tree d)
  (if (null? tree)
      '()
      (cons (find-depth (car tree) d) (find-depth-helper (cdr tree) d))))