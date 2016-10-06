(define (pascals_triangle max_number_of_rows)
  
  (define (display_rows row_number max_number_of_rows)
      ( if (<= row_number max_number_of_rows)
          (begin
            (display_row row_number)
            (display_rows (the_next row_number) max_number_of_rows)
          )
      )
  )
  
  (define (display_row row_number)
  	(display "\n")
    (display_left_spaces_for 0 row_number)
    (display_value_for row_number 1)
  )
 
  (define (display_left_spaces_for current_number_of_spaces row_number)
    (if (< current_number_of_spaces (- max_number_of_rows row_number))
      (begin
        (display " ")
        (display_left_spaces_for (the_next current_number_of_spaces) row_number)
      )
    )
  )
  
  (define (display_value_for row_number column)
     ( if (<= column row_number)
       (begin
         (if (not (eq? column 1)) (display " "))
         (display (value_for row_number column))
         (display_value_for row_number (the_next column))
        )
     )
   )
    
  (define (value_for row_number column)
    (if  (or (= column 1) (= column row_number) )
      1
      ( + (value_for (previous row_number) (previous column)) (value_for (previous row_number) column))
    )
  )

  (define (the_next number) (+ number 1))
  (define (previous number) (- number 1))
  
  (display_rows 1 max_number_of_rows)

)
#(pascals_triangle 12)
