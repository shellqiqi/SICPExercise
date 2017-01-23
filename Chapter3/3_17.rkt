;; Choose R5RS language
;; Exercise 3.17

(load "./3_13.rkt")

(define (count-pairs x)
  (length (count x '())))

(define (count x record)
  (if (and (pair? x) (not (memq x record)))
      (count (car x)
             (count (cdr x)
                    (cons x record)))
      record))

;(count-pairs (make-cycle (list 'a 'b 'c)))