;;; Programming Concepts - Midterm #2

;; 1)

; a) 'farce
; b) '(quick brown jumps over lazy)
; c) 'ghij
; d) -6
; e) 75


;; 2)

(define (average sent)
  (/ (accumulate + sent) (count sent)))

;; 3)

(define (dunbar sent)
  (every (lambda (x) (* (last x) (last x))) (keep (lambda (x) (equal? (first x) 'B)) sent)))

;; 4)

; 4A

(define (reverse wd)
  (accumulate (lambda (x y) (word y x)) wd))

; 4B

; Method 1
(define (backwards sent)
  (accumulate (lambda (x y) (se y x)) (every (lambda (x) (reverse x)) sent)))

;Method 2
(define (backwards2 sent)
  (accumulate (lambda (x y) (se y x)) (every reverse sent)))