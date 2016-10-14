#lang racket
;; Exercise 1.16

(define (fast-expt b n)
  
  (define (itr b n a)
    (cond ((= n 0) a)
          ((even? n)
           (itr (* b b) (/ n 2) a))
          (else
           (itr b (- n 1) (* b a)))))
  
  (itr b n 1))

(fast-expt 2 10)
(fast-expt 3 157)