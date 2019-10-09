module Exercicio where

-- 4.7 - Crie um tipo Dia contendo os dias da semana. Faça uma função que receba uma lista de Dias e filtre as Terças .

data Dia = Domingo | Segunda | Terca | Quarta | Quinta | Sexta | Sabado deriving (Show,Eq)

filtro:: [Dia] -> [Dia]
filtro lista = filter (/= Terca) lista