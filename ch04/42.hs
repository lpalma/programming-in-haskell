{-
 - Define a function third :: [a] -> a that returns the third
 - element in a list that contains at least that many elements using:
 -
 - a. head and tail;
 - b. list indexing !!;
 - c. pattern matching.
 -}

thirdHT xs = head $ tail $ tail xs

thirdLI xs = xs !! 2

thirdPM (a:b:c:ds) = c
