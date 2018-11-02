#lang racket
(cons 1 2)

(cons 1 (cons 2 (cons 3 empty)))

(cons "para" (cons 1 (cons (cons 1 (cons 2 (cons 3 empty))) '())))

(list "para" '1 (list 2 3 4 ))

(append '("para") '(1) '((3 4 5)))