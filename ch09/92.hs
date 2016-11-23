{-
 - Define a recursive function isChoice :: Eq a => [a] -> [a] -> Bool
 - that decides if one list is chosen from another, without using the
 - combinatorial functions perms and subs.
 - Hint: start by defining a funtion that removes the first occurence
 - of a value from a list.
 -}

removeFirst :: Eq a => a -> [a] -> [a]
removeFirst _ [] = []
removeFirst n (x:xs) | n == x = xs
                     | otherwise = x : removeFirst n xs

isChoice :: Eq a => [a] -> [a] -> Bool
isChoice [] _ = True
isChoice (x:xs) [] = False
isChoice (x:xs) ys = elem x ys && isChoice xs (removeFirst x ys)
