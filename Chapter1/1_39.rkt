#lang racket
;; Example 1.39

(define (n i x)
  (if (= i 1)
      x
      (- (expt x 2))))

(define (d i)
  (- (* i 2) 1))

(define (cont-frac n d k x)
  (define (itr result count)
    (if (= count 0)
        result
        (itr (/ (n count x) (+ (d count) result))
             (- count 1))))
  (itr (/ (n k x) (d k)) (- k 1)))

(define (tan-cf x k)
  (cont-frac n d k x))

(tan-cf 1.0 100)
(tan-cf 2.0 100)
(tan-cf 3.0 100)