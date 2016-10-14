#lang racket
;; Exercise 1.29

(require "../Examples/sum.rkt")

(define (simpson-integral f a b n)
  
  (define h (/ (- b a) n))

  (define (y k)
    (f (+ a (* k h))))

  (define (factor k)
    (cond ((or (= k 0) (= k n)) 1)
          ((even? k) 2)
          (else 4)))

  (define (term k)
    (* (factor k)
       (y k)))

  (define (next k)
    (+ k 1))

  (if (even? n)
      (* (/ h 3)
         (sum term 0.0 next n))
      (error "n can't be odd")))

(define (cube x)
  (expt x 3))

(simpson-integral cube 0 1 1000)
;; 1/4