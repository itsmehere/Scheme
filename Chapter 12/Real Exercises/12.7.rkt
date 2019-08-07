;;; Exercise 12.7

(define (spell-number num)
  (if (equal? (count num) 1)
      (num-word num)
      (se (num-word (first num)) (spell-number (butfirst num)))))

(define (num-word num)
  (cond ((equal? num 1) 'ONE)
        ((equal? num 2) 'TWO)
        ((equal? num 3) 'THREE)
        ((equal? num 4) 'FOUR)
        ((equal? num 5) 'FIVE)
        ((equal? num 6) 'SIX)
        ((equal? num 7) 'SEVEN)
        ((equal? num 8) 'EIGHT)
        ((equal? num 9) 'NINE)
        (else (equal? num 0) 'ZERO)))