{-
 - What would be the effect of replacing <= by < in the original
 - definition of qsort? Hint: consider the example qsort [2,2,3,1,1].
 -}

buggyQsort [] = []
buggyQsort (x:xs) = buggyQsort smaller ++ [x] ++ buggyQsort larger
                     where
                         smaller = [a | a <- xs, a < x]
                         larger = [b | b <- xs, b > x]

main = do
    putStrLn "using buggyQsort in a list with"
    putStrLn "duplicate values, such as [2,2,3,1,1]"
    putStrLn "will remove the duplicate values from"
    putStrLn "the result sorted list, such as [1,2,3]."
