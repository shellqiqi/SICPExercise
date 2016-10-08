#lang racket
;; Exercise 1.15

(require "../mylib/power.rkt")

(define (sine x)
  
  (define (p x)
    (- (* 3 x) (* 4 (^ x 3))))
  
  (if (not (> (abs x) 0.1))
      x
      (p (sine (/ x 3.0)))))