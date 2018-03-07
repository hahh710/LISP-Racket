#lang racket

(define a 12)
(define b 3)
(list 'a 'b)
(define food1 'ramen)
(define food2 'ramen)
(define food3 'sushi)

(define foods1 (cons food1 food3))
(define foods2 (cons food1 food2))
(define foods3 (cons food3 food1))
(define foods4 (cons food2 food1))
(define foods5 (cons food1 food3))

(define c (integer->char 955))
