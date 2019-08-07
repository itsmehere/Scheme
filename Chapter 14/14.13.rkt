;;; Exercise 14.13

(define (piglatin wd)
  (if (hasvowel? wd)
      (if (member? (first wd) 'aeiou)
          (word wd 'ay)
          (piglatin (word (butfirst wd) (first wd))))
      (word wd 'ay)))

(define (hasvowel? wd)
  (cond ((empty? wd) #f)
        ((member? (first wd) 'aeiou) #t)
        (else (hasvowel? (bf wd)))))