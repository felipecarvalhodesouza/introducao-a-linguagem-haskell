module Exercicio where

-- 2.7 -Faça uma função que receba um inteiro e retorne uma tupla,contendo
--o dobro deste número na primeira coordenada, o triplo na segunda, o quádruplo
-- na terceira e o quíntuplo na quarta

exercicio:: Int -> (Int, Int, Int, Int)
exercicio x =  (2* x, 3 * x, 4 * x, 5 * x)