;;; Exercise 8.12

(define (count-ums sent)
  (count (keep um? sent)))

(define (um? x)
  (if (equal? x 'um) #t #f))