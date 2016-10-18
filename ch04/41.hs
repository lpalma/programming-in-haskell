{-
 - Using library functions, define a function halve :: [a] -> ([a], [a])
 - that splits an even-lengthed list into two halves. For exampleL
 - > halve [1,2,3,4,5,6]
 - ([1,2,3],[4,5,6])
 -}

halve xs = ([take (length xs `div` 2) xs], [drop (length xs `div` 2) xs])
