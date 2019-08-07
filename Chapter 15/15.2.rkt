;;; Exercise 15.2

(define (palindrome? sent)
  (helper (accumulate word sent)))

(define (helper sent)
  (cond ((<= (count sent) 1) #t)
        ((equal? (first sent) (last sent)) (helper (bl (bf sent))))
        (else #f)))