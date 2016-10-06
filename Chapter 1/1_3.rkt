#lang racket
;; Exercise 1.3

(define (square x) (* x x))

(define (sum-of-squares x y)
    (+ (square x) (square y)))

(define (f x y z)
  (cond ((and (>= x y) (>= y z))
         (sum-of-squares x y))
        ((and (>= x y) (>= z y))
         (sum-of-squares x z))
        ((and (>= y x) (>= x z))
         (sum-of-squares x y))
        ((and (>= y x) (>= z x))
         (sum-of-squares y z))))
