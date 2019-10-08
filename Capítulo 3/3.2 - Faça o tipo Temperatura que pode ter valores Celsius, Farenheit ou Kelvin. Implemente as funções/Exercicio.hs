module Exercicio where

-- 3.2) Faça o tipo Temperatura que pode ter valores Celsius, Farenheit ou Kelvin. Implemente as funções:
-- a) converterCelsius : recebe um valor double e uma temperatura, e faz a conversão para Celsius.
-- b) converterKelvin : recebe um valor double e uma temperatura, e faz a conversão para Kelvin
-- c) converterFarenheit : recebe um valor double e uma temperatura, e faz a conversão para Farenheit

data Temperatura = Celsius | Kelvin | Farenheit deriving Show

--- Recebendo uma Tupla como argumento ---
converterCelsius :: (Temperatura, Double) -> (Temperatura, Double)
converterCelsius (Farenheit, x) = (Celsius, (x-32) * 5/9)
converterCelsius (Kelvin, x) = (Celsius, x-273.1)
converterCelsius x = x

converterKelvin :: (Temperatura, Double) -> (Temperatura, Double)
converterKelvin (Celsius, x) = (Kelvin, x + 273.1)
converterKelvin (Farenheit, x) = (converterKelvin(converterCelsius(Farenheit, x)))
converterKelvin x = x

converterFarenheit :: (Temperatura, Double) -> (Temperatura, Double)
converterFarenheit (Celsius, x) = (Farenheit, (x * 9/5) + 32)
converterFarenheit (Kelvin, x) = (converterFarenheit(converterCelsius(Kelvin, x)))
converterFarenheit x = x

--- Recebendo dois parâmetros ---
converterCelsius2 :: Temperatura -> Double -> (Temperatura, Double)
converterCelsius2 Farenheit x = (Celsius, (x-32) * 5/9)
converterCelsius2 Kelvin x = (Celsius, x-273.1)
converterCelsius2 Celsius x = (Celsius, x)

converterKelvin2 :: Temperatura -> Double -> (Temperatura, Double)
converterKelvin2 Celsius   x = (Kelvin, x + 273.1)
converterKelvin2 Farenheit x = (converterKelvin(converterCelsius2 Farenheit x))
converterKelvin2 Kelvin    x = (Kelvin, x)

converterFarenheit2 :: Temperatura -> Double -> (Temperatura, Double)
converterFarenheit2 Celsius   x = (Farenheit, (x * 9/5) + 32)
converterFarenheit2 Kelvin    x = (converterFarenheit(converterCelsius2 Kelvin x))
converterFarenheit2 Farenheit x = (Farenheit, x)

data Temperatura2 = Temperatura2 {
                    temperaturaEscala:: Temperatura,
                    temperaturaValor:: Double} deriving Show

converterCelsius3 :: Temperatura2 -> Temperatura2
converterCelsius3 (Temperatura2 Farenheit x) = (Temperatura2 Celsius ((x-32) * 5/9))
converterCelsius3 (Temperatura2 Kelvin x) = (Temperatura2 Celsius (x-273.1))
converterCelsius3 x = x

converterKelvin3 :: Temperatura2 -> Temperatura2
converterKelvin3 (Temperatura2 Celsius x) = (Temperatura2 Kelvin (x + 273.1))
converterKelvin3 (Temperatura2 Farenheit x) = (converterKelvin3(converterCelsius3(Temperatura2 Farenheit x)))
converterKelvin3 x = x

converterFarenheit3 :: Temperatura2 -> Temperatura2
converterFarenheit3 (Temperatura2 Celsius x) = (Temperatura2 Farenheit ((x * 9/5) + 32))
converterFarenheit3 (Temperatura2 Kelvin x) = (converterFarenheit3(converterCelsius3(Temperatura2 Kelvin x)))
converterFarenheit3 x = x
