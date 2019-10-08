module Exercicio where

-- 3.11) Crie o tipo de dado Binario que pode ser Zero ou Um .
-- Faça outro tipo de dado chamado Funcao que pode ser Soma2 , Maior , Menor ou Mult2 .

data Binario = Um | Zero deriving Show
data Funcao = Soma2 | Maior | Menor | Mult2

-- Implemente a função aplicar que recebe uma Funcao e dois Binarios .
-- Seu retorno consiste em executar a operação desejada. Exemplo:
--aplicar Soma2 Um Um = Zero

aplicar:: Funcao -> Binario -> Binario -> Binario
aplicar Soma2 Um Um = Zero
aplicar Soma2 Zero Zero = Zero
aplicar Soma2 _ _ = Um
     
aplicar Maior Zero Zero = Zero
aplicar Maior _ _ = Um

aplicar Menor Um Um = Um
aplicar Menor _ _ = Zero

aplicar Mult2 Um Um = Um
aplicar Mult2 _ _ = Zero