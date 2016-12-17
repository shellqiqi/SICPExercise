#lang racket
;; Exercise 3.2

(define (make-monitored proc)
  (let ((count 0))
    (define (dispatch m)
      (cond ((eq? m 'how-many-calls?)
             count)
            ((eq? m 'reset-count)
             (set! count 0))
            (else (begin (set! count (+ count 1))
                         (proc m)))))
    dispatch))
          
        