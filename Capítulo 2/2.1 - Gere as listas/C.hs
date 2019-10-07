module C where

--c)["AaBB","AbBB","AcBB","AdBB","AeBB","AfBB","AgBB"]

c:: [String]
c = [ "A" ++ x : "BB" | x <- ['a'..'g'] ]