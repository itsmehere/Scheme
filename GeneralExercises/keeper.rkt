;;; Checks if letter is part of a word in a sentence. If yes, keep keeps that word

(define (keeper letter)
  (lambda (sent) (keep (lambda (wd) (member? letter wd)) sent)))