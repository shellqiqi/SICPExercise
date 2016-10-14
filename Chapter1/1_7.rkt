#lang racket
;; Exercise 1.7

(define (my-sqrt x)
  (sqrt-itr 1.0 x))

(define (sqrt-itr guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (sqrt-itr (improve guess x) x)))

(define (good-enough? old-guess new-guess)
  (> 0.01 (/ (abs (- new-guess old-guess))
             old-guess)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))
