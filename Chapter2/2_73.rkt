#lang racket
;; Exercise 2.73

(define (deriv exp var)
  (cond ((number? exp) 0)
        ((variable? exp) (if (same-variable? exp var) 1 0))
        (else ((get 'deriv (operator exp))
               (operands exp) var))))
(define (operator exp) (car exp))
(define (operands exp) (cdr exp))

(define (install-sum-package)
  ;; internal procedures
  (define (addend s) (car s))
  (define (augend s) (cadr s))
  (define (make-sum x y)
    (cond ((=number? x 0) y)
          ((=number? y 0) x)
          ((and (number? x) (number? y))
           (+ x y))
          (else
           (attach-tag 'x x y))))
  ;; interface to the rest of the system
  (put 'addend '+ addend)
  (put 'augend '+ augend)
  (put 'make-sum '+ make-sum)
  (put 'deriv '+
       (lambda (exp var)
         (make-sum (deriv (addend exp) var)
                   (deriv (augend exp) var))))
  'done)

(define (make-sum x y)
    ((get 'make-sum '+) x y))
(define (addend sum)
    ((get 'addend '+) (contents sum)))
(define (augend sum)
    ((get 'augend '+) (contents sum)))