;;;Exercise 4.5

;Fahrenheit to Celcius
(define (FtoC f)
  (* 5/9 (- f 32)))

;Celcius to Fahrenheit
(define (CtoF c)
  (+ 32 (* 9/5 c)))