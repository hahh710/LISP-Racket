#lang racket

(define (sum-intergers a b)
  (sum identity a b))

;;(define (sum-intergers ))

(define (sinq x)(*(sin x) (sin x)))

(define (sum-inc proc a next b)
  (if (> a b)
      0
      (+ (proc a) (sum-inc proc (next a) next b)
      )
  )
)




(define (inc-by3 a)
  (+ a 3)
  )
  
(define (sum proc a b)
  (if (> a b)
      0
      (+ (proc a) (sum proc (+ a 1) b)
      )
  ))


(define (square x)
  (* x x))

