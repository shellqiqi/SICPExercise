#lang racket
;; Exercise 2.54

(define (equal? x y)
  (cond ((and (symbol? x) (symbol? y))
         (eq? x y))
        ((and (list? x) (list? y))
         (cond ((and (null? x) (null? y))
                #t)
               ((or (null? x) (null? y))
                #f)
               ((equal? (car x) (car y))
                (equal? (cdr x) (cdr y)))
               (else
                #f)))
        (else
         #f)))

;; test

(equal? '(this is a list) '(this is a list))
(equal? '(this is a list) '(this (is a) list))