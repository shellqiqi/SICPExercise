#lang racket
;; Exercise 1.37.a

(define (cont-frac n d k)
  (define (itr result count)
    (if (= count 0)
        result
        (itr (/ (n count) (+ (d count) result))
             (- count 1))))
  (itr (/ (n k) (d k)) (- k 1)))

(provide cont-frac)

;(cont-frac (lambda (i) 1.0)
;           (lambda (i) 1.0)
;           100)
