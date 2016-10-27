#lang racket
;; Example in 2.2.3
;; Flat Map

(require "accumulate.rkt")

(define (flatmap proc seq)
  (accumulate append '() (map proc seq)))

(provide flatmap)

;(define (permutations s)
;  (if (null? s)
;      (list '())
;      (flatmap (lambda (x)
;                 (map (lambda (p) (cons x p))
;                      (permutations (remove x s))))
;               s)))
;
;(define (remove item sequence)
;  (filter (lambda (x) (not (= x item)))
;          sequence))
;
;(permutations '(1 2 3))