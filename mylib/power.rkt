#lang racket
;; Power

(define (^ x y)
  (define (itr product counter)
    (if (> counter y)
        product
        (itr (* product x)
             (+ counter 1))))
  (itr 1 1))

(provide ^)