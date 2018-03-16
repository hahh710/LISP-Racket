#lang racket

;; (require (planet dyoo/simply-scheme))
;; (provide (all-defined-out))

;; Racket calculator -- evaluate simple expressions

; The read-eval-print loop:

(define (calc)
  (display "calc: ")
  (flush-output)
  (print (calc-eval (read)))
  (newline)
  (calc))

; Evaluate an expression:

(define (calc-eval exp)
  (cond ((number? exp) exp)
        ((list? exp) (calc-apply (car exp) (map calc-eval (cdr exp))))
        (else (error "Calc: bad expression: " exp))))

; Apply a function to arguments:

(define (calc-apply fn args)
  (cond ((eq? fn '+) (foldr + 0 args))
        ((eq? fn '-) (cond ((null? args) (error "Calc: no args to -"))
                           ((= (length args) 1) (- (car args)))
                           (else (- (car args) (foldr + 0 (cdr args))))))
        ((eq? fn '*) (foldr * 1 args))
        ((eq? fn '/) (cond ((null? args) (error "Calc: no args to /"))
                           ((= (length args) 1) (/ (car args)))
                           (else (/ (car args) (foldr * 1 (cdr args))))))
        
        ((eq? fn 'abs) (cond ((> (length args) 1) (error "Calc: abs requires exactly 1 arg"))
                             ((null? args) (error "Calc: no args to /"))
                             (else (abs (car args)))))
        ((eq? fn '**) (cond ( (or ( > (length args) 2) (< (length args) 2)) (error "Calc: abs requires exactly 2 args"))
                             ((null? args) (error "Calc: no args to /"))
                             (else ( power (car args) (car(cdr args))))))
        ((eq? fn 'max) (cond (( < (length args) 2) (error "Calc: max requires 1 or more args"))
                             (else (foldr max (car args) (cdr args)))
                                                   
                               ))
                       
        (else (error "Calc: bad operator:" fn))))
(define (max x y)
  (if (< x  y)
      y
      x))

(define (power x y)
  ( if(= y 0)
      1
      (* x (power x (- y 1) ))))
