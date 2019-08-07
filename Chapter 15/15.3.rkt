;;; Exercise 15.3

(define (substrings wd)
  (if (empty? wd)
      ""
      (se (substrings-helper wd) (substrings (bf wd)))))

(define (substrings-helper wd)
  (if (equal? (count wd) 1)
      wd
      (se wd (substrings-helper (bl wd)))))