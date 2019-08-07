;;; Decimal to Binary

(define (binary num)
  (cond ((equal? num 1) 1)
        (else (accumulate word (se (binary (quotient num 2)) (remainder num 2))))))