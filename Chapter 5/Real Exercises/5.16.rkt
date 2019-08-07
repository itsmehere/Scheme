;;; Exercise 5.16

;;Part 1

(define (two-first wd1 wd2)
  (word (first wd1) (first wd2)))

;;Part 2

(define (two-first-sent sent)
  (word (first (first sent)) (first (last sent))))