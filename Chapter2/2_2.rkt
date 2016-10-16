#lang racket
;; Exercise 2.2

;; segment

(define (make-segment start end)
  (cons start end))

(define (start-segment seg)
  (car seg))

(define (end-segment seg)
  (cdr seg))

;; point

(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

;; functions using segment & point

(define (midpoint p1 p2)
  (make-point (/ (+ (x-point p1) (x-point p2)) 2)
              (/ (+ (y-point p1) (y-point p2)) 2)))

(define (midpoint-segment seg)
  (midpoint (start-segment seg)
            (end-segment seg)))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display " ,")
  (display (y-point p))
  (display ")"))

;; test

(define A (make-point 1 3))
(print-point A)
(define B (make-point 5 2))
(print-point B)
(define AB (make-segment A B))
(print-point (midpoint-segment AB))