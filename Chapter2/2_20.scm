(define (same-parity . theList)
  
  (define (find-elements-with-same-parity possibleMatches matches)
    (if (no-more? possibleMatches)
      matches
      (let ((number (next-element possibleMatches)))
        (if (of-proper-parity? number)
          (find-elements-with-same-parity (rest-of possibleMatches) (with-match-added matches number))  
          (find-elements-with-same-parity (rest-of possibleMatches) matches)
        )
      )   
    )
  )
  
  (define (no-more? elements)(null? elements))
  (define (of-proper-parity? number)(= (parity-of-list) (parity-of number)))
  (define (parity-of-list) (parity-of (car theList))) 
  (define (parity-of number) (remainder number 2) )
  (define (next-element aList) (car aList))
  (define (rest-of aList) (cdr aList))
  (define (with-match-added matches number)(append matches (list number)))
  
  (let ((withNoMatchesYet ()))
    (find-elements-with-same-parity theList withNoMatchesYet)
  )
)

#(same-parity 1 2 3 4 5 6 7 8 9 )
#(same-parity 2 3 4 5 6 7 8 9 )
