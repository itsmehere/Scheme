;;; Exercise 8.4

(define beatles '(John Paul Ringo George))

(define (vowel? x)
  (member? x 'aeiou))

(define (ends-vowel? wd)
  (if (vowel? (last wd)) wd '()))

(define (even-count? wd)
  (if (even? (count wd)) wd '()))

(define (choose-beatles func)
  (every func beatles))