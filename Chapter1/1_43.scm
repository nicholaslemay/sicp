(define (square x) (* x x))
(define (decremented x)(- x 1))

(define (repeated function x-times)

  (define (compose function-a function-b)
    (lambda(x)(function-a(function-b x)))
  ) 

  (define (repeat-function times-remaining )
    (if (= times-remaining 1)
      (lambda(x)(function x))
      (compose function (repeat-function (decremented times-remaining )))
    )
  )
  
  (repeat-function x-times)
)

(display ((repeated square 1)5))
(newline)
(display ((repeated square 2)5))
(newline)
(display ((repeated square 3)5))
(newline)
