#lang racket
;; Exercise 1.17

(define (multiply a b)

  (define (double x)
    (+ x x))

  (define (halve x)
    (/ x 2))

  (cond ((= b 0) 0)
        ((even? b) (double (multiply a (halve b))))
        (else (+ a (multiply a (- b 1))))))

(multiply 2 6)
(multiply 1111 100020003000400050006)
