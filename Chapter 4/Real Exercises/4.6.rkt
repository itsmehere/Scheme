;;;Exercise 4.6

;Multiplication method:
(define (fourthM x)
  (* x x x x))

;Square method:
(define (fourthS x)
  (square (square x)))

(define (square x)
  (* x x))
