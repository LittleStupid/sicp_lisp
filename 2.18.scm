#lang sicp

(define (reverse m)
  (if (null? (cdr m))
      (car m)
      (cons (reverse (cdr m))
            (car m))))

(reverse (list 1 4 9 16 25))
(reverse (list 1 4))
(reverse (list 1))
