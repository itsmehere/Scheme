;; Rock Paper Scissors Lizard Spock Project

;This funtion takes a name and converts it to a number between 1 and 5, inclusive.
(define (name-to-number thing)
  (cond ((equal? thing 'rock) 1)
        ((equal? thing 'spock) 2)
        ((equal? thing 'paper) 3)
        ((equal? thing 'lizard) 4)
        (else (equal? thing 'scissors) 5)))

;This function takes a number and converts it to its corresponding name.
(define (number-to-name num)
  (cond ((equal? num 1) 'rock)
        ((equal? num 2) 'spock)
        ((equal? num 3) 'paper)
        ((equal? num 4) 'lizard)
        (else (equal? num 5) 'scissors)))

;Picks a random move for the computer.
(define (computer-choice)
  (random 1 6))

;This function converts the player's choice to a number and sends it to the function printwinner.
(define (rpsls thing)
  (let ((player (name-to-number thing))
        (computer (computer-choice)))
    (printwinner player computer (number-to-name computer))))

;This function takes in the outcome of the match and prints it out.
(define (printwinner user compnum compname)
  (se '(Human went) (word (number-to-name user) '!) '(Computer went) (word compname '!) (findwinner user compnum)))

;This function finds the winner between the computer and the human.
(define (findwinner user comp)
  (let ((outcome (remainder (+ (- comp user) 5) 5)))
    (cond ((equal? outcome 0) '(Tie Game!))
          ((> outcome 2) '(Human Wins!))
          ((< outcome 3) '(Computer Wins!)))))



   