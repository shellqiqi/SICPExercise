#lang racket
;; Exercise 1.36

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (println x)
    (display x)
    (newline))
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (println guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          (println next)
          (try next))))
  (try first-guess))

(fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0)