;;;Exercise 4.10

;Tip

(define (tip x)
  (/ (ceiling(* 1000 (- (ceiling (+ (* 0.15 x) x))x))) 1000))