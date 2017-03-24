#lang sicp

(define (make-account balance password)
  (let ((access-password 'acs-pwd))

    (define (withdraw amount)
      (if (>= balance amount)
          (begin (set! balance (- balance amount))
                 balance)
          "Insufficient funds"))
    (define (deposit amount)
      (set! balance (+ balance amount))
      balance)

    (define (incorrect-password amount)
      (begin (newline)
             (display password)
             (newline)
             (display access-password)
             'Incorrect-password))

    (define (set-access-password new-access-password)
      (set! access-password new-access-password))

    (define (dispatch secret m)
      (cond ((not (or (equal? password secret)
                      (equal? access-password secret)))
             incorrect-password)
            ((eq? m 'withdraw) withdraw)
            ((eq? m 'deposit) deposit)
            ((eq? m 'set-access-password) set-access-password)
            (else (display 'unknow-request))))
    dispatch))


(define (make-joint acc acc-password my-password)
  (begin ((acc acc-password 'set-access-password) my-password)
         acc))

(define paul-acc (make-account 100 'paul))

(define tom-acc
  (make-joint paul-acc 'paul 'tom))

((paul-acc 'paul 'withdraw) 40)
((tom-acc 'tom 'deposit) 50)
