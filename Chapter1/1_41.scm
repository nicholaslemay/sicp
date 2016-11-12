(define (inc x) (+ 1 x))

(define (double f arg)
  (lambda(x)(f(f x)))
) 

(((double (double double)) inc) 5)
