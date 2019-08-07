;;; Exercise 12.9

(define (real-word? sent)
  (if (empty? sent)
      '()
      (se (if (checkword (first sent)) (first sent) '()) (real-word? (bf sent)))))

(define (checkword wd)
  (not (member? wd '(a the an in of and for to with))))