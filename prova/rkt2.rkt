(define (unica-ocorrencia x list )
    (let ([cont 0])

    (for ([i list])
      (cond
       [(= i x) (set! cont (+ cont 1))])
    )
    
    (
        cond
        [(= cont 0) #f]
        [(= cont 1) #t]
        [else #f]
    )

    )

)

// (unica-ocorrencia 5 (list 1 2 3 4 5 5))
// (unica-ocorrencia 6 (list 1 2 3 4 5 5 6))