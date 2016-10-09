{-
 - How should the definition of the function qsort be modified
 - so that it produces a sorted reverse version of a list?
 -}

 rQsort [] = []
 rQsort (x:xs) = rQsort larger ++ [x] ++ rQsort smaller
                 where 
                     larger = [b | b <- xs, b > x]
                     smaller = [a | a <- xs, a <= x]
