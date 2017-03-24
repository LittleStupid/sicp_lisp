#lang sicp

(define (make-account balance password)
  (let ((wrong-count 0))
    (define (withdraw amount)
      (if (>= balance amount)
          (begin (set! balance (- balance amount))
                 balance)
          "Insufficient funds"))

    (define (deposit amount)
      (set! balance (+ balance amount))
      balance)

    (define (incorrect-password amount)
      (begin (set! wrong-count (+ 1 wrong-count))
             'Incorrect-password))

    (define (call-police amount)
      'Police!!!)

    (define (dispatch secret m)
      (cond ((>= wrong-count 7) call-police)
            ((not (equal? password secret)) incorrect-password)
            ((eq? m 'withdraw) withdraw)
            ((eq? m 'deposit) deposit)
            (else (display 'unknow-request))))
    dispatch))

(define acc (make-account 100 'secret-password))

((acc 'secret-password 'withdraw) 40)

((acc 'some-other-password 'desposit) 50)
((acc 'some-other-password 'desposit) 50)
((acc 'some-other-password 'desposit) 50)
((acc 'some-other-password 'desposit) 50)
((acc 'some-other-password 'desposit) 50)
((acc 'some-other-password 'desposit) 50)
((acc 'some-other-password 'desposit) 50)

((acc 'some-other-password 'desposit) 50)
