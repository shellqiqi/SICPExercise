#lang racket
;; Exercise 1.44

(require "1_43.rkt")

(define dx 0.00001)

(define (smooth f n)
    (lambda (x) (/ (+ (f (+ x dx))
                      (f x)
                      (f (- x dx)))
                   3)))

(define (smooth-n-times f n)
    (let ((n-times-smooth (repeated smooth n)))
      (n-times-smooth f)))

((smooth (lambda (x) (expt x 2)) 10) 5)