;; Choose R5RS language
;; Exercise 3.22

(define (make-queue)
  
  (let ((front-ptr '())
        (rear-ptr '()))
    
    (define (insert-queue! item)
      (let ((new-item (list item)))
        (cond ((empty-queue?)
               (set! front-ptr new-item)
               (set! rear-ptr new-item)
               front-ptr)
              (else
               (set-cdr! front-ptr new-item)
               (set! rear-ptr new-item)
               front-ptr))))
    
    (define (delete-queue!)
      (cond ((empty-queue?)
             (display "DELETE! called with an empty queue"))
            (else
             (set! front-ptr (cdr front-ptr))
             front-ptr)))
    
    (define (empty-queue?)
      (null? front-ptr))
    
    (define (dispatch m)
      (cond ((eq? m 'insert-queue!)
             insert-queue!)
            ((eq? m 'delete-queue!)
             (delete-queue!))
            ((eq? m 'empty-queue?)
             (empty-queue?))
            (else
             (display "Unknow operation -- DISPATCH"))))
    
    dispatch))

;(define q1 (make-queue))
;(insert-queue! q1 'a)
;(insert-queue! q1 'b)
;(delete-queue! q1)
;(delete-queue! q1)