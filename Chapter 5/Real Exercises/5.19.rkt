;;; Exercise 5.19

(define (insert-and sent)
  (se (butlast sent) 'and (last sent)))