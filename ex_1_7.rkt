#! /usr/bin/env racket
#lang racket

(define (sqrt-iter guess prev x)
  (if (good-enough? guess prev x)
      guess
      (sqrt-iter (improve guess x)
                 guess
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess prev x)
  (and (< (/ guess prev) 1.01)
       (> (/ guess prev) .99)))

(define (square x) (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))

(sqrt 9)
(sqrt 0.0001)
(sqrt 1000000000000)
(sqrt 10000000000000)