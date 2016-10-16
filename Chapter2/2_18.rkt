#lang racket
;; Exercise 2.18

(define (reverse lst)
  (if (null? (cdr lst))
      lst
      (append (reverse (cdr lst))
              (list (car lst)))))

(reverse (list 1 4 9 16 25))