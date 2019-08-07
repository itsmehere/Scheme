;;; Exercise 8.11

(define (gpa grades)
  (/ (accumulate + (every base-grade grades)) (count grades)))

(define (base-grade x)
  (cond ((equal? (first x) 'A) (grade-mod 4 x))
        ((equal? (first x) 'B) (grade-mod 3 x))
        ((equal? (first x) 'C) (grade-mod 2 x))
        ((equal? (first x) 'D) (grade-mod 1 x))
        ((equal? (first x) 'F) (grade-mod 0 x))))

(define (grade-mod num-grade whole-grade)
  (cond ((equal? (last whole-grade) '-) (- num-grade 0.33))
        ((equal? (last whole-grade) (first whole-grade)) num-grade)
        ((equal? (last whole-grade) '+) (+ num-grade 0.33))))