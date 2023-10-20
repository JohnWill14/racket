

(define (fib x)
    (
        cond
        [(<= x 1) 0]
        [(= x 2) 1]
        [else (+ (fib (- x 1)) ( fib (- x 2))  )]
    )
)

// (fib 7)

// (fib 8)