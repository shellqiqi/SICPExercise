#lang racket
;; Example in 1.3.4
;; Fixed Point of Transform

(require "fixed-point.rkt")

(define (fixed-point-of-transform g transform guess)
  (fixed-point (transform g) guess))

(provide fixed-point-of-transform)