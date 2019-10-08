module Exercicio where

-- 3.1) Crie o tipo Pergunta com os values constructors Sim ou Nao . 
-- Faça as funções seguintes, determinando seus tipos explicitamente.

data Pergunta = Sim | Nao deriving (Show)

--pergNum : recebe via parâmetro uma Pergunta . Retorna 0 para Nao e 1 para Sim .

pergNum:: Pergunta -> Int
pergNum Sim = 1
pergNum Nao = 0

--listPergs : recebe via parâmetro uma lista de Perguntas , e retorna 0 s e 1 s correspondentes aos constructores contidos na lista.

listPergs:: [Pergunta] -> [Int]
listPergs xs = [pergNum x | x <- xs]

-- and' : recebe duas Perguntas como parâmetro e retorna a tabela verdade do and lógico usando Sim como verdadeiro e Nao como falso. 

and':: Pergunta -> Pergunta -> Bool
and' Sim Sim = True
and' _ _ = False

-- or' : idem ao anterior, porém deve ser usado o ou lógico. 

or':: Pergunta -> Pergunta -> Bool
or' Sim _ = True
or' _ Sim = True
or' Nao Nao = False

-- not' : idem aos anteriores, porém usando o not lógico.

not':: Pergunta -> Bool
not' Sim = False
not' Nao = True
