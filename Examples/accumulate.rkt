#lang racket
;; Example in 2.2.3
;; Accumulate

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(provide accumulate)