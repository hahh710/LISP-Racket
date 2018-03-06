#lang racket

(define lst'(1 2 3 4 5 6 7 8 9 13 15 16))
(define lst2'(1 2 3 4 5))

(define (filter predicate list)
  (cond
    [(empty? list) empty]
    [(predicate (car list))
      (cons (car list) (filter predicate (cdr list)))]
    [else (filter predicate (cdr list))]
    )
  )

(define (filtering-odd list)
  (cond
    [(empty? list) empty]
    [(odd? (car list)) (cons (car list) (filtering-odd (cdr list)))]
    [else (filtering-odd (cdr list))]
    )
  )

(define (odd? item)
  (= 1 (remainder item 2)))
