;;; Exercise 8.13

(define (phone-unspell wd)
  (accumulate word (every letter-digit wd)))

(define (letter-digit x)
  (cond ((or (equal? x 'A) (equal? x 'B) (equal? x 'C)) 2)
        ((or (equal? x 'D) (equal? x 'E) (equal? x 'F)) 3)
        ((or (equal? x 'G) (equal? x 'H) (equal? x 'I)) 4)
        ((or (equal? x 'J) (equal? x 'K) (equal? x 'L)) 5)
        ((or (equal? x 'M) (equal? x 'N) (equal? x 'O)) 6)
        ((or (equal? x 'P) (equal? x 'Q) (equal? x 'R) (equal? x 'S)) 7)
        ((or (equal? x 'T) (equal? x 'U) (equal? x 'V)) 8)
        (else (or (equal? x 'W) (equal? x 'X) (equal? x 'Y) (equal? x 'Z)) 9)))