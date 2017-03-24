#lang sicp

(define (make-accumulator value)
  (lambda (amount)
    (begin (set! value (+ amount value))
           value)))

(define A (make-accumulator 5))
(A 10)
(A 15)

(define B (make-accumulator 10))
(B 1)
(B 2)
