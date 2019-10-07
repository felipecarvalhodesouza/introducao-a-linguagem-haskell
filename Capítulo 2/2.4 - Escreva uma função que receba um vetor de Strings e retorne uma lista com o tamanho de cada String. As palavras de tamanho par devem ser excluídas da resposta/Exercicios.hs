module Exercicio where

-- 2.4) Escreva uma função que receba um vetor de Strings e retorne uma lista com o tamanho de 
-- cada String. As palavras de tamanho par devem ser excluídas da resposta.

exercicio:: [String] -> [Int]
exercicio string = [ length x | x <- string, odd (length x)]