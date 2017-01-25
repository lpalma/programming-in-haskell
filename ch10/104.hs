{-
 - Define an action adder :: IO () that reads a given number
 - of integers from the keyboard, one per line, and displays
 - their sum. For example:
 -
 - > adder
 - How many numbers? 5
 - 1
 - 3
 - 5
 - 7
 - 9
 - The total is 25
 -
 - Hint: start by defining an auxiliary function that takes the current
 - total and how many numbers remain to be read as arguments. You will also
 - likely need to use the library fuctions read and show.
 -}

import Data.Char

adder :: IO ()
adder = do putStr "How many numbers? "
           x <- getLine
           y <- increment (read x :: Int) 0
           putStrLn $ "The total is " ++ show y

increment :: Int -> Int -> IO Int
increment x y = if x < 1 then
                  return y
                else
                  do a <- getLine
                     b <- increment (x - 1) (y + (read a))
                     return b
