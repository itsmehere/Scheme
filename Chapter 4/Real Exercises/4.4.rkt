;;;Exercise 4.4

;a)
;ERROR: The body of this procedure has two expressions. Scheme
;will end up ignoring the first and will execute the second. This
;is why "(sphere-volume 3)" results in 27 instead of 113.097...

;FIXED CODE:
(define (sphere-volume r)
  (* (* (/ 4 3) 3.141592654)
  (* r r r)))

;b)
;ERROR: The expression in the body of this procedure is supposed
;to be in prefix notation. "(x + 1)" should be written as "(+ x 1)"
;or "(+ 1 x)"
(define (next x)
  (+ 1 x))

;c)
;ERROR: There is no parameter being passed and Scheme is trying to
;access an unknown x. Once we change "(square)" to "(square x),"
;we will have no error.
(define (square x)
  (* x x))

;d)
;ERROR: We are passing "triangle" as a parameter and are assuming
;that it is base and height. Scheme doesn't know this. We can
;change "(triangle-area triangle)" to "(triangle-area base height)"
(define (triangle-area base height)
  (* 0.5 base height))

;e)
;ERROR: It seems like we are trying to do a part of the procedure in
;the parameter field. Not only that but we are repeating the same
;thing once again in the body of the definition. We can fix the error
;by changing "(sum-of-squares (square x) (square y))" to
;"(sum-of-squares x y)"
(define (sum-of-squares x y)
  (+ (square x) (square y)))



