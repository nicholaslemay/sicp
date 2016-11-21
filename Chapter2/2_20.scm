(define (same-parity . theList)
  
  (define (elements-with-same-parity possibleMatches matches)
    (if (no-more? possibleMatches)
      matches
      (elements-with-same-parity 
                                 (rest-of possibleMatches) 
                                 (with-matches-updated matches (next-element possibleMatches))
      )  
    )
  )

  (define (with-matches-updated matches possibleMatch)
    (if (of-proper-parity? possibleMatch)
      (append matches (list possibleMatch))  
      matches
    )
  )

  (define (no-more? elements)(null? elements))
  (define (of-proper-parity? number)(= (parity-of-list) (parity-of number)))
  (define (parity-of-list) (parity-of (car theList))) 
  (define (parity-of number) (modulo number 2) )
  (define (next-element aList) (car aList))
  (define (rest-of aList) (cdr aList))
  
  (let ((withNoMatchesYet ()))
    (elements-with-same-parity theList withNoMatchesYet)
  )
)

#(same-parity 1 2 3 4 5 6 7 8 9 )
(same-parity 2 3 4 5 6 7 8 9 )
