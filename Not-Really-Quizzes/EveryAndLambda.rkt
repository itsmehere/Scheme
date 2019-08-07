;;; Every and Lambda not really a quiz

(define (special-order adjectives foods)
  (every (lambda (x) (every (lambda (y) (se y x)) adjectives)) foods))