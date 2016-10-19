#lang racket
;; Exercise 2.25

(define lst1 '(1 3 (5 7) 9))

(car (cdaddr lst1))

(define lst2 '((7)))

(caar lst2)

(define lst3 '(1 (2 (3 (4 (5 (6 (7))))))))

(car (cadadr (cadadr (cadadr lst3))))