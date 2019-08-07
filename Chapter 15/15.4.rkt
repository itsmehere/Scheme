;;; Exercise 15.4

(define (substring? wd1 wd2)
  (if (member? wd1 (substrings wd2)) #t #f))

(define (substrings wd)
  (if (empty? wd)
      ""
      (se (substrings-helper wd) (substrings (bf wd)))))

(define (substrings-helper wd)
  (if (equal? (count wd) 1)
      wd
      (se wd (substrings-helper (bl wd)))))