;;;Exercise 7.1

;Version without let

(define (gertrudeLet wd)
  (se (if (vowel? (first wd)) 'an 'a)
      wd
      'is
      (if (vowel? (first wd)) 'an 'a)
      wd
      'is
      (if (vowel? (first wd)) 'an 'a)
      wd))

;Version with let

(define (gertrude wd)
  (let ((wordstoadd (se (if (vowel? (first wd)) 'an 'a)
                       wd)))
    (se wordstoadd 'is wordstoadd 'is wordstoadd)))

(define (vowel? x)
  (member? x 'aeiou))