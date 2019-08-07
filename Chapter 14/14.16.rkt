;;; Exercise 14.16

(define (syllables wd)
  (cond ((empty? wd) 0)
        ((and (vowel? (first wd)) (not (vowel? (first (bf wd))))) (+ 1 (syllables (bf wd))))
        (else (syllables (bf wd)))))


(define (vowel? x)
  (member? x 'aeiou))