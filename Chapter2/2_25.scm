(define list-1 (list 1 3 (list 5 7) 9))

(display (car(cdr (car (cdr (cdr list-1))))))

(define list-2 (list (list 7)))
(newline)
(display (car (car list-2)))

(define list-3 (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

(newline)
(display  (car(cdr(car(cdr(car(cdr(car(cdr(car(cdr(car(cdr list-3)))))))))))))

