;; Choose R5RS language
;; Exercise 3.18

(load "./3_13.rkt")

(define (cycle? lst)
  (let ((identity 'identity))
    (define (iter remain-list)
      (cond ((null? remain-list)
             #f)
            ((eq? identity (car remain-list))
             #t)
            (else
             (set-car! remain-list identity)
             (iter (cdr remain-list)))))
    (iter lst)))

;(cycle? (make-cycle (list 'a 'b 'c)))