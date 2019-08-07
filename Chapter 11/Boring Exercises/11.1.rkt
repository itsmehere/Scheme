;;; Exercise 11.1

(define (downup4 wd)
  (se wd (bl wd) (bl (bl wd)) (first wd) (bl (bl wd)) (bl wd) wd))