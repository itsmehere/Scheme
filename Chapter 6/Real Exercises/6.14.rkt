;;; Exercise 6.14

(define (describe-time x)
  (let* ((seconds-per-minute 60)
         (seconds-per-hour (* seconds-per-minute 60))
         (seconds-per-day (* seconds-per-hour 24))
         (seconds-per-year (* seconds-per-day 365.25))
         (seconds-per-century (* seconds-per-year 100)))
    (cond ((< x seconds-per-minute) (se x 'seconds))
          ((and (>= x seconds-per-minute) (<= x seconds-per-hour)) (se (/ x seconds-per-minute) 'minutes))
          ((and (>= x seconds-per-hour) (<= x seconds-per-day)) (se (/ x seconds-per-hour) 'hours))
          ((and (>= x seconds-per-day) (<= x seconds-per-year)) (se (/ x seconds-per-day) 'days))
          ((and (>= x seconds-per-year) (<= x seconds-per-century)) (se (/ x seconds-per-year) 'years))
          (else (>= x seconds-per-century) (se (/ x seconds-per-century) 'centuries)))))