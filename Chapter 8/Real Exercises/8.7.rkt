;;; Exercise 8.7

(define (letter-count sent)
  (accumulate + (every count sent)))