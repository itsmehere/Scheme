;;; Flips a word using lambda

(define (backwards wd) (accumulate (lambda (a b) (word b a)) wd))