#lang racket
;; Exercise 2.36

(require "../Examples/accumulate.rkt")

(define (accumulate-n op init seqs)
  (if (null? (car seqs))
      '()
      (cons (accumulate op init (car-n seqs))
            (accumulate-n op init (cdr-n seqs)))))

(define (car-n x)
  (map car x))

(define (cdr-n x)
  (map cdr x))

;(accumulate-n + 0 '((1 2 3) (4 5 6) (7 8 9) (10 11 12)))

(provide accumulate-n)