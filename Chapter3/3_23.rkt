;; Choose R5RS language
;; Exercise 3.23


(define (front-ptr deque) (car deque))
(define (rear-ptr deque) (cdr deque))
(define (set-front-ptr! deque item) (set-car! deque item))
(define (set-rear-ptr! deque item) (set-cdr! deque item))

(define (empty-deque? deque) (null? (front-ptr deque)))

(define (make-deque) (cons '() '()))

(define (front-deque deque)
  (if (empty-deque? deque)
      (display "FRONT called with an empty deque")
      (car (front-ptr deque))))

(define (rear-deque deque)
  (if (empty-deque? deque)
      (display "REAR called with an empty deque")
      (car (rear-ptr deque))))

(define (insert-rear-deque! deque item)
  (let ((new-pair (cons item '())))
    (cond ((empty-deque? deque)
           (set-front-ptr! deque new-pair)
           (set-rear-ptr! deque new-pair)
           (print-deque deque))
          (else
           (set-cdr! (rear-ptr deque) new-pair)
           (set-rear-ptr! deque new-pair)
           (print-deque deque)))))

(define (delete-front-deque! deque)
  (cond ((empty-deque? deque)
         (display "DELETE-FRONT! called with an empty deque"))
        (else
         (set-front-ptr! deque (cdr (front-ptr deque)))
         (print-deque deque))))

(define (insert-front-deque! deque item)
  (cond ((empty-deque? deque)
         (insert-rear-deque! deque item))
        (else
         (set-front-ptr! deque (cons item (front-ptr deque)))
         (print-deque deque))))

(define (delete-rear-deque! deque)
  (define (delete-rear deque lst)
    (cond ((null? (cddr lst))
           (set-cdr! lst '())
           (set-rear-ptr! deque lst)
           (print-deque deque))
          (else
           (iter deque (cdr lst)))))
  (cond ((null? (cdr (front-ptr deque)))
         (set-front-ptr! deque '())
         (print-deque deque))
        (else
         (delete-rear deque (front-ptr deque)))))

(define (print-deque deque)
  (car deque))

;(define q1 (make-deque))
;(insert-rear-deque! q1 'a)
;(insert-front-deque! q1 'b)
;(delete-rear-deque! q1)
;(delete-front-deque! q1)
