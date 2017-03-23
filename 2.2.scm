#lang sicp
(define (make-segment p q)
  (cons p q))

(define (start-segment seg)
  (car seg))

(define (end-segment seg)
  (cdr seg))

(define (make-point x y)
  (cons x y))

(define (x-point p)
  (car p))

(define (y-point p)
  (cdr p))

(define (average x y)
  (/ (+ x y)
     2))

(define (midpoint-segment seg)
  (make-point (average (x-point (start-segment seg))
                      (x-point (end-segment seg)))
             (average (y-point (start-segment seg))
                      (y-point (end-segment seg)))))

(define (print-point p)
  (newline)
  (display "<")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ">"))

(define a (make-point 4 5))
(define b (make-point 7 10))
(define c (make-segment a b))

(print-point a)
(print-point b)
(print-point (midpoint-segment c))
