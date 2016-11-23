#lang racket
;; Excercise 2.70

(require "../Examples/huffman-trees.rkt")
(require "2_68.rkt")
(require "2_69.rkt")

(define tree (generate-huffman-tree '(
                                      (a 2) (na 16)
                                            (boom 1) (Sha 3)
                                            (Get 2) (yip 9)
                                            (job 2) (Wah 1))))

(define msg-1 '(Get a job))
(define msg-2 '(Sha na na na na na na na na))
(define msg-3 '(Wah yip yip yip yip yip yip yip yip yip))
(define msg-4 '(Sha boom))

(define song (list msg-1 msg-2 msg-1 msg-2 msg-3 msg-4))

(map (lambda (x) (encode x tree)) song)
