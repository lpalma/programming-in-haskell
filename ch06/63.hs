{-
 - Define the exponentiation operator ^ for non-negative integers
 - using the same pattern of recursion as the multiplication
 - operator *, and show how the expression 2 ^ 3 is evaluated using
 - your definition.
 -}

pow :: Int -> Int -> Int
pow m 0 = 1
pow 0 n = 0
pow m n | n < 0 = undefined
        | otherwise = m * pow m (n - 1)
