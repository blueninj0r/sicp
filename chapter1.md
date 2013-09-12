Chapter 1 Exercises
===================

1.1
---

* 10 - 10
* (+ 5 3 4) - 12
* (- 9 1) - 8
* (/ 6 2) - 3
* (+ (* 2 4) (- 4 6)) - 6
* (define a 3) - 3
* (define b (+ a 1)) - 4
* (+ a b (* a b)) - 19
* (= a b) - #f
* (if (and (> b a) (< b (* a b))) b a) - 4
* (cond ((= a 4) 6) ((= b 4) (+ 6 7 a)) (else 25)) - 16
* (+ 2 (if (> b a) b a)) - 6
* (* (cond ((> a b) a) ((< a b) b) (else -1)) (+ a 1)) - 16
* 
1.4
---

This function will take two values a and b. If b is negative (or zero) the function does a - b, otherwise it does a + b. Effectively always adding the absolute value of b to a.

1.5
---

Normal order evaluation - Expand fully then reduce. Only expand when a value is required. Applicative order evaluation - Evaluate arguments then apply, i.e. evaluate operator and operands and apply resulting procedure to arguments immediately (the arguments could be further operators and operands).

Applicative order evaluation will not work. Under normal order, the (p) argument in (test 0 (p)) will never be evaluated as the if expression will always return 0. Under applicative order, the interpreter will try and substiture (p) with another (p) and another and another and...

1.6
---

Under applicative order, the parser will try and expand the square-iter function infinitely. This is not an issue with the way the if special form is parsed.
