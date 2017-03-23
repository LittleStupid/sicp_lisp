#lang sicp

(define (element-of-set? x set)
  (cond ((null? set) false)
        ((< x (car set)) false)
        ((= x (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define (adjoin-set x set)
  (cond ((null? set) (cons x '()))
        ((= x (car set)) set)
        ((< x (car set)) (cons x set))
        (else (cons (car set)
                    (adjoin-set x (cdr set))))))


(define x (list 1 2 3 4 5 6 9 11 23))
(element-of-set? 1 x)
(element-of-set? 9 x)

(adjoin-set 9 x)
(adjoin-set 15 x)
(adjoin-set 199 x)
