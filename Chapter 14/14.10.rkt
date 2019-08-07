;;; Exercise 14.10

(define (count-adjacent-duplicates sent)
  (cond ((<= (count sent) 1) 0)
        ((equal? (first sent) (first (bf sent))) (+ 1 (count-adjacent-duplicates (bf sent))))
        (else (count-adjacent-duplicates (bf sent)))))