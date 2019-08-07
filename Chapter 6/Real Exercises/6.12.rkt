;;; Exercise 6.12

(define (plural wd)
  (cond ((and (member? (last (butlast wd)) 'aeiou) (equal? (last wd) 'y)) (word wd 's))
        ((equal? (last wd) 'y) (word (bl wd) 'ies))
        ((equal? (last wd) 'x) (word wd 'es))
        (else (word wd 's))))



