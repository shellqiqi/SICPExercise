#lang racket
;; Example in 1.3.1
;; Sum

(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(provide sum)