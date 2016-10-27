#lang racket
(require math)
;; Exercise 2.40

(require "../Examples/enumerate-interval.rkt")
(require "../Examples/flatmap.rkt")
(require "../Examples/accumulate.rkt")

(define (unique-pairs n)
  (flatmap (lambda (i)
             (map (lambda (j) (list i j))
                  (enumerate-interval 1 (- i 1))))
           (enumerate-interval 1 n)))

(define (make-pair-sum pair)
  (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))

(define (prime-sum? pair)
  (prime? (+ (car pair) (cadr pair))))

(define (prime-sum-pairs n)
  (map make-pair-sum
       (filter prime-sum?
               (unique-pairs n))))

;; Test

;(prime-sum-pairs 6)

(provide unique-pairs)