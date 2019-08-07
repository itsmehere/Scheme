;;; Exercise 5.21

(define (query sent)
  (se (first (butfirst sent))
      (first sent)
      (butlast (butfirst (butfirst sent)))
      (word (last (butfirst (butfirst sent))) '?)))
