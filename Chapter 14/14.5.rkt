;;; Exercise 14.5

(define (letter-count sent)
  (if (empty? sent)
      0
      (+ (count (first sent)) (letter-count (bf sent)))))