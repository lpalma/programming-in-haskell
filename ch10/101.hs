{-
 - Redefine putStr :: String -> IO () using a list comprehension
 - and the library function sequence_ :: [IO a] -> IO ().
 -}

cPutStr :: String -> IO ()
cPutStr xs = do sequence_ [putChar x | x <- xs]
