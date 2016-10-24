{-
 - Redefine the function positions using the function find.
 -}

findLC k t = [v | (k',v) <- t, k == k']

positions x xs = findLC x (zip xs [0..])
