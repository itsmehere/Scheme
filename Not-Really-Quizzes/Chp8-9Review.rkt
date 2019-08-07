;;; Chapter 8/9 review

; 1)

(define (type-check f pred?)
  (lambda (x)
    (if (pred? x) (f x) #f)))

(define safe-bf 
  (type-check bf (lambda (x) (and (or (word? x) (sentence? x)) (not (empty? x))))))

; 2)

(define (num-vowels? sent)
  (count (keep vowel? (accumulate word sent))))

(define (vowel? x)
  (member? x 'aeiou))

; 3)

; 'abracadabra

