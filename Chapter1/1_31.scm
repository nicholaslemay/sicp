(define (product term a next b)
  (if (> a b )
    1
    (* (term a)
       (product term (next a) next b)
    )
  )    
)

(define (identity x) x )
(define (inc x) (+ x 1))
(define (factorial n)
  (if(<= n 1)
    1
    (product identity 1 inc n)
  )
)

(define (willis-pi-approximation precision)
  (define (pi-term rank)
    (if (= (remainder rank 2) 0)
      ( / (+ rank 2) (+ rank 1))
      ( / (+ rank 1) (+ rank 2))
    )
  )
  (* (product pi-term 1.0 inc precision) 4.0)
)

(display (factorial 0))
(newline)
(display (factorial 1))
(newline)
(display (factorial 5))
(display (willis-pi-approximation 100))
