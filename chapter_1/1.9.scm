(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

;(+ 4 5)
;(inc (+ 3 5))
;(inc (inc (inc (+ 2 5))))
;(inc (inc (inc (inc (+ 1 5)))))
;(inc (inc (inc (inc (inc (+ 0 5))))))
;(inc (inc (inc (inc (inc 5)))))
;(inc (inc (inc (inc 6))))
;(inc (inc (inc 7)))
;(inc (inc 8))
;(inc 9)
;10
;是递归的

(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))

;(+ 4 5)
;(+ 3 6)
;(+ 2 7)
;(+ 1 8)
;(+ 0 9)
;是迭代的
