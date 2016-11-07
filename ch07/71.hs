{-
 - Show how the list comprehension [f x | x <- xs, p x] can be
 - re-expressed using the higher-order functions map and filter.
 -}

mapFilter :: (a -> b) -> (a -> Bool) -> [a] -> [b]
mapFilter f p xs = map f $ filter p xs
