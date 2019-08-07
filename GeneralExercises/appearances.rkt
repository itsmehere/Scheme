;;; Appearances

(define (deep-appearances wd structure)
  (if (word? structure)
      (if (equal? structure wd) 1 0)
      (reduce +
	      (map (lambda (sublist) (deep-appearances wd sublist)) structure))))