#lang racket
;; Exercise 1.19

;; f(a) = bq + aq + ap
;; f(b) = bp + aq
;; f(f(a)) = ?answer?
;; f(f(b)) = ?answer?

(define (fib n)
  (fib-itr 1 0 0 1 n))

(define (fib-itr a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-itr a
                  b
                  (+ (expt p 2) (expt q 2))
                  (+ (* 2 p q) (expt q 2))
                  (/ count 2)))
        (else (fib-itr (+ (* b q) (* a q) (* a p))
                       (+ (* b p) (* a q))
                       p
                       q
                       (- count 1)))))

(fib 5)
(fib 11)
(fib 200)