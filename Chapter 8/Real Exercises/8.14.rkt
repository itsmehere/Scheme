;;; Exercise 8.14

(define (subword wd x1 x2)
  ((repeated butlast (- (count wd) x2)) ((repeated butfirst (- x1 1)) wd)))