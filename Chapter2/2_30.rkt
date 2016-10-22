#lang racket
;; Exercise 2.30

(require "../Examples/square.rkt")

;; directly define

;(define (square-tree x)
;  (cond ((null? x)
;         '())
;         ((not (pair? x))
;          (square x))
;         (else
;          (cons (square-tree (car x))
;                (square-tree (cdr x))))))

;; using map

(define (square-tree x)
  (map (lambda (sx)
         (if (pair? sx)
             (square-tree sx)
             (square sx)))
       x))

;; test

(square-tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))
