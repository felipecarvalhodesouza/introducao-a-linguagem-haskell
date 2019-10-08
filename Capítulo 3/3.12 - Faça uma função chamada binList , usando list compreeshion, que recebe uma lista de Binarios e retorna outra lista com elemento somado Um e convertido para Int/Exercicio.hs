module Exercicio where

data Binario = Um | Zero deriving Show
data Funcao = Soma2

aplicar :: Funcao -> Binario -> Binario -> Binario
aplicar Soma2 Um Um = Zero
aplicar Soma2 Zero Zero = Zero
aplicar Soma2 _ _ = Um

-- 3.12) Faça uma função chamada binList , usando list compreeshion,
-- que recebe uma lista de Binarios (ver exercício anterior) e retorna 
-- outra lista com elemento somado Um e convertido para Int 

binToInt:: Binario -> Int
binToInt Um = 1
binToInt Zero = 0

binList:: [Binario] -> [Int]
binList lista = [ binToInt (aplicar Soma2 x Um) | x <- lista]


