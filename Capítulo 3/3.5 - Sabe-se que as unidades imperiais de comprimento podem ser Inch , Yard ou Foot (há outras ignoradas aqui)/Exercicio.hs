module Exercicio where

-- 3.5 - Sabe-se que as unidades imperiais de comprimento podem ser Inch ,
-- Yard ou Foot (há outras ignoradas aqui). Sabe-se que 1in=0.0254m , 1yd=0.9144m ,
-- 1ft=0.3048 . Faça a função converterMetros que recebe a unidade imperial e o valor 
-- correspondente nesta unidade. Esta função deve retornar o valor em metros.

data Imperial = Inch | Yard | Foot deriving Show

converterMetros:: Imperial -> Double -> Double
converterMetros Inch x = x*0.0254
converterMetros Yard x = x* 0.9144
converterMetros Foot x = x* 0.3048

-- Implemente também a função converterImperial , que recebe um valor em metros e a unidade de conversão.
-- Esta função deve retornar o valor convertido para a unidade desejada.

converterImperial:: Double -> Imperial -> Double
converterImperial x Inch = x/0.0254
converterImperial x Yard = x/0.9144
converterImperial x Foot = x/0.3048