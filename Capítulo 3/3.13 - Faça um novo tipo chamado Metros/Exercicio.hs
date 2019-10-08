module Exercicio where

-- 3.13) Faça um novo tipo chamado Metros, que possui um  \textit{value constructor} de mesmo nome, 
-- cujos parâmetros são: um Int que representa a dimensão, e um Double que representa o valor da medida
-- e outro chamado MetragemInvalida .

data Metros = Metros Int Double | MetragemInvalida deriving Show

-- Implemente as funções: 


--areaQuadrado :: Metros -> Metros : calcula a área de um quadrado. 

areaQuadrado:: Metros -> Metros
areaQuadrado Metros 4 _ = MetragemInvalida
areaQuadrado Metros	_ x = Metros 2 (x^2)

--areaRet :: Metros -> Metros -> Metros : calcula a área de um retângulo. 

areaRet :: Metros -> Metros -> Metros
areaRet (Metros _ x) (Metros _ y) = Metros 2 (x*y)

--areaCubo :: Metros -> Metros : calcula a área de um cubo.

areaCubo :: Metros -> Metros
areaCubo (Metros _ x) = Metros 3 (6 * (x*x)) 
    