{-
 - Show that sum [x] = x for any number x.
 -}

 main = do
     putStrLn "sum [] = 0"
     putStrLn "sum (x:xs) = x + sum xs"
     putStrLn "{given sum [x], applying the second definition}"
     putStrLn "sum (x:[]) = x + sum []"
     putStrLn "{applying the first defintion}"
     putStrLn "sum (x:[]) = x + 0"
     putStrLn "{simplifying the right side}"
     putStrLn "sum (x:[]) = x"
     putStrLn "{simplifying the left side}"
     putStrLn "sum [x] = x"
