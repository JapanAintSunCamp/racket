#lang racket
;(require "membership.rkt")
(define c_list (list))
(define (membership atm a_list)
  (cond
       ((null? a_list) #f)
       ((eq? atm (car a_list)) #t)
       (else (membership atm (cdr a_list)))
 ))



(define (my_common a_list b_list)
  (append (list)

  (if(>(length a_list) 1)
     ( if(membership (car a_list) b_list)
       (list (car a_list) (my_common (cdr a_list) b_list))
       (list (my_common (cdr a_list) b_list))
      
      
      )
     (if(membership (car a_list) b_list)
        (list(car a_list))
        (list)
        )
   )

  );append bloack
)

(define one (list 1 2 3))
(define two (list 1 2 3))
(define x (my_common one two))
x

(define a (list 1 5 9))
(define b (list 0 0 9))
(define c (my_common a b))
c
(define d (list 1 9 4 7 1 6 39 1 37 9 0 0 0 0))
(define y (list 37 6))
(define me_list (my_common d y))
me_list