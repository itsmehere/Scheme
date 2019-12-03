(define (fib n)
  (define (fib-helper num1 num2 count lyst)
    (if (= count n)
        lyst
        (fib-helper num2 (+ num1 num2) (+ count 1) (append lyst (list num2)))))
  (fib-helper 0 1 0 '()))