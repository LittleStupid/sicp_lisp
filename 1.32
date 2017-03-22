#lang sicp
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumulate combiner null-value term (next a) next b))))

(define (accumulate-i combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a)
              (combiner result term(a)))))
  (iter a null-value))


(define (square x) (* x x))

(define (pi-term n)
  (/ (* (* 2 n)
        (+ (* 2 n) 2))
     (square (+ (* n 2) 1) )))

(define (inc x) (+ x 1))

(define (pi n)
  (* 4 (accumulate * 1 pi-term 1 inc n)))

(pi 10)
(pi 100)
(pi 1000)
(pi 10000)

(define (pi-i n)
  (* 4 (accumulate-i * 1 pi-term 1 inc n)))

(pi 10)
(pi 100)
(pi 1000)
(pi 10000)
