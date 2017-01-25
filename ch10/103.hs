{-
 - In a similar manner to the first exercise, redefine
 - the generalised version of putBoard using a list
 - comprehension and sequence_.
 -}

type Board = [Int]

putBoard :: Board -> IO ()
putBoard xs = do sequence_ [putRow row num | (num, row) <- zip xs [1..]]

putRow :: Int -> Int -> IO ()
putRow row num = do putStr (show row)
                    putStr ": "
                    putStrLn (concat (replicate num "* "))
