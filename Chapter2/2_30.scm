(define flat-list (list 1 2 3 4))
(define my-tree-list (list 1 (list 2 (list 3 4) 5) (list 6 7)))

(define (square x)(* x x))
(define make-list cons)
(define first-element car)
(define rest-of cdr)
(define is-list? pair?)


(define (deep-map function list)
  
  (define (deep-apply-function element)
    (if (is-list? element)
      (deep-map function element)
      (function element)
    )
  )
  
  (if (null? list)
    list
    ( make-list (deep-apply-function (first-element list)) 
                (deep-map function (rest-of list))
    )
  )  
)

(define (square-tree list)
  (deep-map square list) 
)

(display (square 2))
(display "\n")
(display (map square flat-list))
(display "\n")
(display my-tree-list)
(display "\n")
(display (deep-map square my-tree-list))
(display "\n")
(display (square-tree my-tree-list))
