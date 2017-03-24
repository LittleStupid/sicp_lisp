#lang sicp

(define (make-monitored f)
  (let ((count 0))
   (define (dispatch m)
     (cond ((eq? m 'how-many-calls?)
            (begin (set! count (+ count 1)) count))
           (else (f m))))
   dispatch))

(define s (make-monitored sqrt))

(s 100)

(s 'how-many-calls?)
