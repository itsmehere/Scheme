;;; Exercise 12.12

(define (arabic num)
  (if (equal? (count num) 1)
      (let-num num)
      (+ (value (first num) (second num)) (arabic (bf num)))))

(define (let-num roman-value)
  (cond ((equal? roman-value 'M) 1000)
        ((equal? roman-value 'D) 500)
        ((equal? roman-value 'C) 100)
        ((equal? roman-value 'L) 50)
        ((equal? roman-value 'X) 10)
        ((equal? roman-value 'V) 5)
        ((equal? roman-value 'I) 1)
        (else 0)))

(define (value a b)
  (if (>= (let-num a) (let-num b))
      (+ (let-num a))
      (- (let-num a))))

(define (second wd)
  (first (bf wd)))