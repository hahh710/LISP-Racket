#lang racket
(define (calc)
  (display "cals: ")
  (flush-output)
  (print (calc-eval (read)))
  (newline)
  (calc))