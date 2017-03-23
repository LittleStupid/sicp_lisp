(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3)))
         )))

(define (f-iter a b c n)
  (if (= n 0)
      c
      (f-iter (+ a
                 (* 2 b)
                 (* 3 c))
              a
              b
              (- n 1)))
)


(define (ff n)
  (f-iter 2 1 0 n))

(f 0)
(f 1)
(f 2)
(f 3)
(f 9)
(f 11)

(ff 0)
(ff 1)
(ff 2)
(ff 3)
(ff 9)
(ff 11)
