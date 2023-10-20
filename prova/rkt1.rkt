(define (conte-ocorrencia x list )
    (let ([cont 0])

    (for ([i list])
      (cond
       [(= i x) (set! cont (+ cont 1))])
    )
    (display cont)
    )

)

// (conte-ocorrencia 7 (list 1 1 2 3 3 333 44 5 6 7  7 7 8 7))