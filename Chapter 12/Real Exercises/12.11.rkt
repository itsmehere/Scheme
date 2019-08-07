;;; Exercise 12.11 - count

(define (count phrase)
  (if (empty? phrase)
      0
      (+ 1 (count (butfirst phrase)))))