#lang racket
(define (power x y )
  (if (= y 0)
      1
      (* x (power x (- y 1)))))

;;another way 1*x*x*x*x...
(define (power2 x y)
  (power-iter x y 0 1))
(define (power-iter x y count total)
  (if (= y count)
      total
      (power-iter x y (+ count 1) (* total x))
      ))
