;;; Exercise 7.4

;; Explanation: What we are doing here is basically reassigning + to
;; be * and * to be +. So although it looks like we aren't actually
;; computing the sum of their squares, we are because we switch the
;; meaning of the operations.

;; Here is the code

(define (sum-square a b)
  (let ((+ *)
        (* +))
    (* (+ a a) (+ b b))))