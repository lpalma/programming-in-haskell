{-
 - Without looking at the definition from the standard prelude,
 - define the following library functions on lists using recursion.
 -
 - a. Decide if all logical values in a list are True:
 -   and :: [Bool] -> Bool
 - b. Concatenate a list of lists:
 -   concat :: [[a]] -> [a]
 - c. Produce a list with n identical elements:
 -   replicate :: Int -> a -> [a]
 - d. Selects the nth element of a list:
 -   (!!) :: [a] -> Int -> a
 - e. Decide if a value is an element of a list:
 -   elem :: Eq a => a -> [a] -> Bool
 -
 - Note: most of these functions are defined in the prelude using
 - other library functions rather than using explicit recursion,
 - and are generic functions rather than being specific to the type
 - of lists.
 -}

rAnd :: [Bool] -> Bool
rAnd [] = True
rAnd (x:xs) = x && rAnd xs

rConcat :: [[a]] -> [a]
rConcat [] = []
rConcat (xs:ys) = xs ++ rConcat ys

rReplicate :: Int -> a -> [a]
rReplicate 0 _ = []
rReplicate n x = x : rReplicate (n-1) x

rSelect :: [a] -> Int -> a
rSelect [] _ = undefined
rSelect (x:xs) 0 = x
rSelect (x:xs) n = rSelect xs (n-1)

rElem :: Eq a => a -> [a] -> Bool
rElem _ [] = False
rElem x (y:ys) | x == y = True
               | otherwise = rElem x ys
