module Exercicio where

-- 3.16 - Faça o tipo Numero , que possui um value constructor Ok com um campo double e
-- outro value constructor Erro com um campo String . Faça a função dividir que divida dois números e, 
--caso o segundo número seja 0, emita um erro (use o pattern matching).

data Numero = Ok {numero:: Double} | Erro String deriving Show

dividir:: Numero -> Numero -> Numero
dividir _ (Ok 0) = Erro "Não é possível dividir por zero"
dividir x y = Ok (numero x / numero y)