(define (flatten lyst)
  (define (helper newlyst oldlyst)
    (if (null? oldlyst)
        newlyst
        (helper (append newlyst (if (list? (car oldlyst))
                                    (flatten (car oldlyst))
                                    (list (car oldlyst))))
                (cdr oldlyst))))
  (trace helper)
  (helper '() lyst))

(define (flatten2 lyst)
  (cond ((null? lyst) '())
        ((list? (car lyst)) (append (flatten2 (car lyst)) (flatten2 (cdr lyst))))
        (else (cons (car lyst) (flatten2 (cdr lyst))))))
                            