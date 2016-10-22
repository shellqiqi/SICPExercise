#lang racket
;; Exercise 2.31

(require "../Examples/square.rkt")

(define (tree-map proc items)
  (map (lambda (current-item)
         (if (pair? current-item)
             (tree-map proc current-item)
             (proc current-item)))
       items))

(define (square-tree tree)
  (tree-map square tree))

;; test

(square-tree
 (list 1
       (list 2 (list 3 4) 5)
       (list 6 7)))
