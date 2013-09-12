#! /usr/bin/env racket
#lang racket

(define (sum-of-squares x y)
  (+ (* x x) (* y y)))

(define (max-squares x y z)
  (cond 
    ((and (> x z) (> y z)) (sum-of-squares x y))
    ((and (> x y) (> z y)) (sum-of-squares x z))
  	((and (> z x) (> y x)) (sum-of-squares y z))))

(max-squares -1 -2 3)