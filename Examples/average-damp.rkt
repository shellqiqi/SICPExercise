#lang racket
;; Example in 1.3.4
;; Average Damp

(require "average.rkt")

(define (average-damp f)
  (lambda (x) (average x (f x))))

(provide average-damp)