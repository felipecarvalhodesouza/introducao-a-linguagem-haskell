module Exercicio where

--2.3) Escreva uma função que receba um vetor de Strings e retorne uma lista com todos os elementos em ordem reversa

-- Para inverter a ordem das Strings dentro do conjunto
exercicio:: [String] -> [String]
exercicio x = reverse x

-- Para inverter a ordem das letras das strings e não do conjunto
exercicio2:: [String] -> [String]
exercicio2 strls = [ reverse x | x <- strls]

-- Para fazer ambos
exercicio3:: [String] -> [String]
exercicio3 strls = reverse [ reverse x | x <- strls]