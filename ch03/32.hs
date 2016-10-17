{-
 - Write down definitions that have the following types;
 - it does not matter what the definitions actually do
 - as long as they are type correct.
 -
 - bools :: [Bool]
 - nums :: [[Int]]
 - add :: Int -> Int -> Int -> Int
 - copy :: a -> (a,a)
 - apply :: (a -> b) -> a -> b
 -}

bools = [False, True]

nums = [[1 :: Int, 2 :: Int]]

add x y z = (x :: Int) + (y :: Int) + (z :: Int)

copy a = (a, a)

apply a b = a(b) 
