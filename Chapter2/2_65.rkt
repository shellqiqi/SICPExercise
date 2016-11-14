#lang racket
;; Exercise 2.65

(require "2_61_62.rkt")
(require "2_63.rkt")
(require "2_64.rkt")

(define (union-tree t1 t2)
  (list->tree
   (union-set (tree->list-2 t1)
              (tree->list-2 t2))))

(define (intersection-tree t1 t2)
  (list->tree
   (intersection-set (tree->list-2 t1)
                     (tree->list-2 t2))))
