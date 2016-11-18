(define (square x)(* x x) )

(define (largest-of a b)(if(> a b)a b))
(define (smallest-of a b)(if(< a b)a b))

(define (sum-largest-squares x y z)
  (+ (square (largest-of x y)) 
     (square (largest-of (smallest-of x y) z))
  )
)

(display (sum-largest-squares 1 2 3))
(newline)
(display (sum-largest-squares 3 2 1))
(newline)
(display (sum-largest-squares 1 3 2))
(newline)
(display (sum-largest-squares 3 1 3))
