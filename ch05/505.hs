{-
 - A triple (x,y,z) of positive integers is Pythagorean if it
 - satisfies the equation x^2 + y^2 = z^2. Using list comprehension
 - with three generators, define a function
 -   pyths :: Int -> [(Int,Int,Int)]
 - that returns the list of all such triples whose components are
 - at most a given limit. For example:
 - > pyths 10
 - [(3,4,5),(4,3,5),(6,8,10),(8,6,10)]
 -}

pyths x = [(a,b,c) | a <- [1..x], b <- [1..x], c <- [1..x], a^2 + b^2 == c^2]
