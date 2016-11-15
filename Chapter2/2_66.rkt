#lang racket
;; Exercise 2.66

(define (lookup given-key tree-of-records)
  (let ((entry-key (key (entry tree-of-records))))
    (cond ((null? tree-of-records) false)
          ((= given-key entry-key)
           (entry tree-of-records))
          ((< given-key entry-key)
           (lookup given-key (left-branch tree-of-records)))
          ((> given-key entry-key)
           (lookup given-key (right-branch tree-of-records))))))
        