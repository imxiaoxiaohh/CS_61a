(define (ascending? s) 
    ; (cond ((null? s) #t)
    ;     ((null? (car s)) #t)
    ;     ((<= (car s) (car(cdr s))) 
    ;      (ascending? (cdr s)))
    ;     (else #f)
    ;     )
    (or (null? s)                        ; If the list is empty, return true
      (null? (cdr s))                  ; If there's only one element, return true
      (and (<= (car s) (car (cdr s))       ; Check if the first element is less than or equal to the second
           (ascending? (cdr s))))     ; Recurse on the rest of the list
)

(define (my-filter pred s) 
    (cond ((null? s) nil)
        ((= #t (pred (car s))) (cons (car s) (my-filter pred (cdr s))))
        ((= #t (pred (car s))) (my-filter pred (cdr sS)))
        )
)

(define (interleave lst1 lst2) 
    (cond
        ; ((and (null? lst1) (null? lst2)) nil)
        ; ((and (#f (null? lst1)) (#t (null? lst2))) lst1 )
        ; ((and (#t (null? lst1)) (#f (null? lst2))) lst2 )
        ((null? lst1) lst2)
        ((null? lst2) lst1)
        (else (cons((car lst1) cons((car lst2) (interleave (cdr lst1) (cdr lst2))))))
        )

    ))

(define (no-repeats s) 
    (cond
        ((null? s) null)
        ((null? (cdr s)) s)
        (else (cons (car s) (no-repeats (filter (lambda (x) (not (= (car s) x)))(cdr s))))))
        )
)
