{-
 - redefine adder using the function sequence :: [IO a] -> IO [a]
 - that performs a list of actions and returns a list of resulting
 - values.
 -}

import Data.Char

adder :: IO ()
adder = do putStr "How many numbers? "
           x <- getLine
           y <- sequence [ readLine | b <- [1..read x :: Int] ]
           putStrLn $ "The total is " ++ show ( sum y)
