#lang planet neil/sicp
;Exercise 1.3: Define a procedure that takes three numbers as arguments
;and returns the sum of the squares of the two larger numbers.

(define (square x) (* x x))

(define (sum-squares x y) (+ (square x) (square y)))

(define (square-two-larger a b c)
  (cond ((> a b c) (sum-squares a b))
        ((> a c b) (sum-squares a c))
        ((> b a c) (sum-squares b a))
        ((> b c a) (sum-squares b c))
        ((> c a b) (sum-squares c a ))
        ((> c b a) (sum-squares c b))))
