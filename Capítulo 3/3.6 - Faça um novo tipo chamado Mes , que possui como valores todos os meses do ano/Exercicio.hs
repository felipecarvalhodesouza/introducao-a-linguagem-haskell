module Exercicio where

--3.6) Faça um novo tipo chamado Mes , que possui como valores todos os meses do ano. 

data Mes = Janeiro|Fevereiro|Marco|Abril|Maio|Junho|Julho|Agosto|Setembro|Outubro|Novembro|Dezembro deriving (Show,Enum)

-- Implemente: 
-- A função checaFim , que retorna o número de dias que cada mês possui (considere fevereiro tendo 28 dias).

checaFim:: Mes -> Int
checaFim Fevereiro = 28
checaFim Abril = 30
checaFim Junho = 30
checaFim Setembro = 30
checaFim Novembro = 30
checaFim _ = 31

-- A função prox , que recebe um mês atual e retorna o próximo mês.

prox:: Mes -> Mes
prox Dezembro = Janeiro
prox x = succ x

 
-- A função estacao , que retorna a estação do ano de acordo com o mês e com o hemisfério.
-- Use apenas tipos criados pela palavra data aqui