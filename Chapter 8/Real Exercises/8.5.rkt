;;; Exercise 8.5

(define beatles '(John Paul Ringo George))

(define (amazify name)
  (word 'the-amazing- name))

(define (transform-beatles func)
  (every func beatles))
