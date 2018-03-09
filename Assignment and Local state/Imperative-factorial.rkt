#lang racket

;;factorial procedure with iteration
(define (factorial n)
  (define (iter product counter)
    (if (< n counter)
        product
        (iter (* product counter) (+ counter 1))
        )
    )(iter 1 1)
  )

;;factorial as imperatives

(define (facto-i n)
  (let((counter 1)
       (product 1))
    (define (facto)
      (if (< n counter)
          product
          (begin(set! product (* product counter))
                (set! counter (+ counter 1))(facto))
          )
      )(facto)) 
  )
