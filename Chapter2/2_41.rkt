#lang racket
;; Exercise 2.41

(require "../Examples/flatmap.rkt")
(require "../Examples/enumerate-interval.rkt")
(require "../Examples/accumulate.rkt")
(require "2_40.rkt")

;; Using unique-pairs

;(define (unique-triples n)
;  (flatmap (lambda (i) 
;             (map (lambda (j)
;                    (cons i j))
;                  (unique-pairs (- i 1))))
;           (enumerate-interval 1 n)))

;; Direct define

(define (unique-triples n)
  (flatmap (lambda (i)
             (flatmap (lambda (j)
                        (map (lambda (k) (list i j k))
                             (enumerate-interval 1 (- j 1))))
                      (enumerate-interval 1 (- i 1))))
           (enumerate-interval 1 n)))

(define (sequence-sum-equal-to? sum seq)
  (= (accumulate + 0 seq) sum))

(define (triple-sum-equal-to sum triple)
  (filter (lambda (current-triple)
            (sequence-sum-equal-to? sum current-triple))
          triple))

;; Test

(triple-sum-equal-to 10 (unique-triples 13))
