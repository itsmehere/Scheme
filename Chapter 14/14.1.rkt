;;; Exercise 14.1

(define (remove-once wd sent)
  (if (equal? (first sent) wd)
      (butfirst sent)
      (se (first sent) (remove-once wd (bf sent)))))