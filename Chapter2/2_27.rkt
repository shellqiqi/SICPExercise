#lang racket
;; Exercise 2.27

(define (tree-reverse tree)
  (cond ((null? tree)
         '())
        ((not (list? tree))
         tree)
        (else
         ((lambda (a b)
            (if (null? a)
                b
                (append a b)))
          (tree-reverse (cdr tree))
          (list (tree-reverse (car tree)))))))

(tree-reverse '(1 ((2 3) 4 (5 6)) 7))