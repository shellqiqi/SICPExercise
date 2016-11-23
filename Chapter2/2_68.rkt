#lang racket
;; Exercise 2.68

(require "../Examples/huffman-trees.rkt")

(define (encode message tree)
  (if (null? message)
      '()
      (append (encode-symbol (car message) tree)
              (encode (cdr message) tree))))


(define (encode-symbol symbol tree)
    (cond ((leaf? tree)
            '())
          ((symbol-in-tree? symbol (left-branch tree))
            (cons 0
                  (encode-symbol symbol (left-branch tree))))
          ((symbol-in-tree? symbol (right-branch tree))
            (cons 1
                  (encode-symbol symbol (right-branch tree))))
          (else
            (error "This symbol not in tree: " symbol))))

(define (symbol-in-tree? given-symbol tree)
  (not 
   (null?
    (filter (lambda (s)
              (eq? s given-symbol))
            (symbols tree)))))

;; test

;(define sample-tree
;        (make-code-tree (make-leaf 'A 4)
;                        (make-code-tree
;                            (make-leaf 'B 2)
;                            (make-code-tree (make-leaf 'D 1)
;                                            (make-leaf 'C 1)))))

;(encode (list 'A 'D 'A 'B 'B 'C 'A) sample-tree)

(provide encode)