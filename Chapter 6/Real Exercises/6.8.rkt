;;; Exercise 6.8

(define (indef-article wd)
  (if(member? (first wd) 'aeiou)
     (se 'An wd)
     (se 'A wd)))