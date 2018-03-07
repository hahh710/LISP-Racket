#lang racket
;; in the formal parameter, you can put procedure, in forms of name.
;;but
(define lst'(2 3 5 7))

(define (square-list list)
  (map square list)
)
(define (map proc lst)
  (if(empty? lst)
     empty
     (cons (proc (car lst)) (map proc (cdr lst)))
))

(define (square x)
  (* x x))

