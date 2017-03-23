#lang sicp
(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (newline)
      (display next)
      (if (close-enough? guess next)
      next
      (try next))))
  (try first-guess))

(define (average a b) (/ (+ a b) 2))
(define (rt-avg x)
  (fixed-point (lambda (y) (average y (/ (log x) (log y)))) 11.0))

(define (rt x)
  (fixed-point (lambda (y) (/ (log x) (log y))) 11.0))

(rt 1000)
(newline)
(rt-avg 1000)
