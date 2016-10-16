#lang racket
;; Exercise 2.20

(define (same-parity . sequence)
  (if (odd? (car sequence))
      (filter odd? sequence)
      (filter even? sequence)))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7 8)