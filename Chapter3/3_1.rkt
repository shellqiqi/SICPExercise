#lang racket
;; Exercise 3.1

(define (make-accumulator sum)
  (lambda (x)
    (set! sum (+ sum x))
    sum))