module Exercicio where

--4.1 - Faça uma função que retorne a média de um [Double] , usando foldl

exercicio:: [Double] -> Double
exercicio list = (foldl (+) 0 list) / fromIntegral (length list)