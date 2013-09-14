#! /usr/bin/env racket
#lang racket

(define (curt-iter guess prev x)
  (if (good-enough? guess prev x)
      guess
      (curt-iter (improve guess x)
                 guess
                 x)))

(define (improve guess x)
  (/
    (+ (/ x (square guess)) (* 2 guess))
    3))   

(define (good-enough? guess prev x)
     (< (abs (- guess prev)) 
      (* guess 0.001))) 

(define (square x) (* x x))

(define (curt x)
  (curt-iter 1.0 0.0 x))

(curt 125)
(curt 729)