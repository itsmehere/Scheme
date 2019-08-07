;;; Chapter 8 - Higher-Order Functions Quiz

; 1)

(define (2+ sent)
  (every add-2 sent))

(define (add-2 x)
  (+ 2 x))

; 2)

(define (vowels-only wd)
  (keep vowel? wd))

(define (vowel? x)
  (member? x 'aeiou))

; 3)

(define (smallest-number sent)
  (accumulate smallest? sent))

(define (smallest? x y)
  (if (> x y)
      y
      x))

; 4)

(define (shift-right num wd)
  ((repeated bf num) wd))