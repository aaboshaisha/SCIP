#lang planet neil/sicp
(define (square x) (* x x))
(define (cube x) (* x x x))

(define (improve y x)
  (/ (+(/ x (square y)) (* 2 y)) 3))


(define (good-enough? y_prev y)
  (< (abs (/ (- y_prev y) y)) 0.00000000001))


(define (cube-root-iter y x)
  (if (good-enough? (improve y x) y)
      y
      (cube-root-iter (improve y x) x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))