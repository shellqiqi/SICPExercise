#lang racket
;; Example in 1.1.7
;; Average

(define (average x y)
  (/ (+ x y) 2))

(provide average)