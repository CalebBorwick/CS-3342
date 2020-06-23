#lang racket
(define (quicksort lst)
  (cond
    ((or (null? lst) 
         (null? (cdr lst))) 
     lst)
    (else
      (let ((pivot (car lst)) 
            (rest (cdr lst)))
        (append
          (quicksort 
            (filter (lambda (x) (< x pivot)) rest)) 
          (list pivot) 
          (quicksort 
            (filter (lambda (x) (>= x pivot)) rest))))))) 


