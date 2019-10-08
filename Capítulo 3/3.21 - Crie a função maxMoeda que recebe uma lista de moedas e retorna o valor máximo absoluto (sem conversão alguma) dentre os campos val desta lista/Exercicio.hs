module Exercicio where

data Cambio = Euro | Real | Dollar deriving Show
data Moeda = Moeda {val :: Double, cur :: Cambio} deriving Show

-- 3.21 - Crie a função maxMoeda que recebe uma lista de moedas e retorna o valor máximo absoluto
-- (sem conversão alguma) dentre os campos val desta lista.

maxMoeda:: [Moeda] -> Double
maxMoeda list = maximum [val x | x <- list]

-- maxMoeda [(Moeda 15 Dollar), (Moeda 10 Euro),(Moeda 5 Real),(Moeda 15 Euro),(Moeda 10 Dollar)]