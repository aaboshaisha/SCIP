#lang planet neil/sicp

;Ex 1.11: a function f in iteraive and recursive processes

; iterative process
(define (f n)
  (f-iter 2 1 0 n))

(define (f-iter a b c count)
  (if (= count 0) c
  (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))


; recursive process
(define (f-rec n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        ((= n 2) 2)
        (else (+ (f-rec (- n 1)) (* 2 (f-rec (- n 2))) (* 3 (f-rec (- n 3)))))))
