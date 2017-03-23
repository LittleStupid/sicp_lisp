#lang sicp

(define (last-pair m)
  (if (null? (cdr m))
      (car m)
      (last-pair (cdr m))))

(last-pair (list 23 72 149 34))
