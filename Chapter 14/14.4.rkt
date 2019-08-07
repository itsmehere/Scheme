;;; Exercise 14.4

(define (odds sent)
  (cond ((empty? sent) '())
        ((<= (count sent) 2) (first sent))
        (else (se (first sent) (odds (bf (bf sent)))))))