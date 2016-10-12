#lang racket
;; Exercise 1.43

(require "1_42.rkt")
(require "../Examples/square.rkt")

(define (repeated f n)
  (if (= n 1)
      (lambda (x) (f x))
      (compose f (repeated f (- n 1)))))

((repeated square 2) 5)