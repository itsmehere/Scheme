;;; 14.7

(define (differences sent)
  (if (= (count sent) 1)
      '()
      (se (- (first (bf sent)) (first sent)) (differences (bf sent)))))