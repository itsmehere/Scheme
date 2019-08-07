;;; Exercise 8.8

(define (exaggerate sent)
  (every exag-help sent))

(define (exag-help wd)
  (cond ((number? wd) (word (* wd 2)))
        ((equal? wd 'good) 'great)
        ((equal? wd 'bad) 'terrible)
        (else wd)))
