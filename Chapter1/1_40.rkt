#lang racket
;; Exercise 1.40

(require "../Examples/newtons-method.rkt")

(define (cubic a b c)
  (lambda (x) (+ (expt x 3)
                 (* a (expt x 2))
                 (* b x)
                 c)))

(newtons-method (cubic 2 1 -4) 1)
;; 1