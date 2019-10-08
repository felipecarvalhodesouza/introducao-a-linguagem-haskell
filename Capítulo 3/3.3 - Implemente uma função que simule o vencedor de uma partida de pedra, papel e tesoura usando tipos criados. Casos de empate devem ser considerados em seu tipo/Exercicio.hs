module Exercicio where

data Tipo = Pedra | Papel | Tesoura deriving Show

jokenpo :: (Tipo, Tipo) -> Either String Tipo
jokenpo (Pedra, Pedra) = Left "Empate"
jokenpo (Pedra, Papel) = Right Papel 
jokenpo (Pedra, Tesoura) = Right Pedra
jokenpo (Papel, Tesoura) = Right Tesoura
jokenpo (Papel, Pedra) = Right Papel
jokenpo (Papel, Papel) = Left "Empate"
jokenpo (Tesoura, Papel) = Right Tesoura
jokenpo (Tesoura, Pedra) = Right Pedra
jokenpo (Tesoura, Tesoura) = Left "Empate"