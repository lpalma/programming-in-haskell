{-
 - The library function init removes the last element from a non-empty list;
 - for example, init [1,2,3,4,5] = [1,2,3,4]. Show how init could similarly
 - be defined in two different ways.
 -}

init1 (x:xs) =  take (length xs) ([x] ++ xs)

init2 (x:[]) = []
init2 (x:xs) = x : init2 xs
