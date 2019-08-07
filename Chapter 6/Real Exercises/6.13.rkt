;;; Exercise 6.13

(define (greet sent)
  (cond ((member? 'professor sent) (se 'professor (last sent)))
        ((member? 'dr sent) (cond ((equal? (last sent) 'jr) (se '(Hello Dr) (last (butlast sent))))
                                  (else (se '(Hello Dr) (last sent)))))
        ((member? 'queen sent) '(Hello your Majesty))
        (else (se 'Hello (first sent)))))