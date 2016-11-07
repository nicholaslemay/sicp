(define (last-element aList)
	
  (define (find-last-element aList)
    (if (has-no-further-element? theList)
      (first-element-of theList)
      (last-element (rest-of theList))
    )
  )	
 
  (define (has-no-further-element? aList) (null? (rest-of aList)))
  (define (first-element-of aList) (car aList))
  (define (rest-of aList)(cdr aList))
 
  (find-last-element theList)
)

#(last-element (list 1 2 3 4 5))
