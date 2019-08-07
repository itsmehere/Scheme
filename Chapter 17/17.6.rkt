;;; Exercise 17.6

;;; Two arguments
(define (append1 se1 se2)
  (if (null? se1)
      se2
      (cons (car se1) (append1 (cdr se1) se2))))

;;; Any number of arguments
(define (append2 se1 . rest-of-arguments)
  (if (null? rest-of-arguments)
      se1
      (apply append2 (cons (append1 se1 (car rest-of-arguments)) (cdr rest-of-arguments)))))