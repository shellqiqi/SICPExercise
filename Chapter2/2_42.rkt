#lang racket
;; Exercise 2.42
;; Queens

(require "../Examples/enumerate-interval.rkt")
(require "../Examples/flatmap.rkt")

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions) (safe? k positions))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))

(define empty-board '())

(define (adjoin-position row col rest-of-queens)
  (cons row rest-of-queens))

(define (safe? col pos)

  (define (itr-check new-queen prev-queen i)
    (if (null? prev-queen)
        #t
        (let ((check-queen (car prev-queen)))
          (if (or (= new-queen check-queen)
                  (= new-queen (- check-queen i))
                  (= new-queen (+ check-queen i)))
              #f
              (itr-check new-queen (cdr prev-queen) (+ i 1))))))

  (itr-check (car pos) (cdr pos) 1))
  