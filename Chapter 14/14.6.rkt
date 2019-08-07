;;; Exercise 14.6

(define (member? x y)
  (cond ((empty? y) #f)
        ((equal? (first y) x) #t)
        (else (member? x (bf y)))))