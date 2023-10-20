#lang racket
(require rackunit rackunit/text-ui)

(define (isPrime? x)
  (cond
  [(<= x 1) #f]
  [(= x 2) #t]
  [else 
    (let loop ((i 2))
      (cond
      [(> (* i i) x) #t]
      [(zero? (remainder x i)) #f]
      [else (loop(+ i 1))]
      )
    )
  ])
)


(define tests-prime
  (test-suite "teste isPrime"
    (test-case "1" (check-equal? (isPrime? 1 ) #f))
    (test-case "2" (check-equal? (isPrime? 2) #t))
    (test-case "3" (check-equal? (isPrime? 3) #t))
    (test-case "4" (check-equal? (isPrime? 4) #f))
    (test-case "5" (check-equal? (isPrime? 5) #t))
    (test-case "6" (check-equal? (isPrime? 11) #t))
    (test-case "7" (check-equal? (isPrime? 17) #t))
    (test-case "8" (check-equal? (isPrime? 20) #f))
    (test-case "9" (check-equal? (isPrime? 34) #f))
)
)


(run-tests tests-prime)