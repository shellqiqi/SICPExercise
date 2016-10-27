#lang racket
;; Exercise 2.38

(require "../Examples/accumulate.rkt")
(define fold-right accumulate)

(define (fold-left op initial sequence)
  (define (iter result rest)
    (if (null? rest)
        result
        (iter (op result (car rest))
              (cdr rest))))
  (iter initial sequence))

;(fold-right / 1 '(1 2 3))
;(fold-left / 1 '(1 2 3))

;(fold-right list '() '(1 2 3))
;(fold-left list '() '(1 2 3))

(provide fold-right)
(provide fold-left)