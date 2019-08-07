;;; Exercise 6.11

(define (valid-date? month day year)
  (cond ((not (valid-month? month)) #f)
        ((31-day-month? month) (between? day 1 31))
        ((30-day-month? month) (between? day 1 30))
        ((leap-year? year) (between? day 1 29))
        (else (between? day 1 28))))

;Function to check if the month is between 1 and 12, inclusive.
(define (valid-month? x)
  (if (and (>= x 1) (<= x 12))
      #t
      #f))

;Month numbers that have 31 days
(define (31-day-month? x)
  (member? x '(1 3 5 7 8 10 12)))

;Month numbers that have 30 days
(define (30-day-month? x)
  (member? x '(4 6 9 11)))

;Checks if a number, x is between numbers y and z, respectively.
(define (between? x y z)
  (and (>= x y) (<= x z)))

;Checks if the year is a leap-year. If it is only divisible by 4 then it is.
;If it is divisible by 100, then it also has to be divisible by 400 to be a
;leap year.
(define (leap-year? x)
  (if (and (equal? (remainder x 4) 0) (not (equal? (remainder x 100) 0)))
      #t
      (and (equal? (remainder x 100) 0) (equal? (remainder x 400) 0))))