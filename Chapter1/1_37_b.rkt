#lang racket
;; Exercise 1.37.b

(define (cont-frac n d k)
  (define (rec i)
    (if (= i k)
        (/ (d k) (n k))
        (/ (n i) (+ (d i) (rec (+ i 1))))))
  (rec 1))

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           100)
