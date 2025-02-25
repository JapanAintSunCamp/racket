#lang racket
(define pi 3.1416)
(define (is_pos a_list)
  (if (> (length (cdr a_list)) 0)
      (if (positive? (car a_list)) (is_pos (cdr a_list)) #f) 
      (if (positive? (car a_list)) #t #f)
      )
  )

( define (my_calc atm a_list)
   (if (is_pos a_list)
   (if
     (eq? atm 1) (*  pi (* (car a_list) (car (cdr a_list))))
     
     (if(eq? atm 2) (*   pi (* (car a_list) (* (car (cdr a_list)) (car (cdr(cdr a_list))))))
         
     #f)
     )
   #f)

)
(define my_list (list 1 2 3))
(my_calc 1 my_list)
(my_calc 7 my_list)
(my_calc 2 my_list)
(define my_list2 (list -1 -2 -3))
(my_calc 2 my_list2)