module A where

-- a)[1,11,121,1331,14641,161051,1771561]

a:: [Int]
a = [ x^n| x<- [11], n<- [0..6]]