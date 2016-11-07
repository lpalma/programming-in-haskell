{-
 - Without looking at the definitions from the standard prelude,
 - define the following higher-order library functions on lists.
 -
 - a. Decide if all elements of a list satisfy a predicate:
 -   all :: (a -> Bool) -> [a] -> Bool
 -
 - b. Decide if any element of a list satisfies a predicate:
 -   any :: (a -> Bool) -> [a] -> Bool
 - 
 - c. Select elements from a list while they satisfy a predicate:
 -   takeWhile :: (a -> Bool) -> [a] -> [a]
 -
 - d. Remove elements from a list while they satisfy a predicate:
 -   dropWhile :: (a -> Bool) -> [a] -> [a]
 -
 - Note: in the prelude the first two of these functions are generic
 - functions rather than being specific to the type of lists.
 -}

cAll :: (a -> Bool) -> [a] -> Bool
cAll p xs = and $ map p xs

cAny :: (a -> Bool) -> [a] -> Bool
cAny p xs = or $ map p xs

cTakeWhile :: (a -> Bool) -> [a] -> [a]
cTakeWhile _ [] = []
cTakeWhile p (x:xs) | p x = x : cTakeWhile p xs
                    | otherwise = []

cDropWhile :: (a -> Bool) -> [a] -> [a]
cDropWhile _ [] = []
cDropWhile p (x:xs) | p x = dropWhile p xs
                    | otherwise = x:xs
