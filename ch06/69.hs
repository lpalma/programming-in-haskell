{-
 - Using the five-step process, construct the library functions that:
 - a. calculate the sum of a list of numbers;
 - b. take a given number of elements from the start of a list;
 - c. select the last element of a non-empty list.
 -}

rSum :: Num a => [a] -> a
rSum = foldr (+) 0

rTake :: Int -> [a] -> [a]
rTake _ [] = []
rTake n (x:xs) | n > 0 = x : rTake (n - 1) xs
               | otherwise = []

rLast :: [a] -> a
rLast [] = undefined
rLast [x] = x
rLast (x:xs) = rLast xs
