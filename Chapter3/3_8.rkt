#lang racket
;; Exercise 3.8

(define f
    (lambda (first-value)
        (set! f (lambda (second-value) 0))
        first-value))

(+ (f 1) (f 0))
(+ (f 0) (f 1))