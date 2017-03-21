(define (square x) (* x x))

(define (even? x)
  (= (remainder x 2) 0))

(define (expt-it a b n)
  (cond ((= n 0) a)
        ((even? n) (expt-it a (square b) (/ n 2)))
        (else (expt-it (* a b) (square b) (/ (- n 1) 2)))))

(define (expt b n)
  (expt-it 1 b n))

(expt 2 3)
(expt 2 4)
(expt 2 5)
(expt 3 15)
(expt 9 99)
(expt 4 44)
