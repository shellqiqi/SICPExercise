#lang racket
;; Example 1.38

(require "1_37_a.rkt")

(define (d k)
  (let ((n (+ k 1)))
        (if (= (remainder n 3) 0)
            (* (quotient n 3) 2)
            1)))

(+ (cont-frac (lambda (x) 1.0)
              d
              100)
   2)