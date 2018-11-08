#lang racket

;A
(define tree'(((() 1 ()) 2 (() 4 ())) 6 ((() 11 ()) 15 (() 16 ()))))

(define (display_tree tree)
  (begin (cond [(not (empty? (car tree)))
                (display_tree  (car tree))])
         (display  (cadr tree))(display"\n")
         (cond [(not (empty? (caddr tree)))
                (display_tree  (caddr tree))])))


;B
(define (present_in_tree item tree)
  (cond [(empty? tree) #f]
        [(equal? item (cadr tree)) #t]
       
        [(< item (cadr tree)) (present_in_tree item (car tree))]
        [else (present_in_tree item (caddr tree))]))

;C
(define (insert_element item lst)
  (cond
    [(empty? lst) (append lst (list '() item '()))]
    [(equal? item (cadr lst)) "found"]
    [(< item (cadr lst)) (list (insert_element item (car lst)) (cadr lst) (caddr lst))]
    [else (list (car lst) (cadr lst) (insert_element item (caddr lst)))]
    ))

;D
(define (insert_list lst tree)
  (cond
   [(empty? lst) tree]
   [else (insert_list (cdr lst) (insert_element (car lst) tree))]
  ))


;E
(define (tree_sort lst)
  (display_tree (insert_list lst '()))
  )


;F
