module Exercicio where

-- 3.10 - Faça uma função chamada revNum , que receba uma String s e um Int n .
-- Esta deverá retornar as n primeiras letras em ordem reversa e o restante em sua ordem normal.

revNum:: String -> Int -> String
revNum x y = reverse (take y x) ++ drop y x