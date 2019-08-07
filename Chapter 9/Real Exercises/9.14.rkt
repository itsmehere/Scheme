;;; Exercise 9.14

(define (substitute word1 word2 sent)
  (every (lambda (x) (if (equal? x word2) word1 x)) sent))