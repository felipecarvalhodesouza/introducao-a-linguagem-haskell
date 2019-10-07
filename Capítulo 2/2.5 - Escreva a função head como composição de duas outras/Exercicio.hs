module Exercicio where

--2.5 - Escreva a função head como composição de duas outras

exercicio:: [a] -> a
exercicio x = last . reverse $ x