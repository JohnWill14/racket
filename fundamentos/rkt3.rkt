#lang racket
(require rackunit rackunit/text-ui)


(define (separar lista v)
  (cond
    [(or (< v 0) (>= v (length lista))) lista]
    [else
     (let* ([esquerda ( list-tail (reverse lista) (- (length lista) v))]
            [direita (drop lista v)])
       (cons (reverse esquerda)  (list direita)))]))

(define tests-separar
  (test-suite "teste separar"
    (test-case "1" (check-equal? (separar '(1 2 3 4 5 6) 3) '((1 2 3) (4 5 6))))
    (test-case "2" (check-equal? (separar '(1 2 3 4 5 6) 2) '((1 2) (3 4 5 6))))
    (test-case "3" (check-equal? (separar '(1 2 3 4 5 6) 0) '(() (1 2 3 4 5 6))))
    (test-case "4" (check-equal? (separar '(1 2 3 4 5 6) 6) '(1 2 3 4 5 6)))
    (test-case "5" (check-equal? (separar '(1 2 3 4 5 6) 7) '(1 2 3 4 5 6)))
)
)

(run-tests tests-separar)