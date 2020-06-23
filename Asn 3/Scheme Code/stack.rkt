#lang racket
(define make-stack
  (lambda ()
    (let ((stk '()))
      (lambda (msg . args)
        (cond
          [(eq? msg 'empty?)(null? stk)]
          [(eq? msg 'push!)(set! stk (cons (car args) stk))]
          [(eq? msg 'top)(if (null? stk)(display "empty stack: cannot get the top.")(car stk))]
          [(eq? msg 'pop!)(if (null? stk)(display "empty stack: cannot pop")(let ((result (car stk)))(set! stk (cdr stk))))]
          [(eq? msg 'top-nth) (if (>= (-(car args)1) (length stk))(display "not enough elements") (list-ref stk (-(car args)1)))]
          [else "unknown operation"])))))

         

        

         










