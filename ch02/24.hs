{-
 - The library function last selects the last element of a non-empty list;
 - for example, last [1,2,3,4,5] = 5. Show how the function last could be
 - defined in terms of the other library functions introduced in this chapter.
 - Can you think of another possible definition?
 -}

last1 (x:xs) = head (reverse xs)

last2 (x:xs) = xs !! ((length xs) - 1)

last3 (x:[]) = x
last3 (x:xs) = last3 xs
