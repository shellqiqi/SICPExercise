#lang racket
;; Exercise 1.15

(define (sine x)
  
  (define (p x)
    (- (* 3 x) (* 4 (expt x 3))))
  
  (if (not (> (abs x) 0.1))
      x
      (p (sine (/ x 3.0)))))

(sine (/ pi 6))
(sine (/ pi 3))
(sine (/ pi 2))
(sine pi)