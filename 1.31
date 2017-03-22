#lang sicp
(define (square x) (* x x))

(define (pi-term n)
  (/ (* (* 2 n)
        (+ (* 2 n) 2))
     (square (+ (* n 2) 1) )))

(define (inc x) (+ x 1))

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (product-i term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (* result term(a)))))
  (iter a 1))

(define (pi n)
  (* 4 (product pi-term 1 inc n)))

(pi 10)
(pi 100)
(pi 1000)
(pi 10000)

(define (pi-i n)
  (* 4 (product-i pi-term 1 inc n)))

(pi 10)
(pi 100)
(pi 1000)
(pi 10000)
