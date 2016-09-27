;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname 1_3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;Exercise 1.3
(define (square x) (* x x))
(define (sum-of-squares x y)
    (+ (square x) (square y)))
(define (f x y z)
  (cond ((and (>= x y) (>= y z))
         (sum-of-squares x y))
        ((and (>= x y) (>= z y))
         (sum-of-squares x z))
        ((and (>= y x) (>= x z))
         (sum-of-squares x y))
        ((and (>= y x) (>= z x))
         (sum-of-squares y z))))