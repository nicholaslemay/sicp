(define (reverse-list aList)

  (define (do-reverse listToReverse lastReversedElement)
    (if (has-no-further-element? listToReverse)
      (with-next-element-prepended listToReverse lastReversedElement)
      (do-reverse 
	    (rest-of listToReverse)
	    (with-next-element-prepended listToReverse lastReversedElement) 
      )
    )
  )	
  (define (with-next-element-prepended srcList startOfTargetList) 
    (cons (car srcList) startOfTargetList)
  )
  (define (has-no-further-element? aList) (null? (rest-of aList)))
  (define (rest-of aList)(cdr aList))
  
  (let ([with-no-previously-reversed-element ()])
  	(do-reverse aList with-no-previously-reversed-element)
  )
  
)

#(reverse-list (list 1 2 3 4 5 6 7))
