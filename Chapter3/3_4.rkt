#lang racket
;; Exercise 3.4

(define (make-account balance password)

  (let ((max-try 7)
        (try 0))
    
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

    (define (call-the-cops m)
      (error "call the cops"))
    
    (define (dispatch given-password m)
      (if (password-correct? given-password)
          (begin
            (set! try 0)
            (cond ((eq? m 'withdraw) withdraw)
                  ((eq? m 'deposit) deposit)
                  (else (error "Unknown request -- MAKE_ACCOUNT"
                               m))))
          (begin
            (set! try (+ 1 try))
            (if (>= try max-try)
                call-the-cops
                display-wrong-password-message))))
    
    dispatch))

;; test

(define acc (make-account 100 'secret-password))
((acc 'wrong-password 'withdraw) 50)
((acc 'wrong-password 'withdraw) 50)
((acc 'wrong-password 'withdraw) 50)
((acc 'wrong-password 'withdraw) 50)
((acc 'wrong-password 'withdraw) 50)
((acc 'wrong-password 'withdraw) 50)
((acc 'wrong-password 'withdraw) 50)
((acc 'wrong-password 'withdraw) 50)
((acc 'wrong-password 'withdraw) 50)
((acc 'wrong-password 'withdraw) 50)