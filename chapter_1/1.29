#lang sicp
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (halve x)
  (/ x 2))

(define (inc x)
  (+ x 1))

(define (simpson f a b n)
  (define (h) (/ (- b a) n))

  (define (yk k)
    (f (+ a (* k (h)))))

  (define (y-term m)
    (+ (* 4
          (yk (- (* m 2) 1)))
        (* 2
           (yk (* m 2)))))

  (/ (* (h)
        (+ (yk 0) (yk n) (sum y-term 1 inc (halve n))))
     3))


(define (cube x) (* x x x))

(simpson cube 0 1 100)
(simpson cube 0 1 1000)
