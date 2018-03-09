#lang racket
(define global 2)

(define (make-upcounter x)
  (let((count 0))
    (lambda()
      (set! count (+ count x)) count))
)

(define count-up1
  (make-upcounter 10)
  )

(define count-up2
  (make-upcounter 20)
  )
(define (glo-up)
  (set! global (+ 2 global))
  )



(define (square x)(* x x))

;;how variable declaralation works, it computes whats in <body> and stores the variable.

(define test
  (glo-up)
)

