#lang racket

(define (sum-cube a b)
  ((lambda (x y)
    (+ x y)) a b
  ))

(define (sum-cub a b)
  (let (( x a)
        ( y b)
        )
    ( + x y))
  )

(define (f x)
  (+ (let((x 3))
       (+ x (* x 10))) x))

(define (make-adder n)
  (lambda(x)(+ x n)))

(define (increase fn start end)
  (if (< end start)
      0
      (cons start (increase fn (fn start) end)
      )))
