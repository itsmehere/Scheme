(define (delete-first sent)
  (if (empty? sent)
      '()
      (se (butfirst (first sent)) (delete-first (bf sent)))))

(define (int-sqrts sent)
  (if (empty? sent)
      '()
      (se (if (integer? (sqrt (first sent))) (first sent) '()) (int-sqrts (bf sent)))))

(define (acc-word sent)
  (if (<= (count sent) 1)
      (first sent)
      (word (first sent) (acc-word (bf sent)))))