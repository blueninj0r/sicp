Chapter 1 Exercises
===================

1.2
---

(/ (+ 5 (- 2 (- 3 (+ 6 (/ 1 3))))) (* 3 (- 6 2) (- 7 2)))

1.5
---

Normal order evaluation - Expand fully then reduce. Only expand when a value is required.
Applicative order evaluation - Evaluate arguments then apply, i.e. evaluate operator and operands and apply resulting procedure to arguments immediately (the arguments could be further operators and operands).

Applicative order evaluation will not work. Under normal order, the (p) argument in (test 0 (p)) will never be evaluated as the if expression will always return 0. Under applicative order, the interpreter will try and substiture (p) with another (p) and another and another and...
