module Exercicio where

-- 4.3 - Implemente uma função que filtre os números pares e outra que filtre os ímpares de uma lista recebida via parâmetro.

par:: [Int] -> [Int]
par lista = filter (\x -> even x) lista

impar:: [Int] -> [Int]
impar lista = filter (\x -> odd x) lista