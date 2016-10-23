#lang racket
;; Exercise 2.28
;; Fringe

(define (fringe tree)
  (cond ((null? tree)
         '())
        ((not (list? tree))
         (list tree))
        (else
         (append (fringe (car tree))
                 (fringe (cdr tree))))))

;(fringe '(1 (2 3) (4 (5 6))))

(provide fringe)
