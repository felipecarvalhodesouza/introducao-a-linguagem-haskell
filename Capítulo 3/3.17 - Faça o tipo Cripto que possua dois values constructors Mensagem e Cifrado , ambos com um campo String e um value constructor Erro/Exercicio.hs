module Exercicio where

-- 3.17) Faça o tipo Cripto que possua dois values constructors Mensagem e Cifrado , 
-- ambos com um campo String e um value constructor Erro . 

data Cripto = Mensagem {mensagem::String} | Cifrado {codigo::String} | Erro deriving Show

-- Faça as funções encriptar e decriptar , seguindo cada exemplo a seguir.
encriptar:: Cripto -> Cripto
encriptar (Mensagem x) = Cifrado [ succ x | x <- x]
encriptar _= Erro

decriptar:: Cripto -> Cripto
decriptar (Cifrado x) = Mensagem [ pred x | x <- x]
decriptar _= Erro