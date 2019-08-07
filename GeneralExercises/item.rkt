;;;Behind the scenes of primitive procedure "item."

(define (nth-element x phrase)
  (if (> x 1)
      (nth-element (- x 1) (butfirst phrase))
      (first phrase)))