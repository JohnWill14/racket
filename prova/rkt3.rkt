
(define (seq n)
  (let ([lista '()])

    (for ([i (in-range 1 (add1 n))])

    (set! lista (list*  (- i) i   lista  ))

    
    )
    (reverse lista)
  )
)

//(seq 10)