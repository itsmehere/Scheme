;;; Exercise 9.8

(define (hang wd guesses)
  (accumulate word (every (lambda (x) (hang-letter x guesses)) wd)))

(define (hang-letter letter guesses)
  (if (member? letter guesses)
      letter
      '_))