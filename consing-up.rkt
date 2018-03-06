#lang racket
(define lst'(1 2 3 4))
(define lst2'(3 4))
(define (consing-up lst1 lst2)
  (consing empty lst1 lst2))


(define (consing list lst1 lst2)
  (if(empty? lst1)
     (if(empty? lst2)
        list
        (consing (adding list lst2) lst1 empty)
        )
     (consing(adding list lst1) empty lst2)  
     )
  )

(define (adding list lst)
  (if (empty? list)
      (if (empty? lst)
          list
          (adding (cons (car lst) empty) (cdr lst)))
      
      ()
      )