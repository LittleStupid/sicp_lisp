#lang sicp
(define (compose f g)
  (lambda (x)
    (f (g x))))

(define (square x) (* x x))
(define (inc x) (+ x 1))

(define (repeated f n)
  (if (= n 1)
      f
      (repeated (compose f f)
                (- n 1))))

(define dx 0.00001)
(define (smooth f)
  (lambda (x)
    (/ (+ (f (- x dx))
          (f x)
          (f (+ x dx)))
        3)))

(define (smooth-n f n)
  ((repeated smooth n) f))

((smooth square) 25)
((smooth-n square 5) 25)
