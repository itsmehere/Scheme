;;; Using Higher-Order Functions, we can write a program that
;;; tells us how many words in a sentence or how many letters in a word.

; No matter the argument, this function always returns one.
(define (always-one arg)
  1)

; Using every, we accumulate x ones (x being the number of elements) and
; use the accumulate function to add them up, thus returning the number
; of elements in the phrase.
(define (count phrase)
  (accumulate + (every always-one phrase)))