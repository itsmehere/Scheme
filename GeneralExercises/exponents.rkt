;;Exponents

(define (exp x y)
  (h_exp x y x))
(define (h_exp x y z)
  (if (= y 1)
      z
      (h_exp x (- y 1) (* z x))))