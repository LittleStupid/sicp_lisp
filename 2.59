#lang sicp

(define (element-of-set? x set)
  (cond ((null? set) false)
        ((equal? x (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
  (if (element-of-set? x set)
      set
      (cons x set)))

(define (union-set set1 set2)
  (if (not (null? set1))
      (union-set (cdr set1) (adjoin-set (car set1) set2))
      set2))

(define b (list 11 12 13))
(define c (list 19 20 11))

(union-set b c)
