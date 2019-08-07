(define (piglatin wd)
  (if (member? (first wd) 'aeiou)
      (word wd 'ay)
      (piglatin (word (butfirst wd) (first wd)))))