;;; Subsets of a word

(define (subsets wd)
  (if (empty? wd)
      (se "")
      (let ((smaller (subsets (bf wd))))
        (se smaller (prepend-every (first wd) smaller)))))

(define (prepend-every letter sent)
  (if (empty? sent)
      '()
      (se (word letter (first sent))
	  (prepend-every letter (bf sent)))))