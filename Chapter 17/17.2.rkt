;;; Exercise 17.2

;;; Part 1
(define (f1 se1 se2)
  (list (list (cadr se1) (caddr se1) (car se2))))

;;; Part 2
(define (f2 se1 se2)
  (list (cdr se1) (cadr se2)))

;;; Part 3
(define (f3 se1 se2)
  (append se1 se1))

;;; Part 4
(define (f4 se1 se2)
  (list (list (car se1) (car se2)) (append (cdr se1) (cdr se2))))
