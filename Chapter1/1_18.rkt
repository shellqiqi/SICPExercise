#lang racket
;; Exercise 1.18

(define (multiply a n)

  (define (double x)
    (+ x x))

  (define (halve x)
    (/ x 2))

  (define (itr a n b)
    (cond ((= n 0) b)
          ((even? n)
           (itr (double a) (halve n) b))
          (else
           (itr a (- n 1) (+ b a)))))

  (itr a n 0))

(multiply 2 6)
(multiply 1111 100020003000400050006)
