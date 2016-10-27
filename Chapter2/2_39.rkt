#lang racket
;; Exercise 2.39

(require "2_28.rkt")

(define (reverse-left sequence)
  (fold-left (lambda (x y) (cons y x)) '() sequence))

(define (reverse-right sequence)
  (fold-right (lambda (x y) (append y (list x))) '() sequence))

(reverse-left '(1 2 3))
(reverse-right '(1 2 3))