(define (inc x) (+ 1 x))
(define (square x) (* x x))

(define (compose f g arg)
  (lambda(x)(f(g x)))
) 

((compose square inc) 6)
