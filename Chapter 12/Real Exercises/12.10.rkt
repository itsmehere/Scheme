;;; Exercise 12.10

(define (remove wd sent)
  (if (empty? sent)
      '()
      (se (if (equal? (first sent) wd) '() (first sent)) (remove wd (butfirst sent)))))