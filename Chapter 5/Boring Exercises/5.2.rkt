;;; Exercise 5.2 

;;Boring Exercises

;Part1
(define (f1 sent1 sent2)
  (se (bf sent1) (bl sent2)))

;Part2
(define (f2 sent1 sent2)
  (se (bf sent1) (bl sent2) (first sent1) (last sent2)))

;Part3
(define (f3 sent1 sent2)
  (se sent1 sent1))

;Part4
(define (f4 sent1 sent2)
  (word (first (butfirst sent1)) (first (butfirst sent2))))