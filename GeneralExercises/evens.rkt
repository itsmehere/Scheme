;;; Prints the even items in a sentence

(define (evens sent)
  (if (<= (count sent) 1)
      '()
      (se (first (butfirst sent)) (evens (bf (bf sent))))))