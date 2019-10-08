module Exercicio where

data Cripto = Mensagem {mensagem::String} | Cifrado {codigo::String} | Erro deriving Show

encriptar:: Cripto -> Cripto
encriptar (Mensagem x) = Cifrado [ succ x | x <- x]
encriptar _= Erro

decriptar:: Cripto -> Cripto
decriptar (Cifrado x) = Mensagem [ pred x | x <- x]
decriptar _= Erro

--3.18 - Faça uma função encriptarTodos que encripta (ou dá erro) todos os elementos de um vetor de Cripto

encriptarTodos:: [Cripto] -> [Cripto]
encriptarTodos x = [ encriptar x | x <- x]

-- encriptarTodos [(Mensagem "TESTE"), (Cifrado "AISUDI"), Erro]