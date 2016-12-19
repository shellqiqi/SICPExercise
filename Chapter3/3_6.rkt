#lang racket
;; Exercise 3.5

(define random-init 1008611)

(define (random-update x)
  (* (modulo x (/ 4294967086 2)) 2))

(define new-rand
  (let ((last-random random-init))
    (lambda (mode)
      (cond ((eq? mode 'generate)
             (begin 
               (set! last-random (random-update last-random))
               last-random))
            ((eq? mode 'reset)
             (lambda (new-value) 
               (set! last-random new-value)
               last-random))
            (else
             (error "Unknow mode -- RAND" mode))))))
