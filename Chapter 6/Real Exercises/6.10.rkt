;;; Exercise 6.10

(define (sort2 sent)
  (if (< (first sent) (last sent))
      (se (first sent) (last sent))
      (se (last sent) (first sent))))