#lang racket
;; Exercise 2.21

(require "../Examples/square.rkt")

;(define (square-list items)
;  (if (null? items)
;      null
;      (cons (square (car items)) (square-list (cdr items)))))

(define (square-list items)
  (map square items))

;; test

(square-list (list 1 2 3 4))