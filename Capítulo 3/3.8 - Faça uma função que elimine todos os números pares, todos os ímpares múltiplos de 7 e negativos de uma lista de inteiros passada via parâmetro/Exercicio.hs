module Exercicio where

-- 3.8 - Faça uma função que elimine todos os números pares, todos os ímpares múltiplos de 7
-- e negativos de uma lista de inteiros passada via parâmetro. Você deve retornar esta lista 
-- em ordem reversa em comparação a do parâmetro.

exercicio:: [Int] -> [Int]
exercicio lista = reverse [ x | x <- lista, odd x, mod x 7 /= 0, x>0]