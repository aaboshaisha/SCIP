#lang planet neil/sicp
 
(define a (* 5 5))
(define (square x) (* x x))

-37
(* 3 4)
(> 10 9.7)

(- (if (> 3 4 )
       7
       10)
   (/ 16 10))

(* (- 25 10)
   (+ 6 3))
+

(define double (lambda (x) (* 2 x)))
double
(define c 4)
(double c)
c
(double (double (+ c 5)))
(define times-2 double)
(times-2 c)
(define d c)
(= c d)

;this is a comment
(cond ((>= c 2) d)
      ((= c (- d 5)) (+ c d))
      (else (abs (- c d))))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

