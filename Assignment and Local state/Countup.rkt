#lang racket


(define current 1)
(define current1 0)
(define (count-upp)
  (count-up1 current))

;;this won't affect the global variable

(define (count-up1 current1)
  ;;using define
  ;;(define current (+ current1 1))

  ;;using lambada
  ;;((lambda (current) (+ current 1))current1)

  ;;using let
  (let ((current2 0))
    (set! current2 (+ current2 1))
    current2
    )
  ;; all 3 procedures  affect only local variables
  ;;therefore when (count-up1) is excuted over and over, the result is same. 
)

;;SO 
;; Using Set it will affect the global variable 
(define (count-up)
  (set! current (+ current 1))
  current
)

(define count-up2
  (
   lambda()(+ current 1)current)
   )

(define x 6)

;;in this case, when counterup2 is defined first, it will think 
(define countup2
  (let ((counter 0))
    (lambda ()
      (set! counter (+ counter 1))
    counter)
  )
)
(define (set x)(set! x (+ 2 x))
  )

;;test become a fixed value which is 0, even if execute test many times
(define test
  (let ((x 0))
    (set! x (+ x 1))x
    ;;(set! x (+ x 1)) x
    ;;(lambda()(set! x (+ x 1)) x)
  )
)

;;when there is lambda expression, even we declare "lab-test" as variable,
;;we have to execute as (lab-test) and become dynamic. which means result will be changed depends on global variable,current
(define lab-test
  (lambda()(+ current 5))

  )


