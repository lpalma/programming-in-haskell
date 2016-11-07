{-
 - Redefine the functions map f and filter p using foldr.
 -}

fMap :: (a -> b) -> [a] -> [b]
fMap f = foldr (\x xs -> f x : xs) [] 

fFilter :: (a -> Bool) -> [a] -> [a]
fFilter p = foldr (\x xs -> if p x then x:xs else xs) []
