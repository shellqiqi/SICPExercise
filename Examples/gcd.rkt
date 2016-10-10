#lang racket
;; Example in 1.2.5
;; GCD

(define (gcd a b)
  (if (= b 0)
      a (gcd b(remainder a b))))