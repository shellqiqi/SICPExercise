#lang racket
;; Exercise 3.3

(define (make-account balance password)
  (define (withdraw amount)
    (if (>= balance amount)
        (begin (set! balance (- balance amount))
               balance)
        "Insufficient funds"))

  (define (deposit amount)
    (set! balance (+ balance amount))
    balance)

  (define (password-correct? given-password)
    (eq? given-password password))

  (define (display-wrong-password-message arg)
    "Incorrect password")

  (define (dispatch given-password m)
    (if (password-correct? given-password)
        (cond ((eq? m 'withdraw) withdraw)
              ((eq? m 'deposit) deposit)
              (else (error "Unknown request -- MAKE_ACCOUNT"
                           m)))
        display-wrong-password-message))
  
  dispatch)