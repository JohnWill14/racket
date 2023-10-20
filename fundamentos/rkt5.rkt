#lang racket
(require rackunit rackunit/text-ui)

(define (inserir elemento lista posicao)
  
  (cond 
    [(<= (- posicao 1) 0) (cons elemento lista)]
    [(null? lista) (list elemento)]
    [else (cons (car lista) (inserir elemento (cdr lista) (- posicao 1)))]
  )
)


(define tests-inserir
  (test-suite "teste inserir"
    (test-case "1" (check-equal?  (inserir 10 '(1 2 3 4) 2)  '(1 10 2 3 4)))
    (test-case "2" (check-equal? (inserir 11 '(1 2 3 4) 3) '(1 2 11 3 4)))
    (test-case "3" (check-equal? (inserir 5 '() 1) '(5))) ; Inserir em uma lista vazia
    (test-case "4" (check-equal? (inserir 9 '(1 2 3 4) 1) '(9 1 2 3 4))) ; Inserir no início da lista
    (test-case "5" (check-equal? (inserir 7 '(1 2 3 4) 5) '(1 2 3 4 7))) ; Inserir no final da lista
    (test-case "6" (check-equal? (inserir 6 '(1 2 3 4) 0) '(6 1 2 3 4))) ; Inserir na posição 0
    (test-case "7" (check-equal? (inserir 8 '(1 2 3 4) 10) '(1 2 3 4 8))) ; Inserir em uma posição maior do que o tamanho da lista
    (test-case "8" (check-equal? (inserir 100 '(10 20 30 40) 2) '(10 100 20 30 40))) ; Inserir em uma posição no meio da lista
)
)



(run-tests tests-inserir)