{-
 - Using merge, define a function msort :: Ord a => [a] -> [a]
 - that implements merge sort, in which the empty list and singleton
 - lists are already sorted, and any other list is sorted by merging
 - together the two lists that result from sorting the two halves of
 - the list separately.
 - Hint: first define a function halve :: [a] -> ([a],[a]) that splits
 - a list into two halves whose lengths differ by at most one.
 -}

halve :: [a] -> ([a],[a])
halve xs = (take h xs, drop h xs)
           where h = div (length xs) 2

rMerge :: Ord a => [a] -> [a] -> [a]
rMerge [] ys = ys
rMerge xs [] = xs
rMerge (x:xs) (y:ys) | x <= y = rMerge xs (x:y:ys)
                     | otherwise = y : (rMerge (x:xs) ys)

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = rMerge (msort ys) (msort zs)
           where (ys,zs) = halve xs
