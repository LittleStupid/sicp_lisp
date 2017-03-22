#lang sicp
(define (double proc)
  (lambda(x)
    (proc (proc x))))

(define (inc x) (+ x 1))

(inc 3)
((double inc) 3)
((double (double inc)) 3)
(((double (double double)) inc) 3)
