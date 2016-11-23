#lang racket
;; Exercise 2.69

(require "../Examples/huffman-trees.rkt")

(define (generate-huffman-tree pairs)
  (successive-merge (make-leaf-set pairs)))

(define (successive-merge s)
  (cond ((= 0 (length s))
         '())
        ((= 1 (length s))
         (car s))
        (else
         (let ((new-sub-tree (make-code-tree (car s)
                                             (cadr s)))
               (remained-set (cddr s)))
           (successive-merge (adjoin-set new-sub-tree remained-set))))))

;; test

(generate-huffman-tree '((A 4) (B 2) (C 1) (D 1)))