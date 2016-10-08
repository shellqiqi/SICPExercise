#lang racket
;; Factorial

(define (! n)
  (define (itr product counter)
    (if (> counter n)
        product
        (itr (* counter product)
             (+ counter 1))))
  (itr 1 1))

(provide !)