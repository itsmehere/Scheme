;;; Exercise 12.7

(define (numbers sent)
  (if (empty? sent)
      '()
      (se (if (number? (first sent)) (first sent) '()) (numbers (butfirst sent)))))