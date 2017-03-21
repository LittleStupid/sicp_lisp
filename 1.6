(define (new-if predicate then-clause else-clause)
    (cond (predicate then-clause)
          (else else-clause)))

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2)
)

(define (good-enough? guess x)
  (< (abs
        (- (square guess)
            x))
      0.001)
)

(define (improve guess x)
  (average guess (/ x guess))
)

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x))
)

(define (sqrt x)
  (sqrt-iter 1.0 x)
)

(sqrt 9)
(sqrt 99)
(sqrt 10011)


;if语句，if <predicate> <consequent> <alternative>
;先求值predicate,然后根据求值结果来决定接下来求值<consequent>
;还是<alternative>

;new-if是一个方法，求值采用应用序，一开始就对所有的参数进行求值，
;这样导致 new-if sqrt-iter 循环调用，最终栈溢出.
