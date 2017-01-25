{-
 - Using recursion, define a version of putBoard :: Board -> IO ()
 - that displays nim boards of any size, rather than being specific
 - to boards with just five rows of stars.
 - Hint: first define an auxiliary function that takes the current
 - row number as an additional argument.
 -}

type Board = [Int]

putBoard :: Board -> IO ()
putBoard xs = do putRows xs 1

putRows :: Board -> Int -> IO ()
putRows [] _ = return ()
putRows (x:xs) num = do putRow num x
                        putRows xs (num + 1)

putRow :: Int -> Int -> IO ()
putRow row num = do putStr (show row)
                    putStr ": "
                    putStrLn (concat (replicate num "* "))
