;;; Exercise 9.2

; Part a without lambda

(define (second stuff)
  (first (bf stuff)))

; Part a with explicit lambda
(define second (lambda (stuff) (first (bf stuff))))

; Part b without lambda

(define (make-adder num)
  (lambda (x) (+ num x)))

; Part b with explicit lambda

(define (make-adder) (lambda (num x) (+ x num)))