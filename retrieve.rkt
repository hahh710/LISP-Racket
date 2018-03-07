#lang racket
(define lst'(1 2 3 4))

;;returns the rest of lists after number of point.

(define (get-list-point lst num)
  (if (empty? lst) '()
      (if (<= num 0) 
          lst
          (get-list-point (cdr lst) (- num 1)))))

(define (retrieve lst num)
  (car(get-list-point lst num)))

(define (retrieve-ts lst num)
  (retrieve-iter lst num 0))

(define (retrieve-iter lst num count)
  (if (= num count) (car lst)
      (retrieve-iter (cdr lst) num (+ count 1))
      )
  )

  

