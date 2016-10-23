#lang racket
;; Exercise 2.34
;; Horner Eval

(require "../Examples/accumulate.rkt")

(define (horner-eval x coefficient-sequence)
  (accumulate (lambda (this-coeff higher-terms)
                (+ this-coeff (* x higher-terms)))
              0
              coefficient-sequence))

(horner-eval 2 '(1 3 0 5 0 1))