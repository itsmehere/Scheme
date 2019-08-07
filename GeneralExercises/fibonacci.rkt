;;; Fibonacci numbers

(define (fib num)
  (if (<= num 2)
      1
      (+ (fib (- num 1)) (fib (- num 2)))))