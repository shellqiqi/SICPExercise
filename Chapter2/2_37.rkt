#lang racket
;; Exercise 2.37

(require "../Examples/accumulate.rkt")
(require "2_36.rkt")

(define m '((1 2 3 4)
            (4 5 6 6)
            (6 7 8 9)))
(define v '(1 2 3 4))

(define (dot-product v w)
  (accumulate + 0 (map * v w)))

(define (matrix-*-vector m v)
  (map (lambda (col) (dot-product col v)) m))

(matrix-*-vector m v)

(define (transpose mat)
  (accumulate-n cons '() mat))

(transpose m)

(define (matrix-*-matrix m n)
  (let ((trans-n (transpose n)))
    (map (lambda (col-m)
           (map (lambda (col-n)
                  (dot-product col-m col-n))
                trans-n))
         m)))

(matrix-*-matrix m (transpose m))