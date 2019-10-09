module Exercicio where

-- 4.4 - Filtre os números primos de uma lista recebida por parâmetro.

filtro:: [Int] -> [Int]
filtro lista = filter (is_prime) lista

is_prime :: Int -> Bool
is_prime 0 = False
is_prime 1 = False
is_prime 2 = True
is_prime n = length [x | x <- [1 .. n], mod n x == 0] == 2