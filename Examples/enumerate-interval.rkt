#lang racket
;; Example in 2.2.3
;; Enumerate Interval

(define (enumerate-interval low high)
  (if (> low high)
      '()
      (cons low (enumerate-interval (+ low 1) high))))

(provide enumerate-interval)