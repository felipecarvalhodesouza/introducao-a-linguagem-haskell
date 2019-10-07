module Exercicio where

-- 2.6) Faça uma função que receba uma String e retorneTrue se esta for um palíndromo. Caso contrário, False

exercicio:: String -> Bool
exercicio x = reverse x == x