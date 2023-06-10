#lang planet neil/sicp
(define (square x) (* x x))
(define (cube x) (* x x x))

(define (improve y x)
  (/ (+(/ x (square y)) (* 2 y)) 3))

(define (good-enough? y x)
  (< (/ (abs (- (abs y) (abs (improve y x)))) (abs y)) (* (abs y) 0.0000000000000001)))
  
;(define (good-enough? y x)
;(< (abs (- (cube y) x)) 0.001))

(define (cube-root-iter y x)
  (if (good-enough? y x)
      y
      (cube-root-iter (improve y x) x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))