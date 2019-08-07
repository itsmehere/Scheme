;;; Exercise 6.7

(define (type-of x)
  (cond ((number? x) (cond ((positive? x) '(positive number))
                           ((negative? x) '(negative number))
                           (else 'number)))
        ((boolean? x) 'boolean)
        ((sentence? x) 'sentence)
        (else (word? x) 'word)))
        