#lang racket
;; Exercise 2.17

;; using list-ref & length

;(define (last-pair lst)
;  (list (list-ref lst (- (length lst) 1))))

;; using recursion

(define (last-pair lst)
  (cond ((null? lst)
         (error "list empty"))
        ((null? (cdr lst))
         lst)
        (else
         (last-pair (cdr lst)))))

(last-pair (list 23 72 149 34))