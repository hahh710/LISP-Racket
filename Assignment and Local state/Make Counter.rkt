#lang racket

(define (make-counter op value initial)
  (let((account initial))
    (lambda()(set! account (op account value))account)
  ))

(define (make-counter-test value)
  (let((account 0))
    (lambda()(set! account (+ account value))account)
  ))


(define (customer1 op value) 
  (make-counter op value 0)
  )


(define (customer account)
   (define (make-add)
        (set! account (+ account 100)) account)
   (define (make-sub)
     (if (> account 0 )
         ( begin(set! account (- account 100))
                account)
         "account is 0"))
  (define (dispatch cmd)
    (cond ((eq? cmd 'add) make-add)
          ((eq? cmd 'sub) make-sub)
          (else (error "Unknown command" cmd))))
  dispatch)

   
