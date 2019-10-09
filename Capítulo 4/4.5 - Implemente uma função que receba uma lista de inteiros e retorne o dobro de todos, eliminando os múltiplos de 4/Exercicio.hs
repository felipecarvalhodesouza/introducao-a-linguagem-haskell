module Exercicio where

-- 4.5 - Implemente uma função que receba uma lista de inteiros e retorne o dobro de todos, eliminando os múltiplos de 4.

filtro:: [Int] -> [Int]
filtro lista = map (*2) $ filter (\x -> mod x 4 /= 0) lista