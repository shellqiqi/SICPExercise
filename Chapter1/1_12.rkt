#lang racket
;; Exercise 1.12

(define (pascal row col)
  (cond ((> col row)
         (error "unvalid col num"))
        ((or (= col 1) (= col row))
            1)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))

(pascal 3 2)
(pascal 8 4)