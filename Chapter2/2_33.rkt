#lang racket
;; Exercise 2.33

(require "../Examples/accumulate.rkt")

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y))
              '()
              sequence))

(define (append seq1 seq2)
  (accumulate cons
              seq2
              seq1))

(define (length sequence)
  (accumulate (lambda (x y) (+ y 1))
              0
              sequence))

(length '(1 2 3))