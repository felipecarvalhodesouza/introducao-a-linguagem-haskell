module H where

--h) ['@','A','C','D','E','G','J','L']	

h:: [String]
h = [ [x] | x <- ['@'.. 'L'], x /= 'B', x /= 'F', x /= 'H', x /= 'I']