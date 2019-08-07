;;; Exercise 12.5

(define (exaggerate sent)
  (if (empty? sent)
      '()
      (se (change (first sent)) (exaggerate (butfirst sent)))))

(define (change wd)
  (cond ((number? wd) (* wd 2))
        ((equal? wd 'good) 'great)
        ((equal? wd 'bad) 'terrible)
        (else wd)))

