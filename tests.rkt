#lang racket

(require (file "assignment_q2.rkt")
         (file "assignment_q3.rkt"))

;
;Don't worry about this file unless you are doing the extra credit tests. 
;

;This structure allows a single function call
;to run every test in sequence, rather than
;calling each function separately. 

  (define (runTests)
  (begin
    (display "Running tests...\n")
    ;begin calling test functions
    (printf "1: ~a~n" (test_ins_beg))
    (printf "1: ~a~n" (test_ins_beg2))
    (printf "2: ~a~n" (test_ins_end))
    (printf "2: ~a~n" (test_ins_end2))
    (printf "3: ~a~n" (test_cout_top_level))
    (printf "3: ~a~n" (test_cout_top_level2))
    (printf "4: ~a~n" (test_count_instances))
    (printf "4: ~a~n" (test_count_instances2))
    (printf "5: ~a~n" (test_count_instances_tr))
    (printf "5: ~a~n" (test_count_instances_tr2))
    (printf "6: ~a~n" (test_count_instances_deep))
    (printf "6: ~a~n" (test_count_instances_deep2))
   
    ;end calling test functions
    (display "\nTests complete!\n")))

;true test
(define (test_ins_beg)(equal? '(1 2 3 4) (ins_beg '1 '(2 3 4))))
;false test
(define (test_ins_beg2)(equal? '(4 5 6) (ins_beg '3 '(4 5 6))))

;true test
(define (test_ins_end) (equal? '(1 2 3 4 ) (ins_end '4 '(1 2 3))))
;false test
(define (test_ins_end2) (equal? '(4 2 3 1 ) (ins_end '4 '(1 2 3))))

;true test
(define (test_cout_top_level) (equal? 4 (cout_top_level '(1 2 3 4))))
;false test
(define (test_cout_top_level2) (equal? 3 (cout_top_level '(1 2 3 4))))

;true test
(define (test_count_instances) (equal? 5 (count_instances '1 '(1 1 1 2 1 1))))
;false test
(define (test_count_instances2) (equal? 10 (count_instances '1 '(2 3 4 1))))

;true test
(define (test_count_instances_tr) (equal? 5 (count_instances_tr '1 '(1 1 1 1 4 2 1))))
;false test
(define (test_count_instances_tr2) (equal? 10 (count_instances_tr '1 '(1 1 1 2 3 2 4 2))))

;true test
(define (test_count_instances_deep) (equal? 3 (count_instances_deep '1 '(1 '(1 1 2)))))
;false test
(define (test_count_instances_deep2) (equal? 6 (count_instances_deep '1 '(1 1 '(1 2 3)))))

;End test functions

;Run the tests
(runTests)