#lang racket
(define (appended list1 list2)
  (if (empty? list1) list2
      (cons (car list1)
            (appended ( cdr list1) list2))))

(define sq '(1 4 9 16 25))
(define odd '(1 3 5 7 9))
