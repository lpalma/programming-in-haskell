{-
 - Give another possible calculation for the result of double (double 2)
 -}

main = do
       putStrLn "double (double 2)"
       putStrLn "{applying the inner double}"
       putStrLn "double 2 + double 2"
       putStrLn "{applying the first double}"
       putStrLn "(2 + 2) + double 2"
       putStrLn "{applying the second double}"
       putStrLn "(2 + 2) + (2 + 2)"
       putStrLn "{applying the first +}"
       putStrLn "4 + (2 + 2)"
       putStrLn "{applying the second +}"
       putStrLn "4 + 4"
       putStrLn "{applying +}"
       putStrLn "8"
