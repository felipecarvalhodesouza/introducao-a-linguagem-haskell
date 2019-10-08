module Exercicio where

retirarVogaisDeUmaString :: String -> String
retirarVogaisDeUmaString x = [x | x <- x,
                              x /= 'a', x /= 'e', x /= 'i', x /= 'o', x /= 'u',
                              x /= 'A', x /= 'E', x /= 'I', x /= 'O', x /= 'U' ]


retirarVogaisDeUmaString2 :: String -> String
retirarVogaisDeUmaString2 x = [x | x <- x, not (elem x "aeiouAEIOU")]