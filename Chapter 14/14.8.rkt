;;; Exercise 14.8

(define (expand sent)
  (cond ((empty? sent) '())
        ((number? (first sent)) (se (multiply (first sent) (first (bf sent))) (expand (bf (bf sent)))))
        (else (se (first sent) (expand (bf sent))))))

(define (multiply x wd)
  (if (equal? x 0)
      '()
      (se wd (multiply (- x 1) wd))))
        