module Exercicio where

--2.2)Crie uma função que verifique	se o tamanho de uma String é par ou	não. Use Bool como retorno.

exercicio:: String -> Bool
exercicio x = mod (length x) 2 == 0