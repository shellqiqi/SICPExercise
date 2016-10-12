#lang racket
;; Exercise 1.42

(require "../Examples/square.rkt")

(define (compose f g)
  (lambda (x) (f (g x))))

(define (inc x)
  (+ x 1))

;((compose square inc) 6)

(provide compose)