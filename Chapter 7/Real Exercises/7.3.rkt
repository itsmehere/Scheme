;;; Exercise 7.3

;; Issue: word, in itself, is a procedure so once we change the
;; argument name to something else like wd, our issue is solved.

;; Before

;;(define (superlative adjective word)
;;  (se (word adjective 'est) word))

;; After
(define (superlative adjective wd)
  (se (word adjective 'est) wd))