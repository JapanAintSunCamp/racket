
#lang racket
(define rem_second
        (lambda (a)
          (if (>(length a) 2)
          (append (list(car a))(cdr(cdr a)))
          '()
          )
        )
  ;(lambda (a) (length a))
)