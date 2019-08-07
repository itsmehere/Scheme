;;; Exercise 5.17

(define (uppercase x)
  (if (uppercase? (first x))
      #t
      (if (and (equal? (butfirst x) (last x)) (not (uppercase? (last x))))
          #f
          (uppercase (butfirst x)))))

(define (uppercase? x)
  (if (member? x 'ABCDEFGHIJKLMNOPQRSTUVWXYZ)
      #t
      #f))