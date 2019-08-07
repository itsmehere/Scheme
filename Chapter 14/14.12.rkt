;;; Exercise 14.12

(define (progressive-squares? sent)
  (cond ((equal? (count sent) 1) #t)
        ((equal? (square (first sent)) (first (bf sent))) (progressive-squares? (bf sent)))
        (else #f)))
  
(define (square x)
  (* x x))