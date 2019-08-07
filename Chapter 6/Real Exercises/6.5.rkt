;;; Exercise 6.5

;; Part 1

(define (european-time sent)
  (convertor (first sent) (last sent)))

(define (convertor x y)
  (cond ((and (equal? x 12) (equal? y 'am)) 24)
        ((and (equal? x 12) (equal? y 'pm)) 12)
        ((equal? y 'am) x)
        ((equal? y 'pm) (+ x 12))))

;; Part 2

(define (american-time time)
  (cond ((<= time 12) (se time 'PM))
        ((equal? time 24) (se 12 'AM))
        ((se (- time 12) 'PM))))

