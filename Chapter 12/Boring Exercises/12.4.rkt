;;; Exercise 12.4

(define (f sent)
  (if (empty? sent)
      sent
      (se (f (bf sent)) (first sent))))