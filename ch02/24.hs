{-
 - Show how the library function last that selects the last element of a non-
 - empty list could be defined in terms of the library functions introduced in
 - this chapter. Can you think of another possible definition?
 -}

d1 = drop ((length xs) - 1) xs
  where
    xs = [1, 2, 3, 4, 5]

d2 = take 1 (reverse xs)
  where
    xs = [1, 2, 3, 4, 5]

d3 xs = case xs of
  (x:[]) -> [x]
  (x:_) -> d3 (tail xs)
