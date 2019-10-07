module F where

--f)[1,10,19,28,37,46,55,64]
f:: [Int]
f = [x + 1| x<- [0..64], mod x 9 == 0]