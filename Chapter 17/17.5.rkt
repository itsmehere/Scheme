;;; Exercise 17.5

(define (max2 a b)
  (if (> b a) b a))

(define (max number1 . rest-of-arguments)
  (if (null? rest-of-arguments)
      number1
      (apply max (cons (max2 number1 (car rest-of-arguments)) (cdr rest-of-arguments)))))