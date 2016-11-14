{-
 - Define a function balance :: [a] -> Tree a that converts
 - a non-empty list into a balanced tree.
 - Hint: first define a function that splits a list into two
 - halves whose length differs by at most one.
 -}

data Tree a = Leaf a | Node (Tree a) (Tree a) deriving Show

halve :: [a] -> ([a], [a])
halve xs = splitAt (length xs `div` 2) xs

balance :: [a] -> Tree a
balance [x] = Leaf x
balance xs = Node (balance ys) (balance zs)
             where (ys, zs) = halve xs

