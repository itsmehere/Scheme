(define (prepend-every letter sent)
  (every (lambda (x) (word letter x)) sent))