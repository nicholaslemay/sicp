(define (fringe originalList)
  
  (define (find-all-leaves-of possibleLeaves leaves)
    (if (no-more? possibleLeaves)
      leaves 
      (find-all-leaves-of (rest-of possibleLeaves) (append leaves (leaves-from-next-element-of possibleLeaves )))
    ) 
  )
  
  (define (leaves-from-next-element-of possibleLeaves)
    (let ((nextElement (next-element-of possibleLeaves)))
      (if (pair? nextElement)
        (find-all-leaves-of nextElement ())
        (list nextElement)
      )
    )
  )
  
  (define (no-more? elements)(null? elements))
  (define (rest-of elements)(cdr elements))
  (define (next-element-of leaves)(car leaves))
  
  (find-all-leaves-of originalList ())
)

(fringe (list (list 1 2) 3 (list 4 5)))
