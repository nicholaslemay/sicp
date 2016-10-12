(define (cube-root x)
	
  (define (find-cube-root guess n)
    (if (good-enough-cube-root? guess n)
      guess
      (find-cube-root (cube-improve guess n) n)
    )
  )
 
  (define (good-enough-cube-root? guess number)
    (< (abs (- (cube guess) number)) 0.001)
  )
  
  (define (cube n)
    (* n n n)
  )
  
  (define (abs n)
    (if (< n 0)
      (- n)
      n
    )
  )
 
  (define (cube-improve guess number)
    (/ ( + (/ number (* guess guess)) (* 2 guess) ) 3)
  )
 
  (let ((first-guess 1))
    (find-cube-root first-guess x)
  )
)
