#lang racket
;; Exercise 1.35

(require "../Examples/fixed-point.rkt")

(define (golden-ratio)
  (fixed-point (lambda (x) (+ 1.0 (/ 1.0 x)))
               1.0))