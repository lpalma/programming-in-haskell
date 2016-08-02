{-
 - Show how the library function init that removes the last element from a
 - non-empty list could similarly be defined in two different ways.
 -}

d1 = take ((length xs) - 1) xs
  where
    xs = [1, 2, 3, 4, 5]

d2 = reverse $ tail $ reverse xs
  where
    xs = [1, 2, 3, 4, 5]
