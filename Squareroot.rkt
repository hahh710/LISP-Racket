#lang racket
(define lst'(4 9 16 25))

(define (map proc lst)
  (if(empty? lst)
     empty
     (cons (proc (car lst)) (map proc (cdr lst)))
  ))


(define (sqrt x)

(define (square-of-root guess x)
  (if (good-enough guess x)
      guess
      (square-of-root (improve-guess guess x) x)
      )
)

(define (improve-guess try x)
  (average try (/ x try))
)

(define (average x y)(/ (+ x y) 2))
 
(define (good-enough y x)
  ( < (abs (- (square y) x)) 0.001)
)

(define (abs x)
  (if (or (= x 0) (> x 0))
      x
     (- x)) 
)

(define (square x)(* x x))
  (square-of-root 1.0 x)
  )