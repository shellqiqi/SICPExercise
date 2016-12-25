;; Choose R5RS language
;; Exercise 3.12

(define x (list 'a 'b))
(define y (list 'c 'd))
(define z (append x y))

z
; (a b c d)

(cdr x)
; <response>

(define (append! x y)
  (set-cdr! (last-pair x) y)
  x)
(define (last-pair x)
  (if (null? (cdr x))
      x
      (last-pair (cdr x))))
(define w (append! x y))

w

(cdr x)
