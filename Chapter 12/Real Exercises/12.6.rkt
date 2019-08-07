;;; Exercise 12.6

(define (gpa sent)
  (/ (total-points sent) (count sent)))

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

(define (total-points sent)
  (if (empty? sent)
      '()
      (accumulate + (se (base-grade (first sent)) (total-points (butfirst sent))))))