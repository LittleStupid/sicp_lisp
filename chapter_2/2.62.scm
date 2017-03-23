#lang sicp

(define (element-of-set? x set)
  (cond ((null? set) false)
        ((< x (car set)) false)
        ((= x (car set)) true)
        (else (element-of-set? x (cdr set)))))

(define (intersect-set set1 set2)
  (cond ((null? set1) set2)
        ((null? set2) set1)
        ((= (car set1) (car set2))
         (cons (car set1)
               (intersect-set (cdr set1) (cdr set2))))
        ((< (car set1) (car set2))
         (intersect-set (cdr set1) set2))
        (else
         (intersect-set set1 (cdr set2)))))

(define (union-set set1 set2)
  (cond ((null? set1) set2)
        ((null? set2) set1)
        ((= (car set1) (car set2))
         (cons (car set1)
               (union-set (cdr set1) (cdr set2))))
        ((< (car set1) (car set2))
         (cons (car set1)
               (union-set (cdr set1) set2)))
        (else
         (cons (car set2)
               (union-set set1 (cdr set2))))))

(define x (list 1 3 5 6))
(define y (list 2 4 5 6 9))
(intersect-set x y)
(union-set x y)
