#lang racket
;; Example in 1.3.4
;; Newtons Method

(require "fixed-point.rkt")

(define (newton-transform g)
  (lambda (x)
    (- x (/ (g x) ((deriv g) x)))))

(define (deriv g)
  (lambda (x)
    (/ (- (g (+ x dx)) (g x))
       dx)))

(define dx 0.00001)

(define (newtons-method g guess)
  (fixed-point (newton-transform g) guess))

(provide newtons-method)