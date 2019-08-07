;;; Exercise 14.11

(define (remove-adjacent-duplicates sent)
  (cond ((<= (count sent) 1) sent)
        ((equal? (first sent) (first (bf sent))) (se '() (remove-adjacent-duplicates (bf sent))))
        (else (se (first sent) (remove-adjacent-duplicates (bf sent))))))