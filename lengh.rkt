#lang racket
;;return the number of elements in list items

(define lst'(1 2 3 4))

;;as recursive procedure and recursive process
;;linear 
(define (length list)
  (if (empty? list) 0
      (+ 1 (length (cdr list)))))

;;as recursive procedure and iterative process
;;as tail call elimination
(define (length-t list) ;; tail-call
  (length-iter list 0))


(define (length-iter list count)
  (if (empty? list) count
   (length-iter (cdr list) (+ count 1))))

