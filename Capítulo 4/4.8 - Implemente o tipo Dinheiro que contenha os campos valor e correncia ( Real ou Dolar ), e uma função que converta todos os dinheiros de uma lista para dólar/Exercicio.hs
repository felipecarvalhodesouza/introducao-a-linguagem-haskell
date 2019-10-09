module Exercicio where

-- 4.8 - Implemente o tipo Dinheiro que contenha os campos valor e correncia ( Real ou Dolar ),
-- e uma função que converta todos os dinheiros de uma lista para dólar (e outra para real).
data Dinheiro = Dinheiro {valor:: Double, correncia:: Correncia} deriving Show

data Correncia = Real | Dolar deriving Show

-- Com isso, implemente funções para:
-- Filtrar todos os Dolares de uma lista de Dinheiro . 
filtrarDolar:: [Dinheiro] -> [Dinheiro]
filtrarDolar lista = filter (\x -> verificarDolar x) lista

-- filtrarDolar [(Dinheiro 1 Real),(Dinheiro 10 Dolar),(Dinheiro 10 Real),(Dinheiro 15 Dolar),(Dinheiro 5 Real)]

verificarDolar:: Dinheiro -> Bool
verificarDolar (Dinheiro _ Dolar) = True
verificarDolar _ = False

--Somar todos os Dolares de uma lista.

somarDolar:: [Dinheiro] -> Double
somarDolar x = foldl (+) 0 $ map (abstrairNum) $ filtrarDolar x

abstrairNum:: Dinheiro -> Double
abstrairNum (Dinheiro x _) = x

-- Contar a quantidade de Dolares de uma lista

contarDolar:: [Dinheiro] -> Int
contarDolar lista = length $ filtrarDolar lista