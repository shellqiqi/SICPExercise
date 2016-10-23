#lang racket
;; Exercise 2.35

(require "../Examples/accumulate.rkt")
(require "../Examples/fringe.rkt")

;; Using fringe

;(define (count-leaves t)
;  (accumulate (lambda (x y) (+ y 1))
;              0
;              (fringe t)))

;; Using length and fringe

;(define (count-leaves tree)
;    (length (fringe tree)))

;; Format the question

(define (count-leaves t)
  (accumulate +
              0
              (map (lambda (s-t)
                     (if (pair? s-t)
                         (count-leaves s-t)
                         1))
                   t)))

(count-leaves '(1 2 (3 (4 5) 6) (7 8)))