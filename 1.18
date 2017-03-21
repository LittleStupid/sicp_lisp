(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (even? x)
  (= (remainder x 2) 0))

(define (mul-iter a b product)
  (cond ((= a 0) product)
        ((even? a) (mul-iter (halve a) (double b) product))
        (else (mul-iter (halve (- a 1)) (double b) (+ product b)))))

(define (mul a b)
  (mul-iter a b 0))

(mul 3 4)
(mul 4 4)
(mul 0 1)
(mul 9 9)
