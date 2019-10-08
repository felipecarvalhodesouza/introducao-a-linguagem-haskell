module Exercicio where

data Cambio = Euro | Real | Dollar deriving Show
data Moeda = Moeda {val :: Double, cur :: Cambio} deriving Show

converteMoedas :: Moeda -> Moeda
converteMoedas (Moeda x Dollar)  = Moeda (x * 4.16) Real
converteMoedas (Moeda x Euro) = Moeda (x * 4.58) Real
converteMoedas x = x

-- 3.20 - Crie a função converterTodosReal que recebe uma lista de moedas e retorna outra 
-- lista de moedas com todos os seus elementos convertidos para Real . Use list compreenshion.

converterTodosReal:: [Moeda] -> [Moeda]
converterTodosReal x = [converteMoedas x | x <- x]

-- converterTodosReal [(Moeda 15 Dollar), (Moeda 10 Euro),(Moeda 5 Real),(Moeda 15 Euro),(Moeda 10 Dollar)]