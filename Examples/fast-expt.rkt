#lang racket
;; Example in 1.2.4
;; Fast-expt

(require "square.rkt")

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))