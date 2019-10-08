module Exercicio where

-- 3.14 - Faça o novo tipo Valido que possui dois value constructors Sim e Nao 
-- O value constructor Sim possui um parâmetro (campo) String . 

data Valido = Sim String | Nao deriving Show

--Implemente uma função isNomeValido que recebe um nome e retorna Nao caso a String seja vazia; caso contrário, Sim

isNomeValido:: String -> Valido
isNomeValido [] = Nao
isNomeValido x = Sim x