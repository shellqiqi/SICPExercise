#lang racket
;; Exercise 1.11

(define (f-r n)
  (if (< n 3) n
      (+ (f-r (- n 1))
         (* 2 (f-r (- n 2)))
         (* 3 (f-r (- n 3))))))

(define (f-i n)

  (define (f-itr a b c count)
    (cond ((= count 0) c)
          ((= count 1) b)
          ((= count 2) a)
          (else (f-itr (+ a
                          (* 2 b)
                          (* 3 c))
                       a
                       b
                       (- count 1)))))

  (f-itr 2 1 0 n))

(f-r 5)
(f-i 5)
(f-r 7)
(f-i 7)
(f-r 13)
(f-i 13)
;; inefficient
;; (f-r 5645)
(f-i 5645)