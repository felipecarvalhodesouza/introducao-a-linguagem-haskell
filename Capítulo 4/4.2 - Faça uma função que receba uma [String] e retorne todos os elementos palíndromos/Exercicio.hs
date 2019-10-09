module Exercicio where

-- 4.2 - Faça uma função que receba uma [String] e retorne todos os elementos palíndromos.

exercicio:: [String] -> [String]
exercicio lista = filter (isPalindromo) lista

isPalindromo:: String -> Bool
isPalindromo x = x== reverse x