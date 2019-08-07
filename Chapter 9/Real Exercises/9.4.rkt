(define (who sent)
  (every (lambda (x) (se x sent)) '(pete roger john keith)))