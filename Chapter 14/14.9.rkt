;;; Exercise 14.9

(define (location wd sent)
  (cond ((or (empty? sent) (not (member? wd sent))) #f)
        ((equal? (first sent) wd) 1)
        ((+ 1 (location wd (bf sent))))))