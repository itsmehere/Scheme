;;; Exercise 6.4

(define (utensil meal)
  (if (equal? meal 'chinese)
      'chopsticks
      'fork))