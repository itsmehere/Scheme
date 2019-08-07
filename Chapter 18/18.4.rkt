;;; Exercise 18.4

(define (leaf? tree)
  (null? (children tree)))

(define (count-nodes tree)
  (if (null? tree)
      0
      (count-nodes-helper (children tree))))

(define (count-nodes-helper tree)
  (if (null? tree)
      1
      (+ (count-nodes (car tree)) (count-nodes-helper (cdr tree)))))