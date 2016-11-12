(define (abs number)
  (if(>= number 0)
    number
    (- number)
  )
)

(define (make-negative number)(- (abs number)))
        	
(define (print-rational x)
  (newline)
  (display (numer x))
  (display "/")
  (display (denom x))
)

(define (numer x)(car x))
(define (denom x)(cdr x))
(define (make-rational numerator denominator)
  (if (>= (/ numerator denominator) 0)
    (cons (abs numerator) (abs denominator))
    (cons (make-negative numerator) (abs denominator))
  )
)


(display (abs 33))
(newline)
(display (abs -33))
(newline)
(display (make-negative 33))
(newline)
(display (make-negative -33))
(newline)
(print-rational (make-rational 2 3))
(print-rational (make-rational -2 3))
(print-rational (make-rational  2 -3))
(print-rational (make-rational -2 -3))

