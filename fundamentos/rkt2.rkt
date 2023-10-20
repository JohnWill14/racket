#lang racket
(require rackunit rackunit/text-ui)


(define (isPalindrome? x)
   (equal? x (reverse x))
    )

(define tests-fib
    (test-suite "teste fib"
        (test-case "1" (check-equal? (isPalindrome? '(1 2 3)) #f))
        (test-case "2" (check-equal? (isPalindrome? '(1 2 3 3 2 1)) #t))
        (test-case "3" (check-equal? (isPalindrome? '(1 2 3 2 1)) #t))
        (test-case "4" (check-equal? (isPalindrome? '(1 2 2 1)) #t))
        (test-case "5" (check-equal? (isPalindrome? '(1 2 2 2)) #f))
        (test-case "6" (check-equal? (isPalindrome? '(5 2 2 5)) #t))
        (test-case "7" (check-equal? (isPalindrome? '(1 2 3 2 1)) #t))
        (test-case "8" (check-equal? (isPalindrome? '(1 2 3 2 2)) #f))
    
    )
 )

 (run-tests tests-fib 'verbose)