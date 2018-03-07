#lang racket

(define a 3)

(define (roots-local2 a b c)
  (define (roots-helper d)
   (cons ( / (+ (- b) d) (* 2 a))
        ( / (- (- b) d) (* 2 a))))
    (roots-helper (sqrt (- (square b) (* 4 a c))))
)
(define y (lambda (x) x))

(define (roots-local a b c)
  ;;local = b^2 - 4ac
  (define (local)
    (sqrt (- (square b) (* 4 a c))))
  (cons ( / (+ (- b) (local)) (* 2 a) )
        ( / (- (- b) (local)) (* 2 a) ))
)

(define (roots a b c)
  (cons (/ (+ (- b)
              (sqrt (- (* b b) (* 4 a c))))
           (* 2 a))
        (/ (- (- b)
              (sqrt (- (* b b) (* 4 a c))))
           (* 2 a))
        ))

(define square
  (lambda (x)(* x x)))



(define (root a b c)
  (cons (quad + a b c) (quad - a b c))
)



(define (quad op a b c)
  (/ (op (- b) (sqrt (- ((lambda (x)(* x x)) b) (* 4 a c)))) (* 2 a))
)