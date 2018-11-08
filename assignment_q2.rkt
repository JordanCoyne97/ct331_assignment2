#lang racket

;A
(provide ins_beg)
(define (ins_beg element list)
  (cons element list))

;B
(provide ins_end)
(define (ins_end element list)
  (append list (list element)))


;C
(provide cout_top_level)
(define (cout_top_level list)
    (cond [(null? list) 0]
     
    [else (+ 1 (cout_top_level (cdr list)))]))

;D
(provide count_instances)
(define (count_instances atomic list)
  
   (cond ((null? list)0)
         
   ((= atomic (car list))(+ 1(count_instances atomic (cdr list))))
      
   ((count_instances atomic (cdr list)))
   ))


;E
(provide count_instances_tr)
(define (count_instances_tr atomic list)

  (count_instances_tr atomic list 0))

  (define (helper_count_instances_tr item lst count)
  (cond [(empty? lst) count]
        [(equal? item (car lst)) (helper_count_instances_tr item (cdr lst) (+ 1 count))]
        [else (helper_count_instances_tr item (cdr lst) count)]))
  
;F
(provide count_instances_deep)
(define (count_instances_deep atomic list)
  
  (cond [(empty? list) 0]
        
  [(list? (car list)) (+ (count_instances_deep atomic (car list)) (count_instances_deep atomic (cdr list))) ]
     
  [(equal? atomic (car list)) (+  1 (count_instances_deep atomic (cdr list)))]
        
  [else (count_instances_deep atomic (cdr list))]))

  