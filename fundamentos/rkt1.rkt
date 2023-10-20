#lang racket
(require rackunit rackunit/text-ui)

(define (fib x)
    (cond
      [(<= x 0) 0]
      [(= x 1) 1]
      [(= x 2) 1]
      [else (+ (fib (- x 1)) (fib (- x 2)))]
    ))

(define tests-fib
    (test-suite "teste fib"
        (test-case "1" (check-equal? (fib 3) 2))
        (test-case "2" (check-equal? (fib 5) 5))
        (test-case "3" (check-equal? (fib 2) 1))
        (test-case "4" (check-equal? (fib 1) 1))
        (test-case "5" (check-equal? (fib 0) 0))
        (test-case "6" (check-equal? (fib 4) 3))
        (test-case "7" (check-equal? (fib 6) 8))
        (test-case "8" (check-equal? (fib 7) 13))
        (test-case "9" (check-equal? (fib 8) 21))
    
    )
 )

 (run-tests tests-fib 'verbose)