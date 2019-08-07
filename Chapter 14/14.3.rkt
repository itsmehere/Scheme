;;; Exercise 14.3

(define (remdup sent)
  (cond ((empty? sent) '())
        ((member? (first sent) (butfirst sent)) (remdup (bf sent)))
        (else (se (first sent) (remdup (bf sent))))))