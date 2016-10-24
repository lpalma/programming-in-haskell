{-
 - using a list comprehension, give an expression that calculates
 - the sum 1^2 + ... 100^2 of the first one hundres integer squares.
 -}

squareSum = sum [x^2 | x <- [1..100]]
